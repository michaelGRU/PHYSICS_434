clc
clear 
close all
%for the plots, uncomment one at a time to show
%plots are divided by %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%import 
% h5disp("higgs_100000_pt_250_500.h5");
% h5disp("qcd_100000_pt_250_500.h5");
higgs = h5read("higgs_100000_pt_250_500.h5",'/higgs_100000_pt_250_500');
qcd = h5read("qcd_100000_pt_250_500.h5",'/qcd_100000_pt_250_500');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%test bin  
b = 50;
b1 = 20;
b2 = 200;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%HIGGS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%‘pt' 
pt = higgs(1,:);
%'eta'
eta = higgs(2,:);
%'phi'
phi = higgs(3,:);
%'mass'
mass = higgs (4,:);
%'ee2'
eetwo = higgs (5,:);
%'ee3'
eethree = higgs (6,:);
%'d2'
dtwo = higgs(7,:);
%'angularity'
angularity = higgs (8,:);
%'t1'
tone = higgs(9,:);
%'t2'
ttwo = higgs(10,:);
%'t3'
tthree = higgs(11,:);
%'t21'
ttwoone = higgs(12,:);
%'t32'
tthreetwo = higgs(13,:);
%'KtDeltaR'
ktdeltar = higgs(14,:);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%QCD%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%‘pt' 
qpt = qcd(1,:);
%'eta'
qeta = qcd(2,:);
%'phi'
qphi = qcd(3,:);
%'mass'
qmass = qcd (4,:);
%'ee2'
qeetwo = qcd (5,:);
%'ee3'
qeethree = qcd (6,:);
%'d2'
qdtwo = qcd(7,:);
%'angularity'
qangularity = qcd (8,:);
%'t1'
qtone = qcd(9,:);
%'t2'
qttwo = qcd(10,:);
%'t3'
qtthree = qcd(11,:);
%'t21'
qttwoone = qcd(12,:);
%'t32'
qtthreetwo = qcd(13,:);
%'KtDeltaR'
qktdeltar = qcd(14,:);
%%%%%%%%%%%%%%%%%%%%%%%Invariant Mass%%%%%%%%%%%%%%%%%%%%%%%
% hold on
% histogram(mass);
% histogram(qmass);
% legend('Higgs', 'QCD background')
% title('Higgs and QCD background Invariant Mass comparison') 
% xlabel('Invariant Mass')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hold on
% histogram(mass,b2,'Normalization','probability','DisplayStyle', 'stairs');
% set(gca,'YScale','log')
% histogram(qmass,b2,'Normalization','probability','DisplayStyle', 'stairs');
% xlim([100,140]);
% ylim([0, 1]);
% set(gca,'YScale','log')
% legend('Higgs', 'QCD background','location','northwest')
% title('Higgs and QCD background Invariant Mass comparison(log)') 
% xlabel('Invariant Mass(GeV)')
% ylabel('normalized')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%pT%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hold on
% histogram(pt);
% histogram(qpt);
% legend('Higgs', 'QCD background','location','northwest')
% title('Higgs and QCD background Transverse Momentum comparison') 
% xlabel('Transverse Momentum')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hold on
% histogram(pt);
% set(gca,'YScale','log')
% histogram(qpt);
% set(gca,'YScale','log')
% legend('Higgs', 'QCD background','location','northwest')
% title('Higgs and QCD background Transverse Momentum comparison(log)') 
% xlabel('Transverse Momentum')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%eta%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hold on
% histogram(eta,b);
% histogram(qeta,b);
% legend('Higgs', 'QCD background')
% title('Higgs and QCD background Eta comparison') 
% xlabel('Eta')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hold on
% histogram(eta,b);
% set(gca,'YScale','log')
% histogram(qeta,b);
% set(gca,'YScale','log')
% legend('Higgs', 'QCD background')
% title('Higgs and QCD background Eta comparison(log)') 
% xlabel('Eta')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%phi%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% subplot(2,1,1)
% histogram(phi);
% title('Higgs Azimuthal Angle') 
% xlabel('Azimuthal Angle')
% subplot(2,1,2)
% histogram(qphi);
% title('QCD background Azimuthal Angle') 
% xlabel('Azimuthal Angle')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ee2%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% subplot(1,2,1)
% hold on
% histogram(eetwo,'Normalization','probability','DisplayStyle', 'stairs');
% histogram(qeetwo,'Normalization','probability','DisplayStyle', 'stairs');
% xline(0.11,'--r','0.11');
% legend('Higgs', 'QCD background')
% title('Higgs and QCD background 2-point ECF ratio comparison') 
% xlabel('2-point ECF ratio')
% ylabel('normalized')
% hold off
% subplot(1,2,2)
% hold on
% histogram(eetwo,'DisplayStyle', 'stairs','Normalization','probability');
% set(gca,'YScale','log')
% histogram(qeetwo,'DisplayStyle', 'stairs','Normalization','probability');
% set(gca,'YScale','log')
% xline(0.11,'--r','0.11');
% legend('Higgs', 'QCD background')
% title('Higgs and QCD background 2-point ECF ratio comparison(log)') 
% xlabel('2-point ECF ratio')
% ylabel('normalized')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%ee3%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hold on
% histogram(eethree,b1);
% histogram(qeethree,b1);
% legend('Higgs', 'QCD background')
% title('Higgs and QCD background 3-point ECF ratio comparison') 
% xlabel('3-point ECF ratio')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hold on
% histogram(eethree,b1);
% set(gca,'YScale','log')
% histogram(qeethree,b1);
% set(gca,'YScale','log')
% legend('Higgs', 'QCD background')
% title('Higgs and QCD background 3-point ECF ratio comparison(log)')
% xlabel('3-point ECF ratio')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%d2%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hold on
% histogram(dtwo,'Normalization','probability','DisplayStyle', 'stairs');
% histogram(qdtwo,'Normalization','probability','DisplayStyle', 'stairs');
% legend('Higgs', 'QCD background')
% title('Higgs and QCD background 3 to 2-point ECF ratio comparison') 
% xlabel('3 to 2-point ECF ratio')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hold on
% histogram(dtwo,'Normalization','probability','DisplayStyle', 'stairs');
% set(gca,'YScale','log')
% histogram(qdtwo,'Normalization','probability','DisplayStyle', 'stairs');
% set(gca,'YScale','log')
% legend('Higgs', 'QCD background')
% title('Higgs and QCD background 3 to 2-point ECF ratio comparison(log)') 
% xlabel('3 to 2-point ECF ratio')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%angularity%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hold on
% histogram(angularity,b);
% histogram(qangularity,b);
% legend('Higgs', 'QCD background')
% title('Higgs and QCD background Angularity comparison') 
% xlabel('Angularity')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hold on
% histogram(angularity,'Normalization','probability','DisplayStyle', 'stairs');
% set(gca,'YScale','log')
% histogram(qangularity,'Normalization','probability','DisplayStyle', 'stairs');
% set(gca,'YScale','log')
% legend('Higgs', 'QCD background')
% title('Higgs and QCD background Angularity comparison(log)') 
% xlabel('Angularity')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%subjettiness%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% subplot(3,2,1)
% hold on
% histogram(tone,b);
% histogram(qtone,b);
% legend('Higgs', 'QCD background')
% title('t1') 
% hold off
% subplot(3,2,2)
% hold on
% histogram(ttwo,b);
% histogram(qttwo,b);
% legend('Higgs', 'QCD background')
% title('t2') 
% hold off
% subplot(3,2,3)
% hold on
% histogram(tthree,b);
% histogram(qtthree,b);
% legend('Higgs', 'QCD background')
% title('t3') 
% hold off
% subplot(3,2,4)
% hold on
% histogram(ttwoone,b);
% histogram(qttwoone,b);
% legend('Higgs', 'QCD background')
% title('t21') 
% hold off
% subplot(3,2,5)
% hold on
% histogram(tthreetwo,b);
% histogram(qtthreetwo,b);
% legend('Higgs', 'QCD background','location','northwest')
% title('t32') 
% hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hold on
% histogram(ktdeltar,'DisplayStyle', 'stairs','Normalization','probability');
% histogram(qktdeltar,'DisplayStyle', 'stairs','Normalization','probability');
% legend('Higgs', 'QCD background')
% xline(0.03,'--r','0.03');
% xline(0.51,'--r','0.51');
% title('Higgs and QCD background Kt delta R comparison') 
% xlabel('Kt delta R')
% ylabel('normalized')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hold on
% histogram(ktdeltar);
% set(gca,'YScale','log')
% histogram(qktdeltar);
% set(gca,'YScale','log')
% legend('Higgs', 'QCD background')
% title('Higgs and QCD background Kt delta R comparison(log)') 
% xlabel('Kt delta R')
% hold off

