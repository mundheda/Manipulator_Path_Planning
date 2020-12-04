function [x,y,vx,vy,ax,ay,fx,fy] = const(ti,tf,ix,iy,vc)
    timelinespace = linspace(0.2,0.8,500);
    
    a0_x = vc(1);
    a0_y = vc(2);

    a1_x = ix - (a0_x * ti);
    a1_y = iy - (a0_y * ti);

    x = zeros(1,500);
    y = zeros(1,500);

    vx = zeros(1,500);
    vy = zeros(1,500);

    ax = zeros(1,500);
    ay = zeros(1,500);

    for i =  1 : 500

	t = timelinespace(i);

	x(i) = a0_x * t + a1_x;
	y(i) = a0_y * t + a1_y;

	vx(i) = a0_x;
	vy(i) = a0_y;

	ax(i) = 0;
	ay(i) = 0;
    
    fx = x(499);
    fy = y(499);
    
    end
end