function metricOut = compputeTimingMetric(input,Preamble)
% compute a timing metric from input samples and preamble (column vectors)

bkLen = length(input);
metricOut = abs((input'*Preamble))^2;         % use cross correlation between r(t) and PN(t), out = (1/N)sum_t r(t)^* x PN(t)
% However, this metic may not be robust towards PHN... Should try to use
% differential PNSeq.
end