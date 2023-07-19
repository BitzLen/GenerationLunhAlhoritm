clear
close all
clc

% ans=[1,0,3,2,7,2,2,2,6,4,1,6,5,8,9,2];
ans=0;
for i=1:1:16
    
    if i==16
        if mod(b,10)>0         a=10- mod(b,10);
        end
        if mod(b,10)==0        a=0;        
        end
        ans = [ans a];         b=sum(ans);
    else
        a=randi([0 9],1,1);
        ans = [ans a];
        b=sum(ans);
    end
end
b=sum(ans(1,2:end));
ans=ans(2:end);
k=1;
for i=1:2:length(ans)
    mass(k) = ans(i);
    
    if mod(mass(k),2)>0
        mass(k)=mass(k)+9;
        
    end
    mass(k)=mass(k)/2;
    k=k+1;
end
k=1;
result= zeros(1,16);
for i=1:1:length(result)/2
    result(k)=mass(i);
    result(k+1)=ans(k+1);
    k=k+2;
end
