% dCa_ratio.m:
%  will calculate dCa(inhibitied)/dCa(control)
% apparently can do it by just reading data files generated in the multiconditions.
% Baseline check:  First read the Ca baseline in the five protocol folders
% bAP  bAPinhibdend  bAPinhibspine  inhibdend  inhibspine
% these come from Ca trace files which have names like:
% ./multiconditions/bAPinhibspine/dend_cai.txt
% ./multiconditions/bAPinhibspine/spine0_cai.txt
% ./multiconditions/bAPinhibspine/spine1_cai.txt
% ./multiconditions/bAPinhibspine/spine2_cai.txt
%
% Assign the name prestimulus_time to the time step (in the large 0.05
% ms time step increments so that it works for both that and the small
% 0.025 ms time steps) just prior to the inhibition and therefore also
% prior to the bAP.  Print out the Ca values in these traces at these
% times.
%
% the time of the trigger of the bAP is 115 ms (PointProcessGroupManager
% MultiClamp[0]). The time of the inihibitory synapse activation is
% 100 ms (NetStim in "Exp2Syn Synaptic Stimulation Control" box).

% read in files and transfer vectors from
% proto_dir/filename to variable name proto_dir_filename
%
% the passive multiconditions results

load ../../multiconditions_pas_spine/bAP/dend_cai.txt
load ../../multiconditions_pas_spine/bAP/dend_v.txt
load ../../multiconditions_pas_spine/bAP/spine0_cai.txt
load ../../multiconditions_pas_spine/bAP/spine0_v.txt
load ../../multiconditions_pas_spine/bAP/spine1_cai.txt
load ../../multiconditions_pas_spine/bAP/spine1_v.txt
load ../../multiconditions_pas_spine/bAP/spine2_cai.txt
load ../../multiconditions_pas_spine/bAP/spine2_v.txt

bAP_dend_cai_pas=dend_cai;
bAP_dend_v_pas=dend_v;
bAP_spine0_cai_pas=spine0_cai;
bAP_spine0_v_pas=spine0_v;
bAP_spine1_cai_pas=spine1_cai;
bAP_spine1_v_pas=spine1_v;
bAP_spine2_cai_pas=spine2_cai;
bAP_spine2_v_pas=spine2_v;

load ../../multiconditions_pas_spine/bAPinhibdend/dend_cai.txt
load ../../multiconditions_pas_spine/bAPinhibdend/dend_v.txt
load ../../multiconditions_pas_spine/bAPinhibdend/spine0_cai.txt
load ../../multiconditions_pas_spine/bAPinhibdend/spine0_v.txt
load ../../multiconditions_pas_spine/bAPinhibdend/spine1_cai.txt
load ../../multiconditions_pas_spine/bAPinhibdend/spine1_v.txt
load ../../multiconditions_pas_spine/bAPinhibdend/spine2_cai.txt
load ../../multiconditions_pas_spine/bAPinhibdend/spine2_v.txt

bAPinhibdend_dend_cai_pas=dend_cai;
bAPinhibdend_dend_v_pas=dend_v;
bAPinhibdend_spine0_cai_pas=spine0_cai;
bAPinhibdend_spine0_v_pas=spine0_v;
bAPinhibdend_spine1_cai_pas=spine1_cai;
bAPinhibdend_spine1_v_pas=spine1_v;
bAPinhibdend_spine2_cai_pas=spine2_cai;
bAPinhibdend_spine2_v_pas=spine2_v;

load ../../multiconditions_pas_spine/bAP1xinhibdend/dend_cai.txt
load ../../multiconditions_pas_spine/bAP1xinhibdend/dend_v.txt
load ../../multiconditions_pas_spine/bAP1xinhibdend/spine0_cai.txt
load ../../multiconditions_pas_spine/bAP1xinhibdend/spine0_v.txt
load ../../multiconditions_pas_spine/bAP1xinhibdend/spine1_cai.txt
load ../../multiconditions_pas_spine/bAP1xinhibdend/spine1_v.txt
load ../../multiconditions_pas_spine/bAP1xinhibdend/spine2_cai.txt
load ../../multiconditions_pas_spine/bAP1xinhibdend/spine2_v.txt

