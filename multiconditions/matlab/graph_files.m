% read in files and transfer vectors from
% proto_dir/filename to variable name proto_dir_filename

load ../bAP/dend_cai.txt
load ../bAP/dend_v.txt
load ../bAP/spine0_cai.txt
load ../bAP/spine0_v.txt
load ../bAP/spine1_cai.txt
load ../bAP/spine1_v.txt
load ../bAP/spine2_cai.txt
load ../bAP/spine2_v.txt

bAP_dend_cai=dend_cai;
bAP_dend_v=dend_v;
bAP_spine0_cai=spine0_cai;
bAP_spine0_v=spine0_v;
bAP_spine1_cai=spine1_cai;
bAP_spine1_v=spine1_v;
bAP_spine2_cai=spine2_cai;
bAP_spine2_v=spine2_v;

load ../bAPinhibdend/dend_cai.txt
load ../bAPinhibdend/dend_v.txt
load ../bAPinhibdend/spine0_cai.txt
load ../bAPinhibdend/spine0_v.txt
load ../bAPinhibdend/spine1_cai.txt
load ../bAPinhibdend/spine1_v.txt
load ../bAPinhibdend/spine2_cai.txt
load ../bAPinhibdend/spine2_v.txt

bAPinhibdend_dend_cai=dend_cai;
bAPinhibdend_dend_v=dend_v;
bAPinhibdend_spine0_cai=spine0_cai;
bAPinhibdend_spine0_v=spine0_v;
bAPinhibdend_spine1_cai=spine1_cai;
bAPinhibdend_spine1_v=spine1_v;
bAPinhibdend_spine2_cai=spine2_cai;
bAPinhibdend_spine2_v=spine2_v;

load ../bAPinhibspine/dend_cai.txt
load ../bAPinhibspine/dend_v.txt
load ../bAPinhibspine/spine0_cai.txt
load ../bAPinhibspine/spine0_v.txt
load ../bAPinhibspine/spine1_cai.txt
load ../bAPinhibspine/spine1_v.txt
load ../bAPinhibspine/spine2_cai.txt
load ../bAPinhibspine/spine2_v.txt

bAPinhibspine_dend_cai=dend_cai;
bAPinhibspine_dend_v=dend_v;
bAPinhibspine_spine0_cai=spine0_cai;
bAPinhibspine_spine0_v=spine0_v;
bAPinhibspine_spine1_cai=spine1_cai;
bAPinhibspine_spine1_v=spine1_v;
bAPinhibspine_spine2_cai=spine2_cai;
bAPinhibspine_spine2_v=spine2_v;

load ../inhibdend/dend_cai.txt
load ../inhibdend/dend_v.txt
load ../inhibdend/spine0_cai.txt
load ../inhibdend/spine0_v.txt
load ../inhibdend/spine1_cai.txt
load ../inhibdend/spine1_v.txt
load ../inhibdend/spine2_cai.txt
load ../inhibdend/spine2_v.txt

inhibdend_dend_cai=dend_cai;
inhibdend_dend_v=dend_v;
inhibdend_spine0_cai=spine0_cai;
inhibdend_spine0_v=spine0_v;
inhibdend_spine1_cai=spine1_cai;
inhibdend_spine1_v=spine1_v;
inhibdend_spine2_cai=spine2_cai;
inhibdend_spine2_v=spine2_v;

load ../inhibspine/dend_cai.txt
load ../inhibspine/dend_v.txt
load ../inhibspine/spine0_cai.txt
load ../inhibspine/spine0_v.txt
load ../inhibspine/spine1_cai.txt
load ../inhibspine/spine1_v.txt
load ../inhibspine/spine2_cai.txt
load ../inhibspine/spine2_v.txt

inhibspine_dend_cai=dend_cai;
inhibspine_dend_v=dend_v;
inhibspine_spine0_cai=spine0_cai;
inhibspine_spine0_v=spine0_v;
inhibspine_spine1_cai=spine1_cai;
inhibspine_spine1_v=spine1_v;
inhibspine_spine2_cai=spine2_cai;
inhibspine_spine2_v=spine2_v;

 % plot them

figure
hold on
title('bAP ca')
 plot(bAP_dend_cai(:,1),bAP_dend_cai(:,2),'k');
