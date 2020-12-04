function [x,y,vx,vy,ax,ay,fx,fy] = start_to_const(tf,r0,vc)
    timelinespace = linspace(0,0.2,500);
    
    a2_x = r0(1);
    a2_y = r0(2);
    
    a0_x = vc(1) / (2 * tf);
    a0_y = vc(2) / (2 * tf);
    
    x = zeros(1,500);
    y = zeros(1,500);

    vx = zeros(1,500);
    vy = zeros(1,500);
    
    ax = zeros(1,500);
    ay = zeros(1,500);
    
    for i = 1 : 500
        t = timelinespace(i);
        
        x(i) = a0_x * t * t + a2_x;
    	y(i) = a0_y * t * t + a2_y;
    	
    	vx(i) = 2 * a0_x * t;
    	vy(i) = 2 * a0_y * t;
    
    	ax(i) = 2 * a0_x;
    	ay(i) = 2 * a0_y;
    end
    fx = x(499);
    fy = y(499);
    
end