bAP1xinhibdend_dend_cai_pas=dend_cai;
bAP1xinhibdend_dend_v_pas=dend_v;
bAP1xinhibdend_spine0_cai_pas=spine0_cai;
bAP1xinhibdend_spine0_v_pas=spine0_v;
bAP1xinhibdend_spine1_cai_pas=spine1_cai;
bAP1xinhibdend_spine1_v_pas=spine1_v;
bAP1xinhibdend_spine2_cai_pas=spine2_cai;
bAP1xinhibdend_spine2_v_pas=spine2_v;

load ../../multiconditions_pas_spine/bAPinhibspine/dend_cai.txt
load ../../multiconditions_pas_spine/bAPinhibspine/dend_v.txt
load ../../multiconditions_pas_spine/bAPinhibspine/spine0_cai.txt
load ../../multiconditions_pas_spine/bAPinhibspine/spine0_v.txt
load ../../multiconditions_pas_spine/bAPinhibspine/spine1_cai.txt
load ../../multiconditions_pas_spine/bAPinhibspine/spine1_v.txt
load ../../multiconditions_pas_spine/bAPinhibspine/spine2_cai.txt
load ../../multiconditions_pas_spine/bAPinhibspine/spine2_v.txt

bAPinhibspine_dend_cai_pas=dend_cai;
bAPinhibspine_dend_v_pas=dend_v;
bAPinhibspine_spine0_cai_pas=spine0_cai;
bAPinhibspine_spine0_v_pas=spine0_v;
bAPinhibspine_spine1_cai_pas=spine1_cai;
bAPinhibspine_spine1_v_pas=spine1_v;
bAPinhibspine_spine2_cai_pas=spine2_cai;
bAPinhibspine_spine2_v_pas=spine2_v;

load ../../multiconditions_pas_spine/inhibdend/dend_cai.txt
load ../../multiconditions_pas_spine/inhibdend/dend_v.txt
load ../../multiconditions_pas_spine/inhibdend/spine0_cai.txt
load ../../multiconditions_pas_spine/inhibdend/spine0_v.txt
load ../../multiconditions_pas_spine/inhibdend/spine1_cai.txt
load ../../multiconditions_pas_spine/inhibdend/spine1_v.txt
load ../../multiconditions_pas_spine/inhibdend/spine2_cai.txt
load ../../multiconditions_pas_spine/inhibdend/spine2_v.txt

inhibdend_dend_cai_pas=dend_cai;
inhibdend_dend_v_pas=dend_v;
inhibdend_spine0_cai_pas=spine0_cai;
inhibdend_spine0_v_pas=spine0_v;
inhibdend_spine1_cai_pas=spine1_cai;
inhibdend_spine1_v_pas=spine1_v;
inhibdend_spine2_cai_pas=spine2_cai;
inhibdend_spine2_v_pas=spine2_v;

load ../../multiconditions_pas_spine/inhibspine/dend_cai.txt
load ../../multiconditions_pas_spine/inhibspine/dend_v.txt
load ../../multiconditions_pas_spine/inhibspine/spine0_cai.txt
load ../../multiconditions_pas_spine/inhibspine/spine0_v.txt
load ../../multiconditions_pas_spine/inhibspine/spine1_cai.txt
load ../../multiconditions_pas_spine/inhibspine/spine1_v.txt
load ../../multiconditions_pas_spine/inhibspine/spine2_cai.txt
load ../../multiconditions_pas_spine/inhibspine/spine2_v.txt

inhibspine_dend_cai_pas=dend_cai;
inhibspine_dend_v_pas=dend_v;
inhibspine_spine0_cai_pas=spine0_cai;
inhibspine_spine0_v_pas=spine0_v;
inhibspine_spine1_cai_pas=spine1_cai;
inhibspine_spine1_v_pas=spine1_v;
inhibspine_spine2_cai_pas=spine2_cai;
inhibspine_spine2_v_pas=spine2_v;

% now read in active versions %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load ../../multiconditions_act_spine/bAP/dend_cai.txt
load ../../multiconditions_act_spine/bAP/dend_v.txt
load ../../multiconditions_act_spine/bAP/spine0_cai.txt
load ../../multiconditions_act_spine/bAP/spine0_v.txt
load ../../multiconditions_act_spine/bAP/spine1_cai.txt
load ../../multiconditions_act_spine/bAP/spine1_v.txt
load ../../multiconditions_act_spine/bAP/spine2_cai.txt
load ../../multiconditions_act_spine/bAP/spine2_v.txt

