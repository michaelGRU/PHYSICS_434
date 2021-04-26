clc
clear
close all 
%dont run everything at once, it will kill your computer
%I used several mlx files to write the lab report 
%please lemme know if you want the mlx file of a particular section
%this section can be confusing 
%dont uncomment everything at once.i have warned u young grasshoppers
%%%%%%%%%%%%%%%%%%%%%%%%%%import%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% higgs = h5read("higgs_100000_pt_250_500.h5",'/higgs_100000_pt_250_500');
% qcd = h5read("qcd_100000_pt_250_500.h5",'/qcd_100000_pt_250_500');
% mass = round(higgs(4,:),4);
% qmass = round(qcd(4,:),4);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%do math ,delete later





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%rescale%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% [histfre,histx] = hist(mass,50);
% normalize_counts = normalize(histfre,'range',[0 48]);
% [qhistfre,qhistx] = hist(qmass,50);
% qnormalize_counts = normalize(qhistfre,'range',[0 1561]);
% check_expectedHiggs = sum(normalize_counts);% check~ 100, the expected Higgs
% check_expectedQcd= sum(qnormalize_counts);% check~ 20000, the expected Qcd
% 
% % subplot(1,2,1)
% % hold on 
% % bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% % bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% % hold off
% % subplot(1,2,2)
% hold on 
% bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% set(gca,'yscale','log')
% bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% set(gca,'yscale','log')
% hold off
% title('cut applied at 120 and 130 (rescaled)')
% %title('Higgs and QCD background Invariant Mass comparison(rescaled)') 
% xlabel('Invariant Mass')
% legend('QCD background','Higgs')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure
% hold on 
% histogram(qmass,50,'facecolor','black','facealpha',0.3)
% 
% histogram(mass,'facecolor',[0 1 0],'facealpha',0.7)
% 
% 
% xline(mode(mass),':r','peak','color','r','linewidth',1);
% title('Higgs and QCD background Invariant Mass comparison') 
% xlabel('Invariant Mass')
% legend('QCD background','Higgs','peak = 125')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%cutlin%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hold on 
% histogram(qmass,50,'facecolor','black','facealpha',0.3,'normalization','probability')
% histogram(mass,'facecolor',[0 1 0],'facealpha',0.7,'normalization','probability')
% title('QCD vs Higgs') 
% xlabel('Invariant Mass')
% xline(130,':r','cut','color','r','linewidth',1);
% xline(122,':r','cut','color','r','linewidth',1);
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%cutlog%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hold on
% histogram(qmass,50,'facecolor','black','facealpha',0.3,'normalization','probability')
% set(gca,'yscale','log')
% histogram(mass,'facecolor',[0 1 0],'facealpha',0.7,'normalization','probability')
% set(gca,'yscale','log')
% xline(130,':r','cut','color','r','linewidth',1);
% xline(122,':r','cut','color','r','linewidth',1);
% title('QCD vs Higgs') 
% xlabel('Invariant Mass')
% hold off
%%%%%%%%%%%%%%%%%%poisson; doesnt fit so well%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% qcd = h5read("qcd_100000_pt_250_500.h5",'/qcd_100000_pt_250_500');
% qmassrescale = round(qcd(4,:),4);
% lambda = 118;
% x = 0:300;
% poiss = poisspdf(x,lambda);
% hold on
% histogram(qmassrescale,'normalization','probability');
% plot(x,poiss);
% 
% 
% candidatesig = mode(mass); %125
% probab = poisscdf(candidatesig,lambda); %118
% norminv(probab)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%cool bean bgd%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% histogram(qmass,50,'facecolor','black','facealpha',0.3,'normalization','probability')
% title('QCD background Invariant Mass') 
% xlabel('Invariant Mass')
% xline(mode(mass),'--r','candidate signal','color','magenta','linewidth',2);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%20%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% [count] = histcounts(qmass,50);
% prob = count./sum(count);
% addnext = 0;
% for i = 1:18
%     addnext = addnext + prob(i);
% end 
% addnext;
% sigma = norminv(addnext);
%%%%%%%%%%%%%%%%%%%%%%%%%%%cool bean cut%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%;
% higgskeepdata = []; 
% qcdkeepdata = [];
% for i= 1:length(mass)
%     if mass(i) >= 120 && mass(i) <=130
%     higgskeepdata = [higgskeepdata, mass(i)];
%     end
% end  
% for i= 1:length(qmass)
%     if qmass(i) >= 120 && qmass(i) <=130
%     qcdkeepdata = [qcdkeepdata, qmass(i)];
%     end
% end 
% format short 
% probability_keep_higgs = length(higgskeepdata)/length(mass);
% probability_keep_qcd = length(qcdkeepdata)/length(qmass);
% newNhiggs= 100* probability_keep_higgs;
% newNqcd = 20000*probability_keep_qcd;
% newsignif = newNhiggs/sqrt(newNqcd)
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%after cut%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hold on 
% histogram(qcdkeepdata,50,'facecolor','black','facealpha',0.3,'normalization','probability')
%histogram(higgskeepdata,'facecolor',[0 1 0],'facealpha',0.7,'normalization','probability')
%set(gca,'yscale','log')
% title('QCD background(thresholds:122,130') 
% xlabel('Invariant Mass')
% xline(130,':r','cut','color','r','linewidth',1);
% xline(122,':r','cut','color','r','linewidth',1);
% legend('QCD background')
%%%%%%%%%%%%%%%%%%%%%%%%%play with this  to get others%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% tautwoone = round(higgs(12,:),4);
% qtautwoone= round(qcd(12,:),4);
% [histfre,~] = hist(tautwoone,50);
% normalize_counts = normalize(histfre,'range',[0 5.5]);
% [qhistfre,~] = hist(qtautwoone,50);
% qnormalize_counts = normalize(qhistfre,'range',[0 820]);
% check_expectedHiggs = sum(normalize_counts);% check~ 100, the expected Higgs
% check_expectedQcd= sum(qnormalize_counts);% check~ 20000, the expected Qcd
% [acounts,abound] = histcounts(tautwoone,50);
% an = numel(acounts);
% asetMean = mean(diff(abound))/2;
% axval = abound(1:an) + asetMean;
% [bcounts,bbound] = histcounts(qtautwoone,50);
% bn = numel(bcounts);
% bsetMean = mean(diff(bbound))/2;
% bxval = bbound(1:bn) + bsetMean;
% subplot(1,2,1)
% hold on 
% bar(bxval, qnormalize_counts,'facecolor','black','facealpha',0.3)
% bar(axval, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% legend('QCD background','Higgs')
% xlabel('tau21')
% subplot(1,2,2)
% hold on 
% bar(bxval, qnormalize_counts,'facecolor','black','facealpha',0.3)
% set(gca,'yscale','log')
% bar(axval, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% set(gca,'yscale','log')
% legend('QCD background','Higgs')
% xlabel('tau21')
% hold off
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%






%let there be dragon here








%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%old code%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% tautwoone = round(higgs(12,:),4);
% qtaytwoone= round(qcd(12,:),4);
% [histfre,histx] = hist(tautwoone,50);
% normalize_counts = normalize(histfre,'range',[0 5.5]);
% [qhistfre,qhistx] = hist(qtaytwoone,50);
% qnormalize_counts = normalize(qhistfre,'range',[0 820]);
% check_expectedHiggs = sum(normalize_counts);% check~ 100, the expected Higgs
% check_expectedQcd= sum(qnormalize_counts);% check~ 20000, the expected Qcd
% subplot(1,2,1)
% hold on 
% bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% legend('QCD background','Higgs')
% xlabel('tau21')
% subplot(1,2,2)
% hold on 
% bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% set(gca,'yscale','log')
% bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% set(gca,'yscale','log')
% legend('QCD background','Higgs')
% xlabel('tau21')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure;
% eetwo = round(higgs(5,:),4);
% qeetwo= round(qcd(5,:),4);
% [histfre,histx] = hist(eetwo,50);
% normalize_counts = normalize(histfre,'range',[0 12]);
% [qhistfre,qhistx] = hist(qeetwo,50);
% qnormalize_counts = normalize(qhistfre,'range',[0 1975]);
% check_expectedHiggs = sum(normalize_counts);% check~ 100, the expected Higgs
% check_expectedQcd= sum(qnormalize_counts);% check~ 20000, the expected Qcd
% subplot(1,2,1)
% hold on 
% bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% legend('QCD background','Higgs')
% xlabel('ee2')
% subplot(1,2,2)
% hold on 
% bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% set(gca,'yscale','log')
% bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% set(gca,'yscale','log')
% legend('QCD background','Higgs')
% xlabel('ee2')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure;
% dtwo = round(higgs(7,:),4);
% qdtwo= round(qcd(7,:),4);
% [histfre,histx] = hist(dtwo,50);
% normalize_counts = normalize(histfre,'range',[0 38]);
% [qhistfre,qhistx] = hist(qdtwo,50);
% qnormalize_counts = normalize(qhistfre,'range',[0 5650]);
% check_expectedHiggs = sum(normalize_counts);% check~ 100, the expected Higgs
% check_expectedQcd= sum(qnormalize_counts);% check~ 20000, the expected Qcd
% subplot(1,2,1)
% hold on 
% bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% legend('QCD background','Higgs')
% xlabel('d2')
% subplot(1,2,2)
% hold on 
% bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% set(gca,'yscale','log')
% bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% set(gca,'yscale','log')
% legend('QCD background','Higgs')
% xlabel('d2')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure;
% ang = round(higgs(8,:),4);
% qang= round(qcd(8,:),4);
% [histfre,histx] = hist(ang,50);
% normalize_counts = normalize(histfre,'range',[0 24.5]);
% [qhistfre,qhistx] = hist(qang,50);
% qnormalize_counts = normalize(qhistfre,'range',[0 6250]);
% check_expectedHiggs = sum(normalize_counts);% check~ 100, the expected Higgs
% check_expectedQcd= sum(qnormalize_counts);% check~ 20000, the expected Qcd
% subplot(1,2,1)
% hold on 
% bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% legend('QCD background','Higgs')
% xlabel('angularity')
% subplot(1,2,2)
% hold on 
% bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% set(gca,'yscale','log')
% bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% set(gca,'yscale','log')
% legend('QCD background','Higgs')
% xlabel('angularity')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% mass = higgs(4,:);tau_21 = higgs(12,:);ee_2 = higgs(5,:);d_2 = higgs(7,:);
% angularity = higgs(8,:);
% qmass = qcd(4,:);qtau_21 = qcd(12,:);qee_2 = qcd(5,:);qd_2 = qcd(7,:);
% qangularity = qcd(8,:);
% hkeepmass= [];hkeeptau_21 = [];hkeepee_2 = [];hkeepd_2 = [];hkeepang = [];
% qkeepmass= [];qkeeptau_21 = [];qkeepee_2 = [];qkeepd_2 = [];qkeepang = [];
% for i= 1:length(higgs)
%     if mass(i) >= 124 && mass(i) <= 127
%     hkeepmass = [hkeepmass, mass(i)];
%     hkeeptau_21 = [hkeeptau_21, tau_21(i)];
%     hkeepee_2 = [hkeepee_2, ee_2(i)];
%     hkeepd_2 = [hkeepd_2, d_2(i)];
%     hkeepang = [hkeepang, angularity(i)];
%     end
% end  
% for i= 1:length(qcd)
%     if qmass(i) >= 124 && qmass(i) <=127
%     qkeepmass = [qkeepmass, qmass(i)];
%     qkeeptau_21 = [qkeeptau_21, qtau_21(i)];
%     qkeepee_2 = [qkeepee_2, qee_2(i)];
%     qkeepd_2 = [qkeepd_2, qd_2(i)];
%     qkeepang = [qkeepang, qangularity(i)];
%     end
% end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure;
% [histfre,histx] = hist(hkeeptau_21,50);
% normalize_counts = normalize(histfre,'range',[0 7]);
% [qhistfre,qhistx] = hist(qkeeptau_21,50);
% qnormalize_counts = normalize(qhistfre,'range',[0 1170]);
% check_expectedHiggs = sum(normalize_counts);% check~ 100, the expected Higgs
% check_expectedQcd= sum(qnormalize_counts);% check~ 20000, the expected Qcd
% subplot(1,2,1)
% hold on 
% bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% legend('QCD background','Higgs')
% xlabel('tau21')
% subplot(1,2,2)
% hold on 
% bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% set(gca,'yscale','log')
% bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% set(gca,'yscale','log')
% legend('QCD background','Higgs')
% xlabel('tau21')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure;
% [histfre,histx] = hist(hkeepee_2,50);
% normalize_counts = normalize(histfre,'range',[0 12]);
% [qhistfre,qhistx] = hist(qkeepee_2,50);
% qnormalize_counts = normalize(qhistfre,'range',[0 1180]);
% check_expectedHiggs = sum(normalize_counts);% check~ 100, the expected Higgs
% check_expectedQcd= sum(qnormalize_counts);% check~ 20000, the expected Qcd
% subplot(1,2,1)
% hold on 
% bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% legend('QCD background','Higgs')
% xlabel('ee2')
% subplot(1,2,2)
% hold on 
% bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% set(gca,'yscale','log')
% bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% set(gca,'yscale','log')
% legend('QCD background','Higgs')
% xlabel('ee2')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure;
% [histfre,histx] = hist(hkeepd_2,50);
% normalize_counts = normalize(histfre,'range',[0 8.5]);
% [qhistfre,qhistx] = hist(qkeepd_2,50);
% qnormalize_counts = normalize(qhistfre,'range',[0 1702]);
% check_expectedHiggs = sum(normalize_counts);% check~ 100, the expected Higgs
% check_expectedQcd= sum(qnormalize_counts);% check~ 20000, the expected Qcd
% subplot(1,2,1)
% hold on 
% bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% legend('QCD background','Higgs')
% xlabel('d2')
% subplot(1,2,2)
% hold on 
% bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% set(gca,'yscale','log')
% bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% set(gca,'yscale','log')
% legend('QCD background','Higgs')
% xlabel('d2')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure;
% [histfre,histx] = hist(hkeepang,50);
% normalize_counts = normalize(histfre,'range',[0 15]);
% [qhistfre,qhistx] = hist(qkeepang,50);
% qnormalize_counts = normalize(qhistfre,'range',[0 3470]);
% check_expectedHiggs = sum(normalize_counts);% check~ 100, the expected Higgs
% check_expectedQcd= sum(qnormalize_counts);% check~ 20000, the expected Qcd
% subplot(1,2,1)
% hold on 
% bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% legend('QCD background','Higgs')
% xlabel('angularity')
% subplot(1,2,2)
% hold on 
% bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% set(gca,'yscale','log')
% bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% set(gca,'yscale','log')
% legend('QCD background','Higgs')
% xlabel('angularity')
% hold off 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure;
% [histfre,histx] = hist(hkeepd_2,50);
% normalize_counts = normalize(histfre,'range',[0 8.5]);
% [qhistfre,qhistx] = hist(qkeepd_2,50);
% qnormalize_counts = normalize(qhistfre,'range',[0 1702]);
% check_expectedHiggs = sum(normalize_counts);% check~ 100, the expected Higgs
% check_expectedQcd= sum(qnormalize_counts);% check~ 20000, the expected Qcd
% hold on 
% bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% set(gca,'yscale','log')
% bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% set(gca,'yscale','log')
% legend('QCD background','Higgs')
% title('d2 (rescaled)(after the global cut)')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure;
% [histfre,histx] = hist(hkeepmass,50);
% normalize_counts = normalize(histfre,'range',[0 10.8]);
% [qhistfre,qhistx] = hist(qkeepmass,50);
% qnormalize_counts = normalize(qhistfre,'range',[0 1081]);
% check_expectedHiggs = sum(normalize_counts);% check~ 100, the expected Higgs
% check_expectedQcd= sum(qnormalize_counts);% check~ 20000, the expected Qcd
% hold on 
% bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% set(gca,'yscale','log')
% bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% set(gca,'yscale','log')
% legend('QCD background','Higgs')
% title('mass (rescaled)(after the global cut)')
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% mass = higgs(4,:);tau_21 = higgs(12,:);ee_2 = higgs(5,:);d_2 = higgs(7,:);
% angularity = higgs(8,:);
% qmass = qcd(4,:);qtau_21 = qcd(12,:);qee_2 = qcd(5,:);qd_2 = qcd(7,:);
% qangularity = qcd(8,:);
% hkeepmass= [];hkeeptau_21 = [];hkeepee_2 = [];hkeepd_2 = [];hkeepang = [];
% qkeepmass= [];qkeeptau_21 = [];qkeepee_2 = [];qkeepd_2 = [];qkeepang = [];
% for i= 1:length(higgs)
%     if mass(i) >= 124 && mass(i) <= 127
%     hkeepmass = [hkeepmass, mass(i)];
%     hkeeptau_21 = [hkeeptau_21, tau_21(i)];
%     hkeepee_2 = [hkeepee_2, ee_2(i)];
%     hkeepd_2 = [hkeepd_2, d_2(i)];
%     hkeepang = [hkeepang, angularity(i)];
%     end
% end  
% for i= 1:length(qcd)
%     if qmass(i) >= 124 && qmass(i) <=127
%     qkeepmass = [qkeepmass, qmass(i)];
%     qkeeptau_21 = [qkeeptau_21, qtau_21(i)];
%     qkeepee_2 = [qkeepee_2, qee_2(i)];
%     qkeepd_2 = [qkeepd_2, qd_2(i)];
%     qkeepang = [qkeepang, qangularity(i)];
%     end
% end
% figure;
% [histfre,histx] = hist(hkeepd_2,50);
% normalize_counts = normalize(histfre,'range',[0 8.5]);
% [qhistfre,qhistx] = hist(qkeepd_2,50);
% qnormalize_counts = normalize(qhistfre,'range',[0 1702]);
% check_expectedHiggs = sum(normalize_counts);% check~ 100, the expected Higgs
% check_expectedQcd= sum(qnormalize_counts);% check~ 20000, the expected Qcd
% hold on 
% bar(qhistx, qnormalize_counts,'facecolor','black','facealpha',0.3)
% set(gca,'yscale','log')
% bar(histx, normalize_counts,'facecolor',[0 1 0],'facealpha',0.7)
% set(gca,'yscale','log')
% legend('QCD background','Higgs')
% title('d2 (rescaled)(after the global cut)')
% hold off
% 
% n=2;
% higgskeepdata = []; 
% qcdkeepdata = [];
% for i= 1:length(hkeepd_2)
%     if hkeepd_2(i) >= 0 && hkeepd_2(i) <= n
%     higgskeepdata = [higgskeepdata, hkeepd_2(i)];
%     end
% end  
% for i= 1:length(qkeepd_2)
%     if qkeepd_2(i) >= 0 && qkeepd_2(i) <=n
%     qcdkeepdata = [qcdkeepdata, qkeepd_2(i)];
%     end
% end 
% format short 
% probability_keep_higgs = length(higgskeepdata)/length(hkeepd_2);
% probability_keep_qcd = length(qcdkeepdata)/length(qkeepd_2);
% %number adjusted after the first cut based on mass
% newNhiggs= 75.8470 * probability_keep_higgs;
% newNqcd = 980.2 *probability_keep_qcd;
% newsignif = newNhiggs/sqrt(newNqcd);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % n = 100000/100;
% % nq = 100000/20000;
% % rqmass = qmass(1:nq:end);
% % rqdtwo = qdtwo(1:nq:end);
% % rmass = mass(1:n:end);
% % rdtwo = dtwo(1:n:end);
% % countqcd = 0;
% % for i = 1:20000
% % if rqmass(i)> 124 && rqmass(i)< 127 && rqdtwo(i) < 1.5 && rqdtwo(i) > 0
% %     countqcd = countqcd + 1;
% % end 
% % end 
% % countqcd;
% % counthiggs = 0;
% % for i = 1:100
% %     if rmass(i)>124 && rmass(i) < 127 && rdtwo(i) < 1.5 && rqdtwo(i) > 0
% %         counthiggs = counthiggs + 1;
% %     end 
% % end 
% % counthiggs;
% % significant = counthiggs/sqrt(countqcd)
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % clc;clear;close all 
% % higgs = h5read("higgs_100000_pt_250_500.h5",'/higgs_100000_pt_250_500');
% % qcd = h5read("qcd_100000_pt_250_500.h5",'/qcd_100000_pt_250_500');
% % %High lumi data
% % hata = h5read("data_highLumi_pt_250_500.h5",'/data/block0_values');
% % mass = higgs(4,:); qmass = qcd(4,:); hmass = hata(4,:);
% % [qcounts,qbound] = histcounts(qmass,50); qn = numel(qcounts);
% % qsetMean = mean(diff(qbound))/2; qxval = qbound(1:qn) + qsetMean;
% % qnormalize_counts = normalize(qcounts,'range',[0 3145]);
% % check_expectedQcd= sum(qnormalize_counts);[counts,bound] = histcounts(mass,50);
% % n = numel(counts);setMean = mean(diff(bound))/2; xval = bound(1:n) + setMean;
% % normalize_counts = normalize(counts,'range',[0 95]); check_expectedHiggs= sum(normalize_counts);
% % hold on 
% % bar(qxval,qnormalize_counts,'facecolor',[0.9290 0.6940 0.1250],'facealpha',0.8)
% % histogram(hmass,50,'facecolor','blue','facealpha',0.9)
% % bar(xval,normalize_counts,'facecolor',[0 1 0],'facealpha',0.9)
% % xlabel('Invariant Mass')
% % legend('Expected QCD','Observed','Expected Signal')
% % title('Comparison without event selection')
% % hold off 
% hkeepdata = []; 
% qcdkeepdata = [];
% ohkeepdata = [];
% for i= 1:length(mass)
%     if mass(i) >= 124 && mass(i) <=127
%     hkeepdata = [hkeepdata, mass(i)];
%     end
% end  
% for i= 1:length(qmass)
%     if qmass(i) >= 124 && qmass(i) <=127
%     qcdkeepdata = [qcdkeepdata, qmass(i)];
%     end
% end
% for i= 1:length(hmass)
%     if hmass(i) >= 124 && hmass(i) <=127
%     ohkeepdata = [ohkeepdata, hmass(i)];
%     end
% end
% newratio = length(hkeepdata)/length(qcdkeepdata); 
% length(ohkeepdata);
% ac_nQcd = length(ohkeepdata)*newratio/(1 + newratio); 
% nnHiggs = ac_nQcd/newratio;
% [qcounts,qbound] = histcounts(qcdkeepdata,50); qn = numel(qcounts);
% qsetMean = mean(diff(qbound))/2; qxval = qbound(1:qn) + qsetMean;
% qnormalize_counts = normalize(qcounts,'range',[0 36.7]);
% check_expectedQcd= sum(qnormalize_counts);
% [counts,bound] = histcounts(hkeepdata,50);
% n = numel(counts);setMean = mean(diff(bound))/2; xval = bound(1:n) + setMean;
% normalize_counts = normalize(counts,'range',[0 2.1]);
% check_expectedHiggs= sum(normalize_counts);
% figure;
% hold on 
% bar(qxval,qnormalize_counts,'facecolor',[0.9290 0.6940 0.1250],'facealpha',0.8)
% set(gca,'yscale','log')
% histogram(ohkeepdata,50,'facecolor','blue','facealpha',0.9)
% set(gca,'yscale','log')
% bar(xval,normalize_counts,'facecolor',[0 1 0],'facealpha',0.9)
% set(gca,'yscale','log')
% xlabel('Invariant Mass')
% legend('Expected QCD','Observed','Expected Signal')
% title('After a cut at 124 and 127 GeV')
% hold off 
