bot sub [cat, number_feature].
    cat sub [has_number, det, p, s, nprp].
        has_number sub [n, v, np, vp] intro [number:number_feature].
    number_feature sub [sg, pl].

fido ---> nprp.
biscuits ---> (n, number:pl).
feed ---> (v, number:pl).
feeds ---> (v, number:sg).
the ---> det.
dog ---> (n, number:sg).
puppies ---> (n, number:pl).
with ---> p.

v_np__vp rule
    (vp, number:Number) ===>
    cat> (v, number:Number),
    cat> n.

p_n__pp rule
    pp ===>
    cat> p,
    cat> n.

nprp__np rule
    (np, number:sg) ===>
    cat> nprp.

n__np rule
    (np, number:pl) ===>
    cat> (n, number:pl).

n_pp__np rule
    (np, number:pl) ===>
    cat> (n, number:pl),
    cat> pp.

det_n__np rule
    (np, number:Number) ===>
    cat> det,
    cat> (n, number:Number).

det_n_pp__np rule
    (np, number:Number) ===>
    cat> det,
    cat> (n, number:Number),
    cat> pp.

np_vp__s rule
    s ===>
    cat> (np, number:Number),
    cat> (vp, number:Number).