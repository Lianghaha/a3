% Name: Jialiang Zhang, Login ID: zhan2890, Student ID: 1002674073.

bot sub [cat, number_feature].
    cat sub [has_number, det, p, pp, s].
        has_number sub [n, v, np, vp] intro [number:number_feature].
    number_feature sub [sg, pl].


v_np__vp rule
    (vp, number:Number) ===>
    cat> (v, number:Number),
    cat> np.

p_np__pp rule
    pp ===>
    cat> p,
    cat> np.

n__np rule
    (np, number:pl) ===>
    cat> (n, number:pl).

det_n__np rule
    (np, number:Number) ===>
    cat> det,
    cat> (n, number:Number).

det_n_pp__np rule
    (np, number:Number) ===>
    cat> det,
    cat> (n, number:Number),
    cat> pp.

n_pp__np rule
    (np, number:pl) ===>
    cat> (n, number:pl),
    cat> pp.

np_vp__s rule
    s ===>
    cat> (np, number:Number),
    cat> (vp, number:Number).

biscuits ---> (n, number:pl).
dog ---> (n, number:sg).
feed ---> (v, number:pl).
feeds ---> (v, number:sg).
fido ---> (np, number:sg).
puppies ---> (n, number:pl).
the ---> det.
with ---> p.