% Name: Jialiang Zhang, Login ID: zhan2890, Student ID: 1002674073.

% Correct:

test_sent([fido,feeds,the,dog,with,biscuits]).

% Pluras should be able to form NP with/without Det
test_sent([fido,feeds,the,dog,with,the,biscuits]).

% Plura NP with plural verb
test_sent([biscuits,feed,the,dog,with,biscuits]).

% Sigular N forms NP with Det 
test_sent([the,dog,feeds,the,dog,with,biscuits]).

% NP works without PP
test_sent([the,dog,feeds,the,dog]).
test_sent([the,dog,feeds,biscuits]).




% Incorrect:

% NPRP should form S with singular VP
test_sent([fido,feed,the,dog,with,biscuits]).

% Singular NP should form S with singular VP
test_sent([the,dog,feed,the,dog,with,biscuits]).

% Singular N needs Det to form NP
test_sent([fido,feeds,dog,with,biscuits]).
test_sent([dog,feeds,the,dog,with,biscuits]).

% NPRP cannot form NP with Det
test_sent([the,fido,feeds,the,dog,with,biscuits]).