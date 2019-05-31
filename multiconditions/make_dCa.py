#!/usr/bin/python
# make_dCa.py
# will print out the Delta Ca's for the subfolders
# run
# ./make_peaks.sh > peaks.txt
# whos file peaks.txt is read by this program as well as baselines.txt

import os, os.path

#for root, dirs, files in os.walk('.'):
#   for f in files:
#     cai_file_fullpath = os.path.join(root, f)
#     if 'cai' in f:
#       print cai_file_fullpath

# that's nice but read the peaks.txt file and calculate everything from that
f=open('peaks.txt','r')
for line in f:
  contents = line.split('\t')
  cai_peak_with_newline = contents[2]
  cai_peak = cai_peak_with_newline.replace('\n','')
  # print contents[0]+" has peak "+cai_peak+" at time "+contents[1]
  Delta_Ca = str(eval(cai_peak+"-1e-4"))
  print contents[0]+" has (peak) Delta Ca = "+Delta_Ca+" at time "+contents[1]
  