bAP_dend_cai_act=dend_cai;
bAP_dend_v_act=dend_v;
bAP_spine0_cai_act=spine0_cai;
bAP_spine0_v_act=spine0_v;
bAP_spine1_cai_act=spine1_cai;
bAP_spine1_v_act=spine1_v;
bAP_spine2_cai_act=spine2_cai;
bAP_spine2_v_act=spine2_v;

load ../../multiconditions_act_spine/bAPinhibdend/dend_cai.txt
load ../../multiconditions_act_spine/bAPinhibdend/dend_v.txt
load ../../multiconditions_act_spine/bAPinhibdend/spine0_cai.txt
load ../../multiconditions_act_spine/bAPinhibdend/spine0_v.txt
load ../../multiconditions_act_spine/bAPinhibdend/spine1_cai.txt
load ../../multiconditions_act_spine/bAPinhibdend/spine1_v.txt
load ../../multiconditions_act_spine/bAPinhibdend/spine2_cai.txt
load ../../multiconditions_act_spine/bAPinhibdend/spine2_v.txt

bAPinhibdend_dend_cai_act=dend_cai;
bAPinhibdend_dend_v_act=dend_v;
bAPinhibdend_spine0_cai_act=spine0_cai;
bAPinhibdend_spine0_v_act=spine0_v;
bAPinhibdend_spine1_cai_act=spine1_cai;
bAPinhibdend_spine1_v_act=spine1_v;
bAPinhibdend_spine2_cai_act=spine2_cai;
bAPinhibdend_spine2_v_act=spine2_v;

load ../../multiconditions_act_spine/bAP1xinhibdend/dend_cai.txt
load ../../multiconditions_act_spine/bAP1xinhibdend/dend_v.txt
load ../../multiconditions_act_spine/bAP1xinhibdend/spine0_cai.txt
load ../../multiconditions_act_spine/bAP1xinhibdend/spine0_v.txt
load ../../multiconditions_act_spine/bAP1xinhibdend/spine1_cai.txt
load ../../multiconditions_act_spine/bAP1xinhibdend/spine1_v.txt
load ../../multiconditions_act_spine/bAP1xinhibdend/spine2_cai.txt
load ../../multiconditions_act_spine/bAP1xinhibdend/spine2_v.txt

bAP1xinhibdend_dend_cai_act=dend_cai;
bAP1xinhibdend_dend_v_act=dend_v;
bAP1xinhibdend_spine0_cai_act=spine0_cai;
bAP1xinhibdend_spine0_v_act=spine0_v;
bAP1xinhibdend_spine1_cai_act=spine1_cai;
bAP1xinhibdend_spine1_v_act=spine1_v;
bAP1xinhibdend_spine2_cai_act=spine2_cai;
bAP1xinhibdend_spine2_v_act=spine2_v;

load ../../multiconditions_act_spine/bAPinhibspine/dend_cai.txt
load ../../multiconditions_act_spine/bAPinhibspine/dend_v.txt
load ../../multiconditions_act_spine/bAPinhibspine/spine0_cai.txt
load ../../multiconditions_act_spine/bAPinhibspine/spine0_v.txt
load ../../multiconditions_act_spine/bAPinhibspine/spine1_cai.txt
load ../../multiconditions_act_spine/bAPinhibspine/spine1_v.txt
load ../../multiconditions_act_spine/bAPinhibspine/spine2_cai.txt
load ../../multiconditions_act_spine/bAPinhibspine/spine2_v.txt

bAPinhibspine_dend_cai_act=dend_cai;
bAPinhibspine_dend_v_act=dend_v;
bAPinhibspine_spine0_cai_act=spine0_cai;
bAPinhibspine_spine0_v_act=spine0_v;
bAPinhibspine_spine1_cai_act=spine1_cai;
bAPinhibspine_spine1_v_act=spine1_v;
bAPinhibspine_spine2_cai_act=spine2_cai;
bAPinhibspine_spine2_v_act=spine2_v;

load ../../multiconditions_act_spine/inhibdend/dend_cai.txt
load ../../multiconditions_act_spine/inhibdend/dend_v.txt
load ../../multiconditions_act_spine/inhibdend/spine0_cai.txt
load ../../multiconditions_act_spine/inhibdend/spine0_v.txt
load ../../multiconditions_act_spine/inhibdend/spine1_cai.txt
load ../../multiconditions_act_spine/inhibdend/spine1_v.txt
load ../../multiconditions_act_spine/inhibdend/spine2_cai.txt
load ../../multiconditions_act_spine/inhibdend/spine2_v.txt

