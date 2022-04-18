clean_dir = 'E:\beifen\denoiser\data\CDShare3VCTK_DEMAND_fyy16kclean_denoiser_snr_16int\clean_te';
% clean_dir: the clean speech dir position (the reference speech)
enhance_dir_set = {'E:\beifen\denoiser\data\result\baselineSNR0.0\samples_enhanced', 'E:\beifen\denoiser\data\result\baselineSNR0.0\samples_enhanced_pp', 'E:\beifen\denoiser\data\result\baselineSNR_5.0\samples_enhanced', 'E:\beifen\denoiser\data\result\baselineSNR_5.0\samples_enhanced_pp'};
% enhance_dir_set: the noisy speech dir position (the processed speech)
excelname_set = {'pesqstoi0.0.xlsx', 'pesqstoi0.0pp.xlsx', 'pesqstoi_5.0.xlsx', 'pesqstoi_5.0pp.xlsx'};
% excelname_set: the output result is written into a file(.xlsx)
filenum = 3000;
% the number of the speech files in the clean_dir or enhance_dir (these two are the same)
fs = 16000;
% fs: sample rate (unit = Hz)
[m,n] = size(enhance_dir_set);
for i=1:n
    enhance_dir = enhance_dir_set(i);
    excelname = excelname_set(i);
    pesq_stoi(clean_dir, cell2mat(enhance_dir), cell2mat(excelname), filenum, fs);
    % call the function to calculate the pesq and stoi
end
