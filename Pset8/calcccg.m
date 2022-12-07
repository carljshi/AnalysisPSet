function[out] = calcccg(s1,s2,Nlag,dt)
%calculates a cross-correlation function for the two spike trains s1, and
%s2 (which are vectors of 0s and 1s). Nlag is the number of time bins to
%the left and right of 0 to include. dt is the time binning of the spike 
%trains (in seconds). Output is a 2*Nlag+1 vector in units of Hz.
    T = dt * length(s1);
    out = xcorr(s1,s2,Nlag)/T;
end