% poster fig 3 SfN2012 from fig2.hoc
cd 'f:\share\projects\HigleyLab\Responses2Reviewers\20121009\singleDendrite\fig2'
load head1_0p05.txt
load head1_0p07.txt
load head1_0p10.txt
load head1_0p15.txt
load head1_0p20.txt
% for comparison with an unihibited trace:
load F:\share\projects\HigleyLab\Responses2Reviewers\20121009\singleDendrite\5conditions\bAP\spine1_cai.txt
figure
hold on
plot(spine1_cai(:,1),spine1_cai(:,2),'k')
plot(head1_0p05(:,1),head1_0p05(:,2),'r')
plot(head1_0p07(:,1),head1_0p07(:,2),'r')
plot(head1_0p10(:,1),head1_0p10(:,2),'r')
plot(head1_0p15(:,1),head1_0p15(:,2),'r')
plot(head1_0p20(:,1),head1_0p20(:,2),'r')
% 0.3 uM by 100 ms scale bar:
plot([0 0 100]+350,[0.3e-3 0 0]+5.5e-4,'k')
axis off
cd F:\share\projects\HigleyLab\Responses2Reviewers\20121009\singleDendrite\5conditions\matlab
