clc
clear 
close all 

%##############################################################
%BACKGROUND = POISSON ~ MEAN 100
lambda = 100;
% scale = 200;
% x = (0:scale);
% signalfree = poisspdf(x,lambda);
% plot(x,signalfree,'linewidth',4,'color','magenta')
% grid on
% grid minor 
% xline(154,'--r','5-sigma');
% title('Simulated Poisson Background(mean = 100)')
% %##########################################################################
% %#5-sigma sensitivity threshold
% pnormcdf = normcdf(5);
% candidate_signal = poissinv(pnormcdf,lambda);
% %#######################################################################
% size = 100000;
% dasobserved = 110;
% obs(1:size) = dasobserved; 
% noise = poissrnd(lambda, 1, size);
% inject = obs - noise;
% hold on 
% histogram(inject,30,'Normalization','pdf')
% xlabel('Strength of Injected Signal')
% title('Injected signal pdf')
% [mean, std] = normfit(inject);
% a = -50:50;
% gauss = normpdf(a, mean, std);
% plot(a, gauss,'linewidth',4)
% norminv(0.95,mean, std)
% %#######################################################################
% format long 
% %injecting signal
% signalstrength = 193;
% % signalstrengthtwo = 220;
% ppoiss = poisscdf(signalstrength, lambda);
% norminv(ppoiss);
% sigsize = 300;
% bsize = 10000;
% rand = poissrnd(lambda,1,sigsize + bsize);
% signal(1:sigsize) = signalstrength;
% zero = zeros(1,bsize);
% whole = [zero,signal];
% obssignal = whole + rand;
% % ppoiss = poisscdf(signalstrengthtwo, lambda);
% % norminv(ppoiss)
% % % sigsize = 300;
% % % bsize = 10000;
% % % rand = poissrnd(lambda,1,sigsize + bsize);
% % % signal(1:sigsize) = signalstrengthtwo;
% % % zero = zeros(1,bsize);
% % % wholetwo = [zero,signal];
% % % obssignaltwo = wholetwo + rand;
% % % hold on
% histogram(obssignal,80)
% % % histogram(obssignaltwo,80)
% % % hold off
% % % legend('Injected signal strength = 193','Injected signal strength = 220');
% set(gca,'YScale','log')
% xlabel('Observed signal strength')
% ylabel('Log scale')
% title('Observation of many signals with strength = 193(8.2 sigma)')
% %#######################################################################
% pnormcdf = normcdf(1);
% eightsigma = poissinv(pnormcdf,lambda);
% size = 1000;
% noise = poissrnd(lambda, 1, size);
% sstrength = linspace(0, eightsigma, size);
% [X,injected]= meshgrid(sstrength);
% observed = noise + injected;
% figure;
% histogram2(injected, observed, 100,'DisplayStyle','tile','ShowEmptyBins','on');
% xlabel('Injected signal')
% ylabel('Observed signal')
% title('Confidence Intervals')
%#######################################################################
% size = 100000;
% dasobserved = 110;
% obs(1:size) = dasobserved; 
% noise = poissrnd(lambda, 1, size);
% inject = obs - noise;
% hold on 
% histogram(inject,30,'Normalization','pdf')
% xlabel('Strength of Injected Signal')
% title('Injected signal pdf')
% [mean, std] = normfit(inject);
% a = -50:50;
% gauss = normpdf(a, mean, std);
% plot(a, gauss,'linewidth',4)
% norminv(0.95,mean, std)
% 
% 
% histogram(inject,30,'Normalization','probability')
% set(gca,'YScale','log')
% xlabel('Strength of Injected Signal')
% title('Injected signal pdf')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% sigsize = 300;
% lambda = 100;
% size = 10000;
% noise = poissrnd(lambda,1,size);
% sstrength=linspace(0,sigsize,size);
% [null, signal]=meshgrid(sstrength);
% observed=noise+signal;
% dasobserved = 110;
% dasinjected=signal(abs(observed- dasobserved)< 10);
% hold on
% histogram(dasinjected,45,'Normalization','pdf');
% xlabel('Strength of Injected Signal')
% title('Injected Signal pdf')
% [mean, std] = normfit(dasinjected);
% a = 150:250;
% gauss = normpdf(a, mean, std);
% plot(a, gauss,'linewidth',4)
% count = hist(dasinjected,45);
% pcount = count./sum(count);
% sum = 0;
% for i = 1:26
%     sum = sum + pcount(i);
% end 
% sum;

%##########################################################################