inhibdend_dend_cai_act=dend_cai;
inhibdend_dend_v_act=dend_v;
inhibdend_spine0_cai_act=spine0_cai;
inhibdend_spine0_v_act=spine0_v;
inhibdend_spine1_cai_act=spine1_cai;
inhibdend_spine1_v_act=spine1_v;
inhibdend_spine2_cai_act=spine2_cai;
inhibdend_spine2_v_act=spine2_v;


load ../../multiconditions_act_spine/inhibspine/dend_cai.txt
load ../../multiconditions_act_spine/inhibspine/dend_v.txt
load ../../multiconditions_act_spine/inhibspine/spine0_cai.txt
load ../../multiconditions_act_spine/inhibspine/spine0_v.txt
load ../../multiconditions_act_spine/inhibspine/spine1_cai.txt
load ../../multiconditions_act_spine/inhibspine/spine1_v.txt
load ../../multiconditions_act_spine/inhibspine/spine2_cai.txt
load ../../multiconditions_act_spine/inhibspine/spine2_v.txt

inhibspine_dend_cai_act=dend_cai;
inhibspine_dend_v_act=dend_v;
inhibspine_spine0_cai_act=spine0_cai;
inhibspine_spine0_v_act=spine0_v;
inhibspine_spine1_cai_act=spine1_cai;
inhibspine_spine1_v_act=spine1_v;
inhibspine_spine2_cai_act=spine2_cai;
inhibspine_spine2_v_act=spine2_v;

 % plot sample

figure
hold on
title('bAPinhibspine ca')
plot(bAPinhibspine_dend_cai_pas(:,1),bAPinhibspine_dend_cai_pas(:,2),'k');
plot(bAPinhibspine_spine0_cai_pas(:,1),bAPinhibspine_spine0_cai_pas(:,2),'b');
plot(bAPinhibspine_spine1_cai_pas(:,1),bAPinhibspine_spine1_cai_pas(:,2),'r');
plot(bAPinhibspine_spine2_cai_pas(:,1),bAPinhibspine_spine2_cai_pas(:,2),'g');

plot(bAPinhibspine_dend_cai_act(:,1),bAPinhibspine_dend_cai_act(:,2),'k:');
plot(bAPinhibspine_spine0_cai_act(:,1),bAPinhibspine_spine0_cai_act(:,2),'b:');
plot(bAPinhibspine_spine1_cai_act(:,1),bAPinhibspine_spine1_cai_act(:,2),'r:');
plot(bAPinhibspine_spine2_cai_act(:,1),bAPinhibspine_spine2_cai_act(:,2),'g:');

figure
hold on
title('bAPinhibspine v')
plot(bAPinhibspine_dend_v_pas(:,1),bAPinhibspine_dend_v_pas(:,2),'k');
plot(bAPinhibspine_spine0_v_pas(:,1),bAPinhibspine_spine0_v_pas(:,2),'b');
plot(bAPinhibspine_spine1_v_pas(:,1),bAPinhibspine_spine1_v_pas(:,2),'r');
plot(bAPinhibspine_spine2_v_pas(:,1),bAPinhibspine_spine2_v_pas(:,2),'g');

plot(bAPinhibspine_dend_v_act(:,1),bAPinhibspine_dend_v_act(:,2),'k:');
plot(bAPinhibspine_spine0_v_act(:,1),bAPinhibspine_spine0_v_act(:,2),'b:');
plot(bAPinhibspine_spine1_v_act(:,1),bAPinhibspine_spine1_v_act(:,2),'r:');
plot(bAPinhibspine_spine2_v_act(:,1),bAPinhibspine_spine2_v_act(:,2),'g:');

axis([115 120 -80 20])

% for time step 0.05 the 1999th elements corresponds to t=99.9 ms
% let these be echoed on the command prompt to double check

prestimulus_time=99.9
prestimulus_index=1999

% the following checks that the prestimulus_index actually corresponds to
% the time 99.9 ms:
  if (dend_cai(prestimulus_index,1)!=99.9)
    disp(['error - prestimulus_index should return 99.9 however returns ' num2str(dend_cai(prestimulus_index,1))])
  endif
  cr=char(11); % carriage return

   Ca_peak_inhib = max(bAPinhibspine_spine1_cai_act(:,2));
   Ca_peak_ctrl  = max(bAP_spine1_cai_act(:,2));

