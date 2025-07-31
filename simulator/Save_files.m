mode = 'mode1';
fault = '21';
batch = '2';


[numRows, numCols] = size(simout);

% figure;
% for col = 1:numCols
%     subplot(ceil(numCols/2), 2, col);
%     plot(simout(:, col));
%     set(gca, 'XTick', [], 'YTick', []);
% 
%     Horizontal ylabel
%     ylabel(['xmv-' num2str(col)], 'Rotation', 0);
% end


% Combine tout and simout into one matrix
dataToSave = [tout, simout];

% Optional: create column headers
numCols = size(simout, 2);
headers = ['Time (h)', arrayfun(@(i) sprintf('xmv-%d', i), 1:numCols, 'UniformOutput', false)];

% Write headers and data to Excel
filename = [mode , '_' ,fault, '_', batch '.xlsx'];
xlswrite(filename, headers, 'Sheet1', 'A1');        % Write headers
xlswrite(filename, dataToSave, 'Sheet1', 'A2');     % Write data starting from second row