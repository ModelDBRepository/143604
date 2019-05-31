% bAP alone with paired IPSP-bAP
% load bAP alone, then bAP with inhib. in spine
cd f:\share\projects\HigleyLab\Responses2Reviewers\20121009\singleDendrite\5conditions
load bAP/spine1_cai.txt;
load bAP/spine1_v.txt;
bAP_spine1_cai=spine1_cai;
bAP_spine1_v=spine1_v;

load bAPinhibspine/spine1_cai.txt;
bAPinhibspine_spine1_cai = spine1_cai;
load bAPinhibspine/spine1_v.txt;
bAPinhibspine_spine1_v = spine1_v;

figure 
hold on
plot(bAP_spine1_cai(:,1), bAP_spine1_cai(:,2),'k');
plot(bAPinhibspine_spine1_cai(:,1), bAPinhibspine_spine1_cai(:,2),'r');
% title('Model [Ca2+]')
axis off
% 1 uM by 100 ms plot([0 0 100]+200,[1e-3 0 0]+5e-4)
% 0.3 uM by 100 ms scale bar:
plot([0 0 100]+375,[0.3e-3 0 0]+7e-4,'k')
cd matlab
