%3)
X = rand(1000,2000) < 0.3;
fX = mean(X);
hist(fX,20)

%4)
C = cov(x,y);
covariance = C(1,2);
figure
hold on
plot(x,'linewidth',3)
plot(y,'linewidth',3)
std_x = std(x);
std_y = std(y);
xcorrxy = xcorr(x,y);
figure
plot(xcorrxy,'linewidth',2)
corrcoefxy = corrcoef(x,y);
