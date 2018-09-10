% MOHD RAYYAN AKHTAR
% Program in which wavelength and sensor distance are manually provided.

% Number of sensors entered by the user will be stored in M.
M = input('Enter number of sensors: '); 
display('Enter the wavelength and sensors in same dimensional units');
d = input('Enter the spacing of sensors: ');
lambda = input('Enter the wavelength of signal: ');

theta = -90:0.01:90; % Azimuth angle in degrees.
theta_polar = 0:0.01:2*pi; % Azimuth angle in radians.
fs = sind(theta); % Spatial frequency.

B_cartesian = abs((1/M).*(sin(pi*M*d*(sind(theta))/lambda))./sin(pi*d*(sind(theta))/lambda));
figure(1);
plot(theta,B_cartesian,'-r','LineWidth',1); % Plot the beam pattern in cartesian coordinates.
xlim([-90 90]);
ylim([0 1]);
title('\bf Uniform Linear Array Beam Pattern');
ylabel('\bf Beam Pattern');
xlabel('\bf Azimuth Angle(\theta)');
legend('\bf M');
figure(2);
plot(fs,B_cartesian,'-r','LineWidth',1); % Plot the beam pattern in cartesian coordinates with spatial frequency.
xlim([-1 1]);
ylim([0 1]);
title('\bf Uniform Linear Array Beam Pattern with Spatial Frequency');
ylabel('\bf Beam Pattern');
xlabel('\bf Spatial Frequency(fs)');
legend('\bf M');
figure(3);
B_polar = abs((1/M).*(sin(pi*M*d*(sin(theta_polar))/lambda))./sin(pi*d*(sin(theta_polar))/lambda));
polar(theta_polar, B_polar); % Plot the beam pattern in polar coordinates.
title('\bf Uniform Linear Array Beam Pattern in Polar Coordinates');
legend('\bf M');