psi=prestimulus_index; % more convenient to type

B=bAP_spine1_cai_pas(psi,2);
% baseline [Ca2+]i levels should all be the same:

disp(['baseline [Ca2+]i levels are all (hopefully) B = ' num2str(B)]);

% below when uncommented reveal that all the baseline
% Ca levels are B=1.0001e-04
%bAP_spine1_cai_pas(psi,2)
%bAPinhibdend_spine1_cai_pas(psi,2)
%bAPinhibspine_spine1_cai_pas(psi,2)
%inhibdend_spine1_cai_pas(psi,2)
%inhibspine_spine1_cai_pas(psi,2)
%
%bAP_spine1_cai_act(psi,2)
%bAPinhibdend_spine1_cai_act(psi,2)
%bAPinhibspine_spine1_cai_act(psi,2)
%inhibdend_spine1_cai_act(psi,2)
%inhibspine_spine1_cai_act(psi,2)
%
%bAP_spine0_cai_pas(psi,2)
%bAPinhibdend_spine0_cai_pas(psi,2)
%bAPinhibspine_spine0_cai_pas(psi,2)
%inhibdend_spine0_cai_pas(psi,2)
%inhibspine_spine0_cai_pas(psi,2)
%
%bAP_spine0_cai_act(psi,2)
%bAPinhibdend_spine0_cai_act(psi,2)
%bAPinhibspine_spine0_cai_act(psi,2)
%inhibdend_spine0_cai_act(psi,2)
%inhibspine_spine0_cai_act(psi,2)
%
%bAP_dend_cai_pas(psi,2)
%bAPinhibdend_dend_cai_pas(psi,2)
%bAPinhibspine_dend_cai_pas(psi,2)
%inhibdend_dend_cai_pas(psi,2)
%inhibspine_dend_cai_pas(psi,2)
%
%bAP_dend_cai_act(psi,2)
%bAPinhibdend_dend_cai_act(psi,2)
%bAPinhibspine_dend_cai_act(psi,2)
%inhibdend_dend_cai_act(psi,2)
%inhibspine_dend_cai_act(psi,2)
%

  disp(['note we are calculating ([Ca2+]peak,inh - B)/([Ca2+]peak,ctrl - B)'
'active spines'
'bAPspineinhib:  for inhibited spine :' ])
  Ca_peak_inh=max(bAPinhibspine_spine1_cai_act(:,2))
  Ca_peak_ctrl=max(bAP_spine1_cai_act(:,2))
  ratio_act=(Ca_peak_inh - B) / (Ca_peak_ctrl - B);
disp(num2str(ratio_act))

  Ca_peak_inh=max(bAPinhibspine_spine1_cai_pas(:,2))
  Ca_peak_ctrl=max(bAP_spine1_cai_pas(:,2))
  ratio_pas=(Ca_peak_inh - B) / (Ca_peak_ctrl - B);
disp(['passive spines ratio ' num2str(ratio_pas) cr])

  Ca_peak_inh=max(bAPinhibdend_dend_cai_pas(:,2))
  Ca_peak_ctrl=max(bAP_dend_cai_pas(:,2))
  ratio_pas=(Ca_peak_inh - B) / (Ca_peak_ctrl - B);
disp(['dendrite 10x inhib ratio (with passive spines) ' num2str(ratio_pas) cr])

  Ca_peak_inh=max(bAPinhibdend_dend_cai_act(:,2))
  Ca_peak_ctrl=max(bAP_dend_cai_act(:,2))
  ratio_pas=(Ca_peak_inh - B) / (Ca_peak_ctrl - B);
disp(['dendrite 10x inhib ratio (with active spines) ' num2str(ratio_pas) cr])

  Ca_peak_inh=max(bAP1xinhibdend_dend_cai_pas(:,2))
  Ca_peak_ctrl=max(bAP_dend_cai_pas(:,2))
  ratio_pas=(Ca_peak_inh - B) / (Ca_peak_ctrl - B);
disp(['dendrite 1x inhib ratio (with passive spines) ' num2str(ratio_pas) cr])

  Ca_peak_inh=max(bAP1xinhibdend_dend_cai_act(:,2))
  Ca_peak_ctrl=max(bAP_dend_cai_act(:,2))
  ratio_pas=(Ca_peak_inh - B) / (Ca_peak_ctrl - B);
disp(['dendrite 1x inhib ratio (with active spines) ' num2str(ratio_pas) cr])

