
% Number of sensors entered by the user will be stored in M.
M = input('Enter number of sensors: ');
steering_angle = input('Enter steering angle in degrees: ');
option = menu('Select the distance between sensors in terms of wavelength',...
    '2*Wavelength','Wavelength','Wavelength/2','Wavelength/4','Wavelength/8');

theta = -90:0.01:90; % Azimuth angle in degrees.
theta_polar = 0:0.01:2*pi; % Azimuth angle in radians.
fs = sind(theta); % Spatial frequency.

x = sind(theta)-sind(steering_angle);
y = sin(theta_polar)-sin(deg2rad(steering_angle));

if option == 1
B_cartesian = abs((1/M).*(sin(pi*M*2*x))./sin(pi*2*x));
figure(1);
plot(theta,B_cartesian,'-r','LineWidth',1);
xlim([-90 90]);
ylim([0 1]);
title('\bf Uniform Linear Array Beam Pattern');
ylabel('\bf Beam Pattern');
xlabel('\bf Azimuth Angle(\theta)');
legend('\bf M');
figure(2);
plot(fs,B_cartesian,'-r','LineWidth',1);
xlim([-1 1]);
ylim([0 1]);
title('\bf Uniform Linear Array Beam Pattern with Spatial Frequency');
ylabel('\bf Beam Pattern');
xlabel('\bf Spatial Frequency(fs)');
legend('\bf M');
figure(3);
B_polar = abs((1/M).*(sin(pi*M*2*y))./sin(pi*2*y));
polar(theta_polar, B_polar);
title('\bf Uniform Linear Array Beam Pattern in Polar Coordinates');
legend('\bf M');
end

if option == 2
B_cartesian = abs((1/M).*(sin(pi*M*x))./sin(pi*x));
figure(1);
plot(theta,B_cartesian,'-r','LineWidth',1);
xlim([-90 90]);
ylim([0 1]);
title('\bf Uniform Linear Array Beam Pattern');
ylabel('\bf Beam Pattern');
xlabel('\bf Azimuth Angle(\theta)');
legend('\bf M');
figure(2);
plot(fs,B_cartesian,'-r','LineWidth',1);
xlim([-1 1]);
ylim([0 1]);
title('\bf Uniform Linear Array Beam Pattern with Spatial Frequency');
ylabel('\bf Beam Pattern');
xlabel('\bf Spatial Frequency(fs)');
legend('\bf M');
figure(3);
B_polar = abs((1/M).*(sin(pi*M*y))./sin(pi*y));
polar(theta_polar, B_polar);
title('\bf Uniform Linear Array Beam Pattern in Polar Coordinates');
legend('\bf M');
end

if option == 3
B_cartesian = abs((1/M).*(sin(pi*M*x/2))./sin(pi*x/2));
figure(1);
plot(theta,B_cartesian,'-r','LineWidth',1);
xlim([-90 90]);
ylim([0 1]);
title('\bf Uniform Linear Array Beam Pattern');
ylabel('\bf Beam Pattern');
xlabel('\bf Azimuth Angle(\theta)');
legend('\bf M');
figure(2);
plot(fs,B_cartesian,'-r','LineWidth',1);
xlim([-1 1]);
ylim([0 1]);
title('\bf Uniform Linear Array Beam Pattern with Spatial Frequency');
ylabel('\bf Beam Pattern');
xlabel('\bf Spatial Frequency(fs)');
legend('\bf M');
figure(3);
B_polar = abs((1/M).*(sin(pi*M*y/2))./sin(pi*y/2));
polar(theta_polar, B_polar);
title('\bf Uniform Linear Array Beam Pattern in Polar Coordinates');
legend('\bf M');
end

if option == 4
B_cartesian = abs((1/M).*(sin(pi*M*x/4))./sin(pi*x/4));
figure(1);
plot(theta,B_cartesian,'-r','LineWidth',1);
xlim([-90 90]);
ylim([0 1]);
title('\bf Uniform Linear Array Beam Pattern');
ylabel('\bf Beam Pattern');
xlabel('\bf Azimuth Angle(\theta)');
legend('\bf M');
figure(2);
plot(fs,B_cartesian,'-r','LineWidth',1);
xlim([-1 1]);
ylim([0 1]);
title('\bf Uniform Linear Array Beam Pattern with Spatial Frequency');
ylabel('\bf Beam Pattern');
xlabel('\bf Spatial Frequency(fs)');
legend('\bf M');
figure(3);
B_polar = abs((1/M).*(sin(pi*M*y/4))./sin(pi*y/4));
polar(theta_polar, B_polar);
title('\bf Uniform Linear Array Beam Pattern in Polar Coordinates');
legend('\bf M');
end

if option == 5
B_cartesian = abs((1/M).*(sin(pi*M*x/8))./sin(pi*x/8));
figure(1);
plot(theta,B_cartesian,'-r','LineWidth',1);
xlim([-90 90]);
ylim([0 1]);
title('\bf Uniform Linear Array Beam Pattern');
ylabel('\bf Beam Pattern');
xlabel('\bf Azimuth Angle(\theta)');
legend('\bf M');
figure(2);
plot(fs,B_cartesian,'-r','LineWidth',1);
xlim([-1 1]);
ylim([0 1]);
title('\bf Uniform Linear Array Beam Pattern with Spatial Frequency');
ylabel('\bf Beam Pattern');
xlabel('\bf Spatial Frequency(fs)');
legend('\bf M');
figure(3);
B_polar = abs((1/M).*(sin(pi*M*y/8))./sin(pi*y/8));
polar(theta_polar, B_polar);
title('\bf Uniform Linear Array Beam Pattern in Polar Coordinates');
legend('\bf M');
end
