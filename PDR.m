%PDR

% TEST RESULTS ; TR

% 1) Systolic heart failure diagnosis 
% 
%     if patient has chronic heart failure and has test results:
%         - Chest X-ray abnormal TR1 = 1
%         - ECG abnormal         TR2 = 1
%         - BNP > 100 pg/ml      TR3 = 1
%         - LVEF < 40 percent    TR4 = 1
% 
%     then suggest diagnosis = Systolic heart failure
% 
%     else :

TR = menu('Test Results','Start'); % your button input
prompt = {'Chest X-ray (E.g. Normal/Abnormal)','ECG (E.g. Normal/Abnormal)','BNP (pg/ml)','LVEF (%)','High blood pressure disorder (y/n)','Heart sounds (E.g. Normal/Abnormal)','Pulmonary venous congestion (y/n)'};
dlg_title = 'Input';
num_lines = 1;
def = {'','','','','','','',''};
TR_overall = inputdlg(prompt,dlg_title,num_lines,def);

 [TRrow,TRcols] = size(TR_overall);

a = "abnormal"; b = "abnormal"; c = "y";

if TR_overall([1]) == a && TR_overall([2]) == b && str2num(TR_overall{3}) > 100 && str2num(TR_overall{4}) < 40 
     msgbox('Diagnosis : Systolic heart failure');
     diagnosis1 = 1;
end


if TR_overall([2]) == b && TR_overall([5]) == c && TR_overall([6]) == a && TR_overall([7]) == c
     msgbox('Diagnosis : Hypertensive heart failure');
     diagnosis1 = 2;

end




% 
% for TRcols:TRrow
%     
% TR1 = TR_overall(1);
% 
% end
% 
% a = "abnormal"; b = "abnormal", 
% if TR1== a
%     r1 = 1;
% end

%list = {'Dyspnea','Fatiguq','Peripheral edema','Palpitations','Coughing','Nause','Neurologic deficit','Chest pain','Vomiting','Sweating','Anxiety'};
%    [abd,tf] = listdlg('ListString',list);






    % SIGN
% 2) Hypertensive heart failure diagnosis

%       if patient has chronic heart failure and has test results:
%         - High blood pressure disorder
%         - ECG abnormal
%         - Heart sounds abnormal
%         - Pulmonary venous congestion
%         
% 
%     then suggest diagnosis = Systolic heart failure