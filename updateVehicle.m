% 定义车辆行为函数
function [new_speed, new_position] = updateVehicle(speed, position, V_max, dt, L, type)
    if type == 1 % 普通车
        acceleration = -2 + 4 * rand(); % 随机加速度
    else % 网联车
        acceleration = 0.5; % 更平稳的加速度
    end
    new_speed = max(0, min(V_max, speed + acceleration * dt)); % 更新速度
    new_position = mod(position + new_speed * dt, L); % 更新位置，假设环形道路
end