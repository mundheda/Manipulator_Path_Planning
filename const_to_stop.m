function [x,y,vx,vy,ax,ay] = const_to_stop(ti,tf,ix,iy,vc,rf)
    timelinespace = linspace(0.8,1,500);
    
    a3_x = ix;
    a3_y = iy;
    
    a2_x = vc(1); 
    a2_y = vc(2);
    
    t1 = tf - ti;
    
    dx = rf(1) - ix;
    dy = rf(2) - iy;
    
    a1_x = (3 * dx - (2 * a2_x * t1)) / (t1 * t1);
    a1_y = (3 * dy - (2 * a2_y * t1)) / (t1 * t1);
    
    a0_x = (a2_x*t1 - 2 * dx) / (t1 * t1 * t1);
    a0_y = (a2_y*t1 - 2 * dy) / (t1 * t1 * t1);

    x = zeros(1,500);
    y = zeros(1,500);

    vx = zeros(1,500);
    vy = zeros(1,500);

    ax = zeros(1,500);
    ay = zeros(1,500);

    for i = 1 : 500

    	t = timelinespace(i);
    	t = t - ti;

    	x(i) = a0_x * t * t * t + a1_x * t * t + a2_x * t + a3_x;
    	y(i) = a0_y * t * t * t + a1_y * t * t + a2_y * t + a3_y;

    	vx(i) = 3 * a0_x * t * t + 2 * a1_x *t + a2_x;
    	vy(i) = 3 * a0_y * t * t + 2 * a1_y *t + a2_y;

    	ax(i) = 6 * a0_x * t + 2 * a1_x;
    	ay(i) = 6 * a0_y * t + 2 * a1_y;
        
    end
end