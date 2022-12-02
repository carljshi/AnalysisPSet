load('kcs.mat')
load('trace.mat')
%Q1
%a)
pconnection = mean(J,'all');
%b)
conns=sum(J,2);
cdf_conns = [];
k = [0:10];
for i = k
    cdf_conns(i+1) = mean(conns<=i);
end
%figure
%plot(k,cdf_conns,'k','LineWidth',3)
%c)
%hold on
binocdf_conns = binocdf(k,length(J),pconnection);
%plot(binocdf_conns,'Linewidth',3)
%binomial distribution is not a good model for this data

%Q2
%a)
cov_trace = cov(trace);
corrcoef_trace = corrcoef(trace);
figure
heatmap(cov_trace);
colormap(jet)
figure
heatmap(corrcoef_trace);
colormap(jet)

%b)
ztrace = zscore(trace);
covztrace = cov(ztrace);
corrcoefztrace = corrcoef(ztrace);
figure
heatmap(covztrace);
colormap(jet)
figure
heatmap(corrcoefztrace);
colormap(jet)
%after z scoring, covariance plot is normalized and similar to the
%correlation coefficient plot.

%c)
%number of distinct pairs will be (N*(N-1))/2
N = 35*34/2;
paircov = findpairs(corrcoef_trace);
figure
hist(paircov)

function [paircov] = findpairs(cov)
paircov = [];
for i = 2:length(cov)
    %(1,1) is not a unique pair, and we'll go down each row
    digtemp = [1:(i-1)];
    paircov = [paircov;cov(digtemp,i)];
end
paircov = paircov';

end

