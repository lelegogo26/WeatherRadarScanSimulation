function scan_rhi
scan8
direction = [0 0 1];
H1=get(gca,'Children');  
rotate(H1,direction,22.5, [0,0,0]);
scan8
end

function scan8
scan4
direction = [0 0 1];
H1=get(gca,'Children');  
rotate(H1,direction,22.5, [0,0,0]);
scan4
end

function  scan4
scan2
direction = [0 0 1];
H1=get(gca,'Children');  
rotate(H1,direction,90, [0,0,0]);
scan2
end

function scan2
    r = tan(0.4/180*pi);   %²¨Êø¿í¶È0.4
    h = 2;   %¾àÀë200km
    m = h/r;
    [R,A] = meshgrid(linspace(0,r,10),linspace(0,2*pi,40));
    X = R .* cos(A);
    Y = R .* sin(A);
    Z = m*R;
    mesh(X,Y,Z)
    hold on
    phi = -pi/3:0.005*pi:pi/3;
    for i=1:length(phi)
        X1 = X*cos(phi(i)) - Z*sin(phi(i));
        Y1 = Y;
        Z1 = X*sin(phi(i)) + Z*cos(phi(i));
        mesh(X1,Y1,Z1)
    end
end