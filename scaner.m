function locked = scaner(a,x,y,z)

[use,less] =size(a);
for i = 1 : use
    xtemp = a(i,1);
    ytemp = a(i,2);
    ztemp = a(i,3);
    xlocked = abs(xtemp-x);
    ylocked = abs(ytemp-y);
    zlocked = abs(ztemp-z);
    xlocked = xlocked==1|xlocked==0;
    ylocked = ylocked==1|ylocked==0;
    zlocked = zlocked==1|zlocked==0;   
    locked= xlocked&ylocked&zlocked;
    if locked ==true
        return
    end

end
