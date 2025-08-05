% Base case initialization

% clear all; clc;
% u0=[65.053, 55.98, 27.644, 64.302, 25.21, 43.064, 41.10, 49.534, 50.446, 44.106, 21.114, 50];
u0=[63.053, 53.98, 24.644, 61.302, 22.21, 40.064, 38.10, 46.534, 47.446, 41.106, 18.114, 50];

dist = zeros(1,28);
for i=1:12;
    iChar=int2str(i);
    eval(['xmv',iChar,'_0=u0(',iChar,');']);
end

Fp_0=100;

r1_0=0.251/Fp_0;
r2_0=3664/Fp_0;
r3_0=4509/Fp_0;
r4_0=9.35/Fp_0;
r5_0=0.337/Fp_0;
r6_0=25.16/Fp_0;
r7_0=22.95/Fp_0;

Eadj_0=0;
SP17_0=80.1;

% Note:  The values of xmv_0 and r_0 specified above get overridden
%        by the initial conditions specified in the xInitial variable,
%        loaded in the following statement.  The above statements are
%        only needed when starting from a new condition where xInitial
%        doesn't apply.

load Mode1xInitial

% TS_base is the sampling period of most discrete PI controllers used 
% in the simulation.
Ts_base=0.0005;
% TS_save is the sampling period for saving results.  The following
% variables are saved at the end of a run:
% tout    -  the elapsed time (hrs), length N.
% simout  -  the TE plant outputs, N by 41 matrix
% OpCost  -  the instantaneous operating cost, $/hr, length N
% xmv     -  the TE plant manipulated variables, N by 12 matrix
% idv     -  the TE plant disturbances, N by 20 matrix
Ts_save=1/60;
%k = 20;
% sim("MultiLoop_mode1.mdl")
%filenm_1 = ['fault_'    num2str(k)    '.xlsx' ]
%ilenm_2 = ['faultc_'    num2str(k)    '.xlsx' ]
%xlswrite(filenm_1, simout)
%xlswrite(filenm_2, xmv)
% 
% 
% [numRows, numCols] = size(simout);
% 
% figure;
% for col = 1:numCols
%     subplot(ceil(numCols/2), 2, col);
%     plot(simout(:, col));
%     set(gca, 'XTick', [], 'YTick', []);
% 
%     % Horizontal ylabel
%     ylabel(['xmv-' num2str(col)], 'Rotation', 0);
% end
% 
% 
% % Combine tout and simout into one matrix
% dataToSave = [tout, simout];
% 
% % Optional: create column headers
% numCols = size(simout, 2);
% headers = ['Time', arrayfun(@(i) sprintf('xmv-%d', i), 1:numCols, 'UniformOutput', false)];
% 
% % Write headers and data to Excel
% filename = 'mode1_normal.xlsx';
% xlswrite(filename, headers, 'Sheet1', 'A1');        % Write headers
% xlswrite(filename, dataToSave, 'Sheet1', 'A2');     % Write data starting from second row