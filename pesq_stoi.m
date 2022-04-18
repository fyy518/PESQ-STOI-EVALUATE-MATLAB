function pesq_stoi(clean_dir, enhance_dir, excelname ,filenum, fs)
cleanFileFolder=fullfile(clean_dir);
enhanceFileFolder=fullfile(enhance_dir);
cleanDirOutput=dir(fullfile(cleanFileFolder,'*.wav'));
enhanceDirOutput=dir(fullfile(enhanceFileFolder,'*.wav'));
cleanFileNames={cleanDirOutput.name};
enhanceFileNames={enhanceDirOutput.name};
clean_file_path = strcat(clean_dir,'\',strtrim(cleanFileNames(1,:)));
enhance_file_path = strcat(enhance_dir,'\',strtrim(enhanceFileNames(1,:)));
pesq_result = {};
stoi_result = {};
for i=1:filenum
    %clean_file_path(i);
    %enhance_file_path(i);
    pesq_i = pesq(cell2mat(clean_file_path(i)), cell2mat(enhance_file_path(i)));
    stoi_i = stoi(cell2mat(clean_file_path(i)), cell2mat(enhance_file_path(i)), fs);
    pesq_result{end+1} = pesq_i;
    stoi_result{end+1} = stoi_i;
end

% write the result into an excel file
data = [cleanFileNames' pesq_result' stoi_result'];
% a' is the transpose of a
title={'fileName','pesq','stoi'};
% add the title names
result=[title; data];

% save to current working storage path by default
s=xlswrite(excelname ,result);
% save the file