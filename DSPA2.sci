//define k
k = -5:20;

//diff value alpha
a1 = 1.2;
Xk1 = a1^k;

a2 = 0.7;
Xk2 = a2^k;

a3 = -0.9;
Xk3 = a3^k;

a4 = -1.1;
Xk4 = a4^k;

//create a subplot
clf;
subplot(2,2,1);
plot2d3(k,Xk1);
xtitle('alpha > 1');

subplot(2,2,2);
plot2d3(k,Xk2);
xtitle('0 < alpha < 1');

subplot(2,2,3);
plot2d3(k,Xk3);
xtitle('-1 < alpha < 0');

subplot(2,2,4);
plot2d3(k,Xk4);
xtitle('alpha < -1');
