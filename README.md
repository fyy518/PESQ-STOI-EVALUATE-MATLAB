# PESQ-STOI-EVALUATE-MATLAB
For speech processing, you can use the program to evaluate the pesq and stoi, then store the result to an excel.
# Environment
MATLAB R2018b, Windows 10
# How to use it?
## First, change the config
Enter getFiles.m and according to your need, change the clean_dir, enhance_dir_set, excelname_set, filenum, fs.

clean_dir: the clean speech dir position (the reference speech)

enhance_dir_set: the noisy speech dir position (the processed speech)

excelname_set: the output result is written into a file(.xlsx)

filenum: the number of the speech files in the clean_dir or enhance_dir (these two are the same)

fs: sample rate (unit = Hz)
## Secondly, run getFiles.m in your matlab

# If you hava any question
please connect with the e-mail: 2272877794@qq.com

# Reference
Because the program is based on RoyChao19477/PCS/speech_metrics/, the link of the based program is here: https://github.com/RoyChao19477/PCS/tree/main/speech_metrics

```
@article{chao2022perceptual,
  title={Perceptual Contrast Stretching on Target Feature for Speech Enhancement},
  author={Chao, Rong and Yu, Cheng and Fu, Szu-Wei and Lu, Xugang and Tsao, Yu},
  journal={arXiv preprint arXiv:2203.17152},
  year={2022}
}
```

