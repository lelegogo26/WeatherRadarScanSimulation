draw(15,45,1.5)
draw(45,75,3)

     
function draw(Ang1,Ang2,scal)  
    len = (Ang2-Ang1)/scal;
    for i=1:len
        drawscan_ppi(i*scal+Ang1,10.4);
    end
end

function drawscan_ppi(angle,h)
    r = tan(0.4/180*pi);   %²¨Êø¿í¶È0.4
    m = h/r*sin(angle/180*pi);
    [R,A] = meshgrid(linspace(0,r,10),linspace(0,2*pi,40));
    X = m*R .* cos(A)./tan(angle/180*pi);
    Y = m*R .* sin(A)./tan(angle/180*pi);
    Z = m*R;
    phi = 0:0.01*pi:2*pi;
    for i=1:length(phi)
        X1 = (X*cos(phi(i)) - Y*sin(phi(i)));
        Y1 = (X*sin(phi(i)) + Y*cos(phi(i))) ;
        Z1 = Z;
        mesh(X1,Y1,Z1);
        hold on
    end
end