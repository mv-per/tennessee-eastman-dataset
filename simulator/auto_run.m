% Configuration
mode = 'mode1';
modelName = ['MultiLoop_' mode];

% Load the model once before loop
load_system(modelName);

for faultNum = 10:21
    dist = zeros(1,28);
    dist(faultNum) = 1;
    for batchNum = 6:10
        fault = num2str(faultNum);
        batch = num2str(batchNum);

        % Run the simulation
        simOut = sim(modelName);

        % Close all figures (e.g., from scopes)
        close all;

        % Extract outputs
        % tout = simOut.tout;
        % simout = simOut.get('simout');  % Adjust if output is named differently

        % Combine data
        dataToSave = [tout, simout];

        % Create headers
        [~, numCols] = size(simout);
        headers = ['Time (h)', arrayfun(@(i) sprintf('xmv-%d', i), 1:numCols, 'UniformOutput', false)];
        headersCell = headers(:)';

        % Write to Excel
        filename = [mode, '_', fault, '_', batch, '.xlsx'];
        xlswrite(filename, headersCell, 'Sheet1', 'A1');
        xlswrite(filename, dataToSave, 'Sheet1', 'A2');

        disp(['Saved: ', filename]);
    end
end

% Optionally close the model afterward
close_system(modelName, 0);  % 0 = do not save changes
