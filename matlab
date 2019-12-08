a=input('Enter the data in [x;y] form: ')
x=a(1,:);
y=a(2,:);
if length(x)>= 11
  l=10;
else
  l=length(x)-1;
end
  n=zeros(1,l);
for i =1:l
  f=polyfit(x,y,i);
  v=polyval(f,x);
  n(i)=norm(y-v);
end
[~,I]=min(n);
coeff=polyfit(x,y,I);
fprintf('These are the best fit coeffients: \n');
disp(coeff)
