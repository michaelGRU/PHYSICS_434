p1 = normcdf(1);
p2 = normcdf(2);
p3 = normcdf(3);
norminv(p1);
norminv(p2);
norminv(p3);
%%Gaussian 
a = linspace(-5,5,1000);
gauss = normpdf(a);
figure;
plot(a,gauss);
title('Normal distribution')
%%chi2 distribution 
x = linspace(0,30,100000);
chi2 = makedist("Gamma",'a',4,'b',2.); 
figure;
subplot(1,1,1)
plot(x,pdf(chi2,x),'Color',[0,0,0]);
title('Chi-squared distribution');
grid on
grid minor
%%chi2 with 3 dof 
x = 0:0.0001:10;
dof = 3; % degrees of freedom
test = 7.1;
y = chi2pdf(x,dof);
figure;
plot(x,y,'Color',[0,0,0]);
xline(7.1,'--r',{'test statistics = 7.1'});
grid on
grid minor
%%sol
p = 1 - chi2cdf(test,dof);

%%Poisson
x = 0:10;
poisson = makedist("Poisson", 'lambda',3); 
subplot(2,2,1)
stairs(x-0.5,pdf(poisson,x),"LineWidth",5);
grid on
grid minor
title('0< X <10');
%Poisson with a wider set of x
x = 0:20;
poisson = makedist("Poisson", 'lambda',3); 
subplot(2,2,2)
stairs(x-0.5,pdf(poisson,x),"LineWidth",5);
grid on
grid minor
title('0< X <20');
%Compute and plot the pdf of a Poisson distribution with parameter lambda 
lambda = 2;
x = 0:20;
y = poisspdf(x,lambda);
subplot(2,2,3)
bar(x,y);
title('lambda = 2');
grid on
grid minor
%Poisson with a different lambda 
lambda1 = 12;
x = 0:20;
y = poisspdf(x,lambda1);
subplot(2,2,4)
bar(x,y);
title('lambda = 12');
grid on
grid minor
ans = poisspdf(4,lambda);
