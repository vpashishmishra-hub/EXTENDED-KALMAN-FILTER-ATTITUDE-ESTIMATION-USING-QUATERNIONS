function R = quat2rotmat(q0, qx, qy, qz)
    % Quaternion (scalar first) to rotation matrix
    % Same convention as your euler2quaternion (ZYX)
    R = [1 - 2*(qy^2 + qz^2),   2*(qx*qy - q0*qz),     2*(qx*qz + q0*qy);
         2*(qx*qy + q0*qz),     1 - 2*(qx^2 + qz^2),   2*(qy*qz - q0*qx);
         2*(qx*qz - q0*qy),     2*(qy*qz + q0*qx),     1 - 2*(qx^2 + qy^2)];
end