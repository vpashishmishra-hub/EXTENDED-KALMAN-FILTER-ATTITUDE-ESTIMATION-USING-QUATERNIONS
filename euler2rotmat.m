function R = euler2rotmat(yaw, pitch, roll)
    cy = cos(yaw); sy = sin(yaw);
    cp = cos(pitch); sp = sin(pitch);
    cr = cos(roll); sr = sin(roll);
    R = [cy*cp,  cy*sp*sr - sy*cr,  cy*sp*cr + sy*sr;
         sy*cp,  sy*sp*sr + cy*cr,  sy*sp*cr - cy*sr;
         -sp,    cp*sr,              cp*cr];
end