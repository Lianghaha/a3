% Name: Jialiang Zhang, Login ID: zhan2890, Student ID: 1002674073.

test_sent([nadia,won,an,elephant]).
test_sent([i,could,have,demanded,a,rutabaga]).
test_sent([autopoiesis,always,reminded,her,of],fails).

good:
rec[fido,feeds,the,dog,with,biscuits]
rec[fido,feeds,the,dog,with,the,biscuits]
rec[biscuits,feed,the,dog,with,biscuits]
rec[the,dog,feeds,the,dog,with,biscuits]


wrong:
rec[fido,feed,the,dog,with,biscuits]
rec[fido,feed,dog,with,biscuits]
rec[dog,feed,the,dog,with,biscuits]
rec[the,fido,feeds,the,dog,with,biscuits]