% hold on
% scatter(qmass,qpt)
% scatter(mass,pt);
% legend('QCD', 'Higgs')
% title('Transverse Momentum vs Invariant Mass') 
% ylabel('Transverse Momentum(pt)')
% xlabel('Invariant Mass(m)')
% hold off
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% subplot(3,2,1)
% hold on
% scatter(qmass,qtone)
% scatter(mass,tone);
% legend('QCD', 'Higgs')
% title('Subjettiness vs Invariant Mass') 
% ylabel('Subjettiness(tau 1)')
% xlabel('Invariant Mass(m)')
% hold off 
% subplot(3,2,2)
% hold on 
% scatter(qmass,qttwo)
% scatter(mass,ttwo);
% legend('QCD', 'Higgs') 
% ylabel('Subjettiness(tau 2)')
% xlabel('Invariant Mass(m)')
% hold off
% subplot(3,2,3)
% hold on 
% scatter(qmass,qtthree)
% scatter(mass,tthree);
% legend('QCD', 'Higgs') 
% ylabel('Subjettiness(tau 3)')
% xlabel('Invariant Mass(m)')
% hold off
% subplot(3,2,4)
% hold on 
% scatter(qmass,qttwoone)
% scatter(mass,ttwoone);
% legend('QCD', 'Higgs') 
% ylabel('Subjettiness(tau 21)')
% xlabel('Invariant Mass(m)')
% hold off
% subplot(3,2,5)
% hold on 
% scatter(qmass,qtthreetwo)
% scatter(mass,tthreetwo);
% legend('QCD', 'Higgs') 
% ylabel('Subjettiness(tau 32)')
% xlabel('Invariant Mass(m)')
% hold off

