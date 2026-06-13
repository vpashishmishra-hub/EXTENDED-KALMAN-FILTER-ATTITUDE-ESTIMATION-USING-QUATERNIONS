function[q0,qx,qy,qz] = euler2quaternion(yaw,pitch,roll)

N=length(yaw);

q0 = zeros(1, N);
qx = zeros(1, N);
qy = zeros(1, N);
qz = zeros(1, N);


for i = 1:N
    r = roll(i)/2;
    p = pitch(i)/2;
    y = yaw(i)/2;

    q0(1,i) = cos(r)*cos(p)*cos(y) + sin(r)*sin(p)*sin(y);  % qw
    qx(1,i) = sin(r)*cos(p)*cos(y) - cos(r)*sin(p)*sin(y);  % qx
    qy(1,i) = cos(r)*sin(p)*cos(y) + sin(r)*cos(p)*sin(y);  % qy
    qz(1,i) = cos(r)*cos(p)*sin(y) - sin(r)*sin(p)*cos(y);  % qz
end


end
