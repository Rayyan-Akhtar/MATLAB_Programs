%Program in which all the parameters are inserted manually.

M = input('Enter the number of sensors: ');
display('Enter the value of wavelength and spacing in dimensional units');
d = input('Enter the value of spacing between sensors: ');
lambda = input('Enter the wavelenth of the signal: ');

angle = -90:0.01:90; % Azimuth angle in degrees.
angle_polar = 0:0.01:2*pi; % Azimuth angle in radians.
fs  = (d./lambda).*sind(angle); % spatial frequency

sum = 0;
for m = ((-M-1)/2):1:((M-1)/2)
    sum = sum + ((cos((pi*m)./M)).^2);
end
C2 = 1/sum;

n=1;
for theta = -90:0.01:90
    
    sum = 0;
    for m = ((-M-1)/2):1:((M-1)/2)
    sum = sum + ((cos((pi*m)./M)).^2).*exp(2*pi*m*(d./lambda)*sind(theta)*1i);
    end
    B(n) = sum.*C2;
    n=n+1;

end
figure(1);
plot(angle,abs(B),'-r','LineWidth',1);
title('\bf Hann Weighting Beam Pattern');
xlabel('\bf \theta');
ylabel('\bf Beam Pattern');
xlim([-90 90]);
ylim([0 1]);
legend(sprintf('M=%d',M));
figure(2);
D = 10*log(abs(B));
plot(fs,D,'-k','LineWidth',1);
title('\bf Beam Pattern with spatial frequency');
xlabel('Spatial Frequency (fs)');
ylabel('Beam Pattern(dB)');

%% changing limit for spatial frequency.
if d/lambda == 2
    xlim([-2 2]);
end
if d/lambda == 1 
    xlim([-1 1]);
end
if d/lambda == 0.5
    xlim([-0.5 0.5]);
end
if d/lambda == 0.25
    xlim([-0.25 0.25]);
end
if d/lambda == 0.125
    xlim([-0.25 0.25]);
end
%%
ylim([-80 0]);
legend(sprintf('M=%d',M));