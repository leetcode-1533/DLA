% function list = generator(list,minrange,maxrange,point)
function list=generator
% clear all;

minrange = -30;
maxrange = 30;

seedx = fix(rand*(maxrange-minrange+1))+minrange;
seedy = fix(rand*(maxrange-minrange+1))+minrange;
seedz = fix(rand*(maxrange-minrange+1))+minrange;
% list = 
% point = 10;

% figure;
list=zeros(3000,3);
list(1,:)=[seedx,seedy,seedz];
for i = 2 : 3000
randxtemp = fix(rand*(maxrange-minrange+1))+minrange;
randytemp = fix(rand*(maxrange-minrange+1))+minrange;
randztemp = fix(rand*(maxrange-minrange+1))+minrange;
% hold on
% pback= plot3(list(:,1),list(:,2),list(:,3),'y.');
% pfront = plot3(randxtemp,randytemp,randztemp,'b*');
% axis([-10 10 -10 10 -10 10]);
while scaner(list,randxtemp,randytemp,randztemp)==false
    randxtemp = randxtemp + fix(rand*3) - 1;
    randytemp = randytemp + fix(rand*3) - 1;       
    randztemp = randztemp + fix(rand*3) - 1;  
%     plot3(randxtemp,randytemp,randztemp);  
    if randxtemp>maxrange
        randxtemp = minrange;
    end
    if randxtemp < minrange
        randxtemp = maxrange;
    end
    if randytemp > maxrange
        randytemp = minrange;
    end
    if randytemp<minrange
        randytemp = maxrange;
    end  
     if randztemp > maxrange
        randztemp = minrange;
    end
    if randztemp< minrange
        randztemp = maxrange;
    end 
%     set(pfront,'xdata',randxtemp);
%     set(pfront,'ydata',randytemp);
%     set(pfront,'zdata',randztemp);
%     drawnow;
end
list(i,:) = [randxtemp,randytemp,randztemp];
end

