% read in files and transfer vectors from
% proto_dir/filename to variable name proto_dir_filename
%
% Assume we are starting in the passive 5conditions results

load ../bAPinhibspine/dend_cai.txt
load ../bAPinhibspine/dend_v.txt
load ../bAPinhibspine/spine0_cai.txt
load ../bAPinhibspine/spine0_v.txt
load ../bAPinhibspine/spine1_cai.txt
load ../bAPinhibspine/spine1_v.txt
load ../bAPinhibspine/spine2_cai.txt
load ../bAPinhibspine/spine2_v.txt

bAPinhibspine_dend_cai_pas=dend_cai;
bAPinhibspine_dend_v_pas=dend_v;
bAPinhibspine_spine0_cai_pas=spine0_cai;
bAPinhibspine_spine0_v_pas=spine0_v;
bAPinhibspine_spine1_cai_pas=spine1_cai;
bAPinhibspine_spine1_v_pas=spine1_v;
bAPinhibspine_spine2_cai_pas=spine2_cai;
bAPinhibspine_spine2_v_pas=spine2_v;

% now read in active versions

load ../../5conditions_act_spine/bAPinhibspine/dend_cai.txt
load ../../5conditions_act_spine/bAPinhibspine/dend_v.txt
load ../../5conditions_act_spine/bAPinhibspine/spine0_cai.txt
load ../../5conditions_act_spine/bAPinhibspine/spine0_v.txt
load ../../5conditions_act_spine/bAPinhibspine/spine1_cai.txt
load ../../5conditions_act_spine/bAPinhibspine/spine1_v.txt
load ../../5conditions_act_spine/bAPinhibspine/spine2_cai.txt
load ../../5conditions_act_spine/bAPinhibspine/spine2_v.txt

bAPinhibspine_dend_cai_act=dend_cai;
bAPinhibspine_dend_v_act=dend_v;
bAPinhibspine_spine0_cai_act=spine0_cai;
bAPinhibspine_spine0_v_act=spine0_v;
bAPinhibspine_spine1_cai_act=spine1_cai;
bAPinhibspine_spine1_v_act=spine1_v;
bAPinhibspine_spine2_cai_act=spine2_cai;
bAPinhibspine_spine2_v_act=spine2_v;

 % plot them

figure
subplot(1,2,1)
hold on
title('bAPinhibspine ca')
plot(bAPinhibspine_dend_cai_pas(:,1),bAPinhibspine_dend_cai_pas(:,2),'k');
plot(bAPinhibspine_spine0_cai_pas(:,1),bAPinhibspine_spine0_cai_pas(:,2),'b');
plot(bAPinhibspine_spine1_cai_pas(:,1),bAPinhibspine_spine1_cai_pas(:,2),'r');
plot(bAPinhibspine_spine2_cai_pas(:,1),bAPinhibspine_spine2_cai_pas(:,2),'g');
% 1 uM by 100 ms plot([0 0 100]+200,[1e-3 0 0]+5e-4)
% 0.3 uM by 100 ms scale bar:
plot([0 0 100]+375,[0.3e-3 0 0]+5e-4,'k')
axis off

subplot(1,2,2)
hold on
title('bAPinhibspine v')
plot(bAPinhibspine_dend_v_pas(:,1),bAPinhibspine_dend_v_pas(:,2),'k');
plot(bAPinhibspine_spine0_v_pas(:,1),bAPinhibspine_spine0_v_pas(:,2),'b');
plot(bAPinhibspine_spine1_v_pas(:,1),bAPinhibspine_spine1_v_pas(:,2),'r');
plot(bAPinhibspine_spine2_v_pas(:,1),bAPinhibspine_spine2_v_pas(:,2),'g');

plot([0 0 1]+118,[10 0 0]-35,'k') % scale bar 10 ms horiz, 10 mV vertical
axis([114 120 -75 10])
axis off
