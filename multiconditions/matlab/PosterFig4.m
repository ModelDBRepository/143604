% posterFig4.m
% same as fig3.hoc
cd 'f:\share\projects\HigleyLab\Responses2Reviewers\20121009\singleDendrite\fig3'
load head0.txt
load head1.txt
load head2.txt
load F:\share\projects\HigleyLab\Responses2Reviewers\20121009\singleDendrite\5conditions\bAP\spine1_cai.txt
figure
hold on
plot(spine1_cai(:,1),spine1_cai(:,2),'k') % AP alone case
plot(head0(:,1),head0(:,2),'g') % neighbor (90 um from soma) to inhibited spine
plot(head1(:,1),head1(:,2),'r') % 100 um to soma inhibited spine
plot(head2(:,1),head2(:,2),'b') % 110 um to soma inhibited spine
% 0.3 uM by 100 ms scale bar:
plot([0 0 100]+350,[0.3e-3 0 0]+5.5e-4,'k')
axis off
cd F:\share\projects\HigleyLab\Responses2Reviewers\20121009\singleDendrite\5conditions\matlab
