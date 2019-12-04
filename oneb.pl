bot sub [cat, number_feature].
    cat sub [has_number, det, p, pp, s].
        has_number sub [n, v, np, vp] intro [number:number_feature].
    number_feature sub [sg, pl, special].

fido ---> (np, number:special).
biscuits ---> (n, number:pl).
feed ---> (v, number:pl).
feeds ---> (v, number:(sg, special)).
the ---> det.
dog ---> (n, number:sg).
puppies ---> (n, number:pl).
with ---> p.

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