% subplot(2,1,1)
% hold on
% scatter(qtone, qeetwo)
% scatter(tone, eetwo)
% title('2-point ECF ratio vs subjettiness(tau 1)')
% yline(0.3,'--r','e2 = 0.3');
% legend('QCD', 'Higgs') 
% ylabel('2-point ECF ratio')
% xlabel('Subjettiness(tau 1)')
% hold off 
% subplot(2,1,2)
% hold on
% scatter(qtone, qeethree)
% scatter(tone, eethree)
% title('3-point ECF ratio vs subjettiness(tau 1)')
% yline(0.03,'--r','e3 = 0.03');
% legend('QCD', 'Higgs') 
% ylabel('3-point ECF ratio')
% xlabel('Subjettiness(tau 1)')
% hold off 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hold on
% scatter(qeetwo, qeethree)
% scatter(eetwo, eethree)
% title('e3 vs e2')
% legend('QCD', 'Higgs') 
% ylabel('e3')
% xlabel('e2')
% hold off 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure;
% hold on
% histogram(ttwoone,b,'DisplayStyle', 'stairs');
% histogram(qttwoone,b,'DisplayStyle', 'stairs');
% xline(0.47,'--r','0.47');
% xlabel('tau 2/ tau 1 ratio')
% legend('Higgs', 'QCD background')
% title('Subjettiness(tau 2:1)') 
% hold off



