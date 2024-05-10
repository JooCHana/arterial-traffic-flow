%% 数据初始化
data0=initialization_data();
N = 100; % 车辆数量
L = 1000; % 路段长度（米）
V_max = 120/3.6; % 最大速度（米/秒）
dt = 1; % 时间步长（秒）
T = 3600; % 总仿真时间（秒）
road_positions = linspace(0, L, N); % 初始化车辆位置
road_speeds = V_max * ones(1, N); % 初始化车辆速度
vehicle_types = randi([1,2], 1, N); % 车辆类型，1为普通车，2为网联车
