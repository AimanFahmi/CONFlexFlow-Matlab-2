clear;
clc;

choice = menu('Welcome to CONFlexFlow','Start'); % your button input
prompt = {'hasName','hasGender','locateddln','treatedBy','hasAllergic'};
dlg_title = 'Input';
num_lines = 1;
def = {'','','','',''};
detailP = inputdlg(prompt,dlg_title,num_lines,def);


SympPresent = menu('Symptoms present','Yes','No');

if  SympPresent == 1
    list = {'Dyspnea','Fatiguq','Peripheral edema','Palpitations','Coughing','Nause','Neurologic deficit','Chest pain','Vomiting','Sweating','Anxiety'};
    [indx,tf] = listdlg('ListString',list);


    [numRows,numCols] = size(indx); % determine size of array indx, to make range in for loop


a1 = 0;
for loop = numRows:numCols % range looping based on size of indx i.g. how many symptoms selected before. E.g 5 selected, then looping will start from 1:5
    indx1 = indx(loop);    % since number of selected symptoms defined in arraw e.g. [2,3,6]. So, we need to check one-by-one if the arraw size exist the value of selected symptoms.

    if indx1 == 1;
        a1 = a1 + 1;
    elseif indx1 == 2
        a1 = a1 + 1 ;
    elseif indx1 == 3
        a1 = a1 + 1 ;
    elseif indx1 == 4
        a1 = a1 + 1 ;
    elseif indx1 == 5
        a1 = a1 + 1 ;
    elseif indx1 == 6
        a1 = a1 + 1 ;
    elseif indx1 == 7
        a1 = a1 + 1 ;
    end
    
end


if a1 == 7 && loop < 8      % the conditon of Chronic heart failure a1=7, but in some cases more than 7 symptoms applied. Another condition need to set in order the get only the Chronic heart failure .
    % msgbox1 = msgbox('Hypothetical Diagnosis : Chronic heart failure');
    % msgbox2 = msgbox('Proceed with suggested Test');
 uiwait(msgbox({'Hypothetical Diagnosis : Chronic heart failure';'';'Proceed with suggested Tests :';'Physical Examination';'Blood Test';'Encocardiography Tests';'Chest X-ray';'Electrocardiography Tests'} ,'About !','modal'));

else
     msgbox('Proceed Futher Consulations & Medications');
end


PDR
PTR
PCR

%%%%%%%%% NO SYMPTOMS APPEAR %%%%%%%%%%%%%%
else
   msgbox('Proceed Medication');
end



