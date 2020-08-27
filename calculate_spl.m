function spl = calculate_spl(y,ref)

% calculates spl of y, ref is the reference pressure level (assummed
% 0.000002)

%{
 created by marc brennan in Jan of 2010
updates -
05/2011 - added reference pressure level
%}

if nargin < 2
    ref = 0.000002;
end

Pr = .000002; % reference pressure
y_in_rms = sqrt(sum(y.^2)/length(y));
spl = 20*log10(y_in_rms/ref);

end