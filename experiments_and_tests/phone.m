clear;clc;
load v2Kobe.txt;
Hour=v2Kobe(:,3);
Minute=v2Kobe(:,4);
Second=v2Kobe(:,5);
dx=v2Kobe(:,6);
dy=v2Kobe(:,7);
%accz=acc5(:,9);
interval=datenum(0,0,0,Hour,Minute,Second);

figure;
dx1=dx(1:200);
dx2=mean(dx1);
dx3=dx-dx2;
dx4=dx3*0.5;
plot(interval,dx4,'k');
x=interval;
datetick('x','HH:MM:SS');
set(gca,'FontName','Times New Roman','FontSize',10);
set(gcf,'color','w');
xlabel('Time','fontsize',10);
ylabel('Displacement(mm)','fontsize',10);
grid on;

% figure;
% plot(interval,accy,'k');
% title('t-accy','fontsize',25);
% xlabel('time','fontsize',25);
% ylabel('acc(g)','fontsize',25);
% x=interval;
% datetick('x','HH:MM:SS');
% set(gca,'FontName','FontSize',25);
% grid on;

% figure;
% plot(interval,accz,'k');
% title('t-accz','fontsize',25);
% xlabel('time','fontsize',25);
% ylabel('acc(g)','fontsize',25);
% x=interval;
% datetick('x','HH:MM:SS');
% set(gca,'FontName','Times New Roman','FontSize',25);
% grid on;