plot(bAP_spine0_cai(:,1),bAP_spine0_cai(:,2),'b');
plot(bAP_spine1_cai(:,1),bAP_spine1_cai(:,2),'r');
plot(bAP_spine2_cai(:,1),bAP_spine2_cai(:,2),'g');
figure
hold on
title('bAP v')
plot(bAP_dend_v(:,1),bAP_dend_v(:,2),'k');
plot(bAP_spine0_v(:,1),bAP_spine0_v(:,2),'b');
plot(bAP_spine1_v(:,1),bAP_spine1_v(:,2),'r');
plot(bAP_spine2_v(:,1),bAP_spine2_v(:,2),'g');

figure
hold on
title('bAPinhibdend ca')
plot(bAPinhibdend_dend_cai(:,1),bAPinhibdend_dend_cai(:,2),'k');
plot(bAPinhibdend_spine0_cai(:,1),bAPinhibdend_spine0_cai(:,2),'b');
plot(bAPinhibdend_spine1_cai(:,1),bAPinhibdend_spine1_cai(:,2),'r');
plot(bAPinhibdend_spine2_cai(:,1),bAPinhibdend_spine2_cai(:,2),'g');

figure
hold on
title('bAPinhibdend v')
plot(bAPinhibdend_dend_v(:,1),bAPinhibdend_dend_v(:,2),'k');
plot(bAPinhibdend_spine0_v(:,1),bAPinhibdend_spine0_v(:,2),'b');
plot(bAPinhibdend_spine1_v(:,1),bAPinhibdend_spine1_v(:,2),'r');
plot(bAPinhibdend_spine2_v(:,1),bAPinhibdend_spine2_v(:,2),'g');

figure
hold on
title('bAPinhibspine ca')
plot(bAPinhibspine_dend_cai(:,1),bAPinhibspine_dend_cai(:,2),'k');
plot(bAPinhibspine_spine0_cai(:,1),bAPinhibspine_spine0_cai(:,2),'b');
plot(bAPinhibspine_spine1_cai(:,1),bAPinhibspine_spine1_cai(:,2),'r');
plot(bAPinhibspine_spine2_cai(:,1),bAPinhibspine_spine2_cai(:,2),'g');

figure
hold on
title('bAPinhibspine v')
plot(bAPinhibspine_dend_v(:,1),bAPinhibspine_dend_v(:,2),'k');
plot(bAPinhibspine_spine0_v(:,1),bAPinhibspine_spine0_v(:,2),'b');
plot(bAPinhibspine_spine1_v(:,1),bAPinhibspine_spine1_v(:,2),'r');
plot(bAPinhibspine_spine2_v(:,1),bAPinhibspine_spine2_v(:,2),'g');

figure
hold on
title('inhibdend ca')
plot(inhibdend_dend_cai(:,1),inhibdend_dend_cai(:,2),'k');
plot(inhibdend_spine0_cai(:,1),inhibdend_spine0_cai(:,2),'b');
plot(inhibdend_spine1_cai(:,1),inhibdend_spine1_cai(:,2),'r');
plot(inhibdend_spine2_cai(:,1),inhibdend_spine2_cai(:,2),'g');

figure
hold on
title('inhibdend v')
plot(inhibdend_dend_v(:,1),inhibdend_dend_v(:,2),'k');
plot(inhibdend_spine0_v(:,1),inhibdend_spine0_v(:,2),'b');
plot(inhibdend_spine1_v(:,1),inhibdend_spine1_v(:,2),'r');
plot(inhibdend_spine2_v(:,1),inhibdend_spine2_v(:,2),'g');

figure
hold on
title('inhibspine ca')
plot(inhibspine_dend_cai(:,1),inhibspine_dend_cai(:,2),'k');
plot(inhibspine_spine0_cai(:,1),inhibspine_spine0_cai(:,2),'b');
plot(inhibspine_spine1_cai(:,1),inhibspine_spine1_cai(:,2),'r');
plot(inhibspine_spine2_cai(:,1),inhibspine_spine2_cai(:,2),'g');

figure
hold on
title('inhibspine v')
plot(inhibspine_dend_v(:,1),inhibspine_dend_v(:,2),'k');
plot(inhibspine_spine0_v(:,1),inhibspine_spine0_v(:,2),'b');
plot(inhibspine_spine1_v(:,1),inhibspine_spine1_v(:,2),'r');
plot(inhibspine_spine2_v(:,1),inhibspine_spine2_v(:,2),'g');
