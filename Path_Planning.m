r0 = [0,0];
rf = [3,2];
vc = [2,3];

[x1,y1,vx1,vy1,ax1,ay1,fx1,fy1] = start_to_const(0.2,r0,vc);
[x2,y2,vx2,vy2,ax2,ay2,fx2,fy2] = const(0.2,0.8,fx1,fy1,vc);
[x3,y3,vx3,vy3,ax3,ay3] = const_to_stop(0.8,1,fx2,fy2,vc,rf);

t1 = linspace(0,0.2,500);
t2 = linspace(0.2,0.8,500);
t3 = linspace(0.8,1,500);

figure(1);
subplot(2,1,1)
plot(t1,x1,t2,x2,t3,x3);
xlabel("Time");
ylabel("X");
title("Distance x vs Time");

subplot(2,1,2)
plot(t1,y1,t2,y2,t3,y3);
xlabel("Time");
ylabel("Y");
title("Distance y vs Time");

figure(2);
subplot(2,1,1)
plot(t1,vx1,t2,vx2,t3,vx3);
xlabel("Time");
ylabel("vx");
title("Velocity x vs Time");

subplot(2,1,2)
plot(t1,vy1,t2,vy2,t3,vy3);
xlabel("Time");
ylabel("vy");
title("Velocity y vs Time");

figure(3);
subplot(2,1,1)
plot(t1,ax1,t2,ax2,t3,ax3);
xlabel("Time");
ylabel("ax");
title("Acceleration x vs Time");

subplot(2,1,2)
plot(t1,ay1,t2,ay2,t3,ay3);
xlabel("Time");
ylabel("ay");
title("Acceleration y vs Time");