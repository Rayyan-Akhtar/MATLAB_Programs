% MOHD RAYYAN AKHTAR
% Program in which sensor distance is given as fraction of wavelength.

M = input('Enter number of sensors: '); % Number of sensors entered by the user will be stored in M.

% GUI to select the spacing between sensors as a function of wavelength.
option = menu('Select the distance between sensors in terms of wavelength',...
    '2*Wavelength','Wavelength','Wavelength/2','Wavelength/4','Wavelength/8');

theta = -90:0.01:90; % Azimuth angle in degrees.
theta_polar = 0:0.01:2*pi; % Azimuth angle in radians.
fs = sind(theta); % Spatial frequency.

% Conditional Statements begin here.
if option == 1
B_cartesian = abs((1/M).*(sin(pi*M*2*sind(theta)))./sin(pi*2*sind(theta)));
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
B_polar = abs((1/M).*(sin(pi*M*2*sin(theta_polar)))./sin(pi*2*sin(theta_polar)));
polar(theta_polar, B_polar); % Plot the beam pattern in polar coordinates.
title('\bf Uniform Linear Array Beam Pattern in Polar Coordinates');
legend('\bf M');
end

if option == 2
B_cartesian = abs((1/M).*(sin(pi*M*sind(theta)))./sin(pi*sind(theta)));
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
B_polar = abs((1/M).*(sin(pi*M*sin(theta_polar)))./sin(pi*sin(theta_polar)));
polar(theta_polar, B_polar);
title('\bf Uniform Linear Array Beam Pattern in Polar Coordinates');
legend('\bf M');
end

if option == 3
B_cartesian = abs((1/M).*(sin(pi*M*sind(theta)/2))./sin(pi*sind(theta)/2));
figure(1);
plot(theta,B_cartesian,'-r','LineWidth',1);
xlim([-90 90]);
ylim([0 1]);
title('\bf Uniform Linear Array Beam Pattern');
ylabel('\bf Beam Pattern');
xlabel('\bf Azimuth Angle(\theta)');
legend('\bf M');
figure(2);
plot(fs,B_cartesian,'-k','LineWidth',1);
xlim([-1 1]);
ylim([0 1]);
title('\bf Uniform Linear Array Beam Pattern with Spatial Frequency');
ylabel('\bf Beam Pattern');
xlabel('\bf Spatial Frequency(fs)');
legend('\bf M');
figure(3);
B_polar = abs((1/M).*(sin(pi*M*sin(theta_polar)/2))./sin(pi*sin(theta_polar)/2));
polar(theta_polar, B_polar);
title('\bf Uniform Linear Array Beam Pattern in Polar Coordinates');
legend('\bf M');
end

if option == 4
B_cartesian = abs((1/M).*(sin(pi*M*sind(theta)/4))./sin(pi*sind(theta)/4));
figure(1);
plot(theta,B_cartesian,'-r','LineWidth',1);
xlim([-90 90]);
ylim([0 1]);
title('\bf Uniform Linear Array Beam Pattern');
ylabel('\bf Beam Pattern');
xlabel('\bf Azimuth Angle(\theta)');
legend('\bf M');
figure(2);
plot(fs,B_cartesian,'-k','LineWidth',1);
xlim([-1 1]);
ylim([0 1]);
title('\bf Uniform Linear Array Beam Pattern with Spatial Frequency');
ylabel('\bf Beam Pattern');
xlabel('\bf Spatial Frequency(fs)');
legend('\bf M');
figure(3);
B_polar = abs((1/M).*(sin(pi*M*sin(theta_polar)/4))./sin(pi*sin(theta_polar)/4));
polar(theta_polar, B_polar);
title('\bf Uniform Linear Array Beam Pattern in Polar Coordinates');
legend('\bf M');
end

if option == 5
B_cartesian = abs((1/M).*(sin(pi*M*sind(theta)/8))./sin(pi*sind(theta)/8));
figure(1);
plot(theta,B_cartesian,'-r','LineWidth',1);
xlim([-90 90]);
ylim([0 1]);
title('\bf Uniform Linear Array Beam Pattern');
ylabel('\bf Beam Pattern');
xlabel('\bf Azimuth Angle(\theta)');
legend('\bf M');
figure(2);
plot(fs,B_cartesian,'-k','LineWidth',1);
xlim([-1 1]);
ylim([0 1]);
title('\bf Uniform Linear Array Beam Pattern with Spatial Frequency');
ylabel('\bf Beam Pattern');
xlabel('\bf Spatial Frequency(fs)');
legend('\bf M');
figure(3);
B_polar = abs((1/M).*(sin(pi*M*sin(theta_polar)/8))./sin(pi*sin(theta_polar)/8));
polar(theta_polar, B_polar);
title('\bf Uniform Linear Array Beam Pattern in Polar Coordinates');
legend('\bf M');
end
