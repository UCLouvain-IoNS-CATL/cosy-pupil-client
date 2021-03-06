function pupil_check_timestamps(data)
	% PUPIL_CHECK_TIMESTAMPS Checks the Pupil timestamps to see if data is not missing.
	%
	% PUPIL_CHECK_TIMESTAMPS(data)
	%
	% 'data' must be a struct array as returned by pupil_parse_data().
	%
	% A warning is printed each time two consecutive timestamps are spaced by
	% more than 100 ms.
	%
	% 2016 - Sébastien Wilmet
	for i = 1 : (length(data) - 1)
		timestamp1 = data(i).timestamp;
		timestamp2 = data(i+1).timestamp;
		if (timestamp1 == -1) | (timestamp2 == -1)
			continue;
		end

		% We must have data at at least 10 Hz.
		if (timestamp2 - timestamp1) > 0.1
			warning(['Consecutive timestamps ', num2str(timestamp1), ' and ', num2str(timestamp2), ': more than 100ms of difference.']);
		end
	end
end
