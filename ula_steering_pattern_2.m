% Program in which wavelength and sensor distance are manually provided.

M = input('Enter number of sensors: ');
display('Enter the wavelength and sensors in same dimensional units');
d = input('Enter the spacing between the sensors: ');
lambda = input('Enter the wavelength: ');
steering_angle = input('Enter steering angle in degrees: ');

theta = -90:0.01:90; % Azimuth angle in degrees.
theta_polar = 0:0.01:2*pi; % Azimuth angle in radians.
fs = sind(theta); % Spatial frequency.

x = (d/lambda).*(sind(theta)-sind(steering_angle));
y = (d/lambda).*(sin(theta_polar)-sin(deg2rad(steering_angle)));

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