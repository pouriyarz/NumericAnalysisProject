function [p,a,D]=Newton(x,f,s)
n=length(x);
D(:,1)=f';
for j=2:n
    for i=j:n
        D(i,j)=(D(i-1,j-1)-D(i,j-1))/(x(i-j+1)-x(i));
    end
end
a=diag(D);
p=a(n);
for j=n-1:-1:1
    p=p.*(s'-x(j))+a(j);
end

