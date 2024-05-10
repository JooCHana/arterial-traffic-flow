% 初始化参数
data0=initialization_data();

% 仿真循环
for t = 0:dt:T
    for i = 1:N
        [road_speeds(i), road_positions(i)] = updateVehicle(road_speeds(i), road_positions(i), V_max, dt, L, vehicle_types(i));
    end
    
    % 可以在这里添加更多的逻辑，如交通信号控制、换道行为等
    
    % 绘图更新车辆位置
    scatter(road_positions, zeros(1, N), 36, vehicle_types, 'filled'); % 使用不同颜色表示不同类型的车
    xlim([0 L]);
    title(sprintf('Time: %d seconds', t));
    pause(0.01);
end
