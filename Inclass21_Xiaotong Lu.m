%In class 21

% 1. Consider the system we discussed in class for a gene which is produced
% and degraded: dx/dt = k - d*x. Now consider that this gene turns on a
% second gene y, which also degrades so that its equation is 
% dy/dt = k2*x - d2*y. Choose some values for k,d,k2, and d2 and run a
% numerical simulation of this system for the case where both genes start
% out off ( x(0) = 0 and y(0) = 0). Plot the value of x and y in time and 
% explain your results. 
k=1;d=1;
k2=2;d=2;
%dx/dt=1-x;
%dy/dt=2x-2y;
dt=0.01;
interval=[0 10];
nstep=(interval(2)-interval(1))/dt;
sol1(1)=0;
sol2(1)=0;
for ii=2:nstep
    sol1(ii)=sol1(ii-1)+rhs1(sol1(ii-1))*dt;
    sol2(ii)=sol2(ii-1)+rhs2(sol1(ii-1),sol2(ii-1))*dt;
end
figure(1);
tt=linspace(interval(1),interval(2),nstep);
plot(tt,sol1,'g.-');
figure(2);
plot(tt,sol2,'r.-');


comment:the slope is related to the number of d. When d increases, the slope will increase, too.
the maxmium value of the curve is determined by k. When k grows up, the maximum value which can be reached when the curve is 
parallel to the x-axis will grow up correspondingly.

% 2. Consider the following model: 
% dx/dt = y
% dy/dt = (1-x^2)*y - x
% write code that simulates this system for several different starting
% values of x and y. Plot the results and comment on them. 
dt2=0.01;
interval2=[0 10];
nstep2=(interval2(2)-interval2(1))/dt2;
sol3(1)=0;
sol4(1)=0;
for ii=2:nstep2
    sol3(ii)=sol3(ii-1)+rhs3(sol4(ii-1))*dt2;
    sol4(ii)=sol4(ii-1)+rhs4(sol3(ii-1),sol4(ii-1))*dt2;
end
figure(3);
tt2=linspace(interval2(1),interval2(2),nstep2);
plot(tt2,sol3,'g.-');
figure(4);
plot(tt2,sol4,'r.-');

dt2=0.01;
interval2=[0 10];
nstep2=(interval2(2)-interval2(1))/dt2;
sol3(1)=1;
sol4(1)=1;
for ii=2:nstep2
    sol3(ii)=sol3(ii-1)+rhs3(sol4(ii-1))*dt2;
    sol4(ii)=sol4(ii-1)+rhs4(sol3(ii-1),sol4(ii-1))*dt2;
end
figure(5);
tt2=linspace(interval2(1),interval2(2),nstep2);
plot(tt2,sol3,'g.-');
figure(6);
plot(tt2,sol4,'r.-');


dt2=0.01;
interval2=[0 10];
nstep2=(interval2(2)-interval2(1))/dt2;
sol3(1)=2;
sol4(1)=2;
for ii=2:nstep2
    sol3(ii)=sol3(ii-1)+rhs3(sol4(ii-1))*dt2;
    sol4(ii)=sol4(ii-1)+rhs4(sol3(ii-1),sol4(ii-1))*dt2;
end
figure(7);
tt2=linspace(interval2(1),interval2(2),nstep2);
plot(tt2,sol3,'g.-');
figure(8);
plot(tt2,sol4,'r.-');

dt2=0.01;
interval2=[0 10];
nstep2=(interval2(2)-interval2(1))/dt2;
sol3(1)=5;
sol4(1)=5;
for ii=2:nstep2
    sol3(ii)=sol3(ii-1)+rhs3(sol4(ii-1))*dt2;
    sol4(ii)=sol4(ii-1)+rhs4(sol3(ii-1),sol4(ii-1))*dt2;
end
figure(9);
tt2=linspace(interval2(1),interval2(2),nstep2);
plot(tt2,sol3,'g.-');
figure(10);
plot(tt2,sol4,'r.-');

Comment: When the starting value increase, the first peak and first bottom of the curve seem to be moved forward to right side of x-axis. 
And the maximum value of the curve will increase corresponding to the increasing of staring point value.
