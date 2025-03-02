# Note good-enough? versus not-changing? results for a small number

```scm
(rel-error (square (sqrt 1e-24)) 1e-24)
;Value: 9.765625000000001e20

(rel-error (square (sqrt-delta 1e-24)) 1e-24)
;Value: 2.0203809154758067e-15
```
