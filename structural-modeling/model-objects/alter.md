# alter #
> Expand or reduce number of parameter variants in model object
 
__Syntax__
 
    M = alter(M, N)
 
 
__Input arguments__
 
* `M` [ model ] - Model object in which the number of parameter variants
will be changed.
 
* `N` [ numeric ] - New number of model variants.
 
 
__Output arguments__
 
* `M` [ model ] - Model object with the new number of variants.
 
 
__Description__
 
If the new number of parameter variants, `N`, is greater than the current
number of parameter variants in the model object, `M`, the last parameter
variant (including solution matrices, if available) is copied an
appropriate number of times.
 
If the new number of parameter variants, `N`, is smaller than the current
number of parameter variants in the model object, `M`, an appropriate
number of parameter variants is deleted from the end.
 
 
__Example__

