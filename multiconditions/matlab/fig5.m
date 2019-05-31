% posterFig5.m
% same as fig4.hoc
cd 'f:\share\projects\HigleyLab\Responses2Reviewers\20121009\singleDendrite\fig4'

% for reference in case want to include it
load F:\share\projects\HigleyLab\Responses2Reviewers\20121009\singleDendrite\5conditions\bAP\spine1_cai.txt
APalone_spine1_ca1=spine1_cai;

load dend_cai.txt
load spine0_cai.txt
load spine1_cai.txt
load spine2_cai.txt

load dend_v.txt
load spine0_v.txt
load spine1_v.txt
load spine2_v.txt

figure
subplot(1,2,1)
hold on
plot(spine0_cai(:,1),spine0_cai(:,2),'k') %
plot(spine1_cai(:,1),spine1_cai(:,2),'g') %
plot(spine2_cai(:,1),spine2_cai(:,2),'b') %
plot(dend_cai(:,1),dend_cai(:,2),'r') %
axis off
% 0.3 uM by 100 ms scale bar:
plot([0 0 100]+350,[0.3e-3 0 0]+5.5e-4,'k')

subplot(1,2,2)
hold on
plot(spine0_v(:,1),spine0_v(:,2),'k')
plot(spine1_v(:,1),spine1_v(:,2),'g')
plot(spine2_v(:,1),spine2_v(:,2),'b')
plot(dend_v(:,1),dend_v(:,2),'r')
plot([0 0 2]+118,[10 0 0]-50,'k') % scale bar 10 ms horiz, 10 mV vertical
axis([114 120 -75 10])
axis off
cd F:\share\projects\HigleyLab\Responses2Reviewers\20121009\singleDendrite\5conditions\matlab
