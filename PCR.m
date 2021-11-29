TR = menu('Prescriptions','Insert');
prompt = {'Prescriptions'};
dlg_title = 'Input';
num_lines = 1;
def = {''};
pcr = inputdlg(prompt,dlg_title,num_lines,def);

str = pcr;              % trigerred when aspirin in the prescriptions
pat = detailP(5);
TF = contains(str,pat)

%alergic = detailP(5);

if TF == 1
    fprintf("\nTHis patient has an alergic to Aspirin");

    alert = menu('Patient has an alergic to Aspirin','Proceed');


Newpcr = menu('New Prescriptions','Insert'); % your button input
prompt = {'Prescriptions'};
dlg_title2 = 'Input';
num_lines2 = 1;
def2 = {''};
pcr2 = inputdlg(prompt,dlg_title,num_lines,def);

end
