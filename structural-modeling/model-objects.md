# Model Objects #
 
Model objects (objects of class `Model`) are created from a model file.
Model files are written in [IRIS Model File Language](Model-File-Language.md). After a model
object is created in the Matlab workspace, you can combine model
functions and standard Matlab functions to work with it in your own
m-files (scripts, functions, etc.): assign or estimate model parameters,
run model simulations, calculate its stochastic properties, etc.
 
 
Model methods:
 
## Summary of Model Functions by Category ##
 
### Constructor ###

  Function Name | Brief Description
----------------|--------------------
  [`Model`](#Model)                      | Create Model object from source model files
 
 
### Getting Information about Model Objects ###

  Function Name | Brief Description
----------------|--------------------
  [`addToDatabank`](#addToDatabank)              | Add model quantities to existing or new databank 
  [`autocaption`](#autocaption)                | Create captions for reporting model variables or parameters
  [`autoswap`](#autoswap)                   | Get or set pairs of names in dynamic and steady autoswap
  [`beenSolved`](#beenSolved)                 | True if first-order solution has been successfully calculated
  [`chkredundant`](#chkredundant)               | Check for redundant shocks and/or parameters
  [`comment`](#comment)                    | Get or set user comments in IRIS object
  [`eig`](#eig)                        | Eigenvalues of model transition matrix
  [`findeqtn`](#findeqtn)                   | Find equations by their labels
  [`findname`](#findname)                   | Find names of variables, shocks, or parameters by their labels
  [`get`](#get)                        | Query @Model object properties
  [`isactive`](#isactive)                   | True if dynamic link or steady-state revision is active (not disabled)
  [`iscompatible`](#iscompatible)               | True if two models can occur together on the LHS and RHS in an assignment
  [`islinear`](#islinear)                   | True for models declared as linear
  [`islog`](#islog)                      | True for log-linearised variables
  [`ismissing`](#ismissing)                  | True if some initical conditions are missing from input database
  [`isnan`](#isnan)                      | Check for NaNs in model object
  [`isname`](#isname)                     | True for valid names of variables, parameters, or shocks in model object
  [`isstationary`](#isstationary)               | True if model or specified combination of variables is stationary
  [`length`](#length)                     | Number of parameter variants within model object
  [`omega`](#omega)                      | Get or set the covariance matrix of shocks
  [`sspace`](#sspace)                     | State-space matrices describing the model solution
  [`system`](#system)                     | System matrices for unsolved model
  [`userdata`](#userdata)                   | Get or set user data in an IRIS object
 
 
### Referencing Model Objects ###

  Function Name | Brief Description
----------------|--------------------
  [`subsasgn`](#subsasgn)                   | Subscripted assignment for model objects
  [`subsref`](#subsref)                    | Subscripted reference for model objects
 
 
### Changing Model Objects ###

  Function Name | Brief Description
----------------|--------------------
  [`alter`](#alter)                      | Expand or reduce number of parameter variants in model object
  [`assign`](#assign)                     | Assign parameters, steady states, std deviations or cross-correlations
  [`disable`](#disable)                    | Disable dynamic links or steady-state revision equations
  [`enable`](#enable)                     | Enable dynamic links or revision equations
  [`export`](#export)                     | Save all export files associated with model object to current working folder
  [`horzcat`](#horzcat)                    | Merge two or more compatible model objects into multiple parameterizations
  [`refresh`](#refresh)                    | Refresh dynamic links
  [`reset`](#reset)                      | Reset specific values within model object
  [`rename`](#rename)                     | Rename temporarily model quantities
  [`stdscale`](#stdscale)                   | Rescale all std deviations by the same factor
  [`set`](#set)                        | Change settable model object property
 
 
### Steady State ###

  Function Name | Brief Description
----------------|--------------------
  [`blazer`](#blazer)                     | Reorder dynamic or steady equations and variables into sequential block structure
  [`checkSteady`](#checkSteady)                | Check if equations hold for currently assigned steady-state values
  [`steady`](#steady)                     | Compute steady state or balance-growth path of the model
 
 
### Solution, Simulation and Forecasting ###

  Function Name | Brief Description
----------------|--------------------
  [`chkmissing`](#chkmissing)                 | Check for missing initial values in simulation database
  [`diffsrf`](#diffsrf)                    | Differentiate shock response functions w.r.t. specified parameters
  [`expand`](#expand)                     | Compute forward expansion of model solution for anticipated shocks
  [`jforecast`](#jforecast)                  | Forecast with judgmental adjustments (conditional forecasts)
  [`icrf`](#icrf)                       | Initial-condition response functions, first-order solution only
  [`lhsmrhs`](#lhsmrhs)                    | Discrepancy between the LHS and RHS of each model equation for given data
  [`resample`](#resample)                   | Resample from the model implied distribution
  [`reporting`](#reporting)                  | Evaluate reporting equations from within model object
  [`shockplot`](#shockplot)                  | Short-cut for running and plotting plain shock simulation
  [`simulate`](#simulate)                   | Simulate model from inputasfasfdfsfafasdfaasdfasdf 
  [`solve`](#solve)                      | Calculate first-order accurate solution of the model
  [`srf`](#srf)                        | First-order shock response functions
  [`tolerance`](#tolerance)                  | Get or set model-specific tolerance levels
 
 
### Model Data ###

  Function Name | Brief Description
----------------|--------------------
  [`data4lhsmrhs`](#data4lhsmrhs)               | Prepare data array for running `lhsmrhs`
  [`emptydb`](#emptydb)                    | Create model database with empty time series for each variable and shock
  [`shockdb`](#shockdb)                    | Create model-specific databank with random shocks
  [`steadydb`](#steadydb)                   | Create model-specific steady-state or balanced-growth-path database
  [`templatedb`](#templatedb)                 | Create model-specific template database
  [`zerodb`](#zerodb)                     | Create model-specific zero-deviation database
 
 
### Stochastic Properties ###

  Function Name | Brief Description
----------------|--------------------
  [`acf`](#acf)                        | Autocovariance and autocorrelation function for model variables
  [`ifrf`](#ifrf)                       | Frequency response function to shocks
  [`fevd`](#fevd)                       | Forecast error variance decomposition for model variables
  [`ffrf`](#ffrf)                       | Filter frequency response function of transition variables to measurement variables
  [`fmse`](#fmse)                       | Forecast mean square error matrices
  [`vma`](#vma)                        | Vector moving average representation of the model
  [`xsf`](#xsf)                        | Power spectrum and spectral density for model variables
 
 
### Identification, Estimation and Filtering ###

  Function Name | Brief Description
----------------|--------------------
  [`bn`](#bn)                         | Beveridge-Nelson trends
  [`diffloglik`](#diffloglik)                 | Approximate gradient and hessian of log-likelihood function
  [`estimate`](#estimate)                   | Estimate model parameters by optimizing selected objective function
  [`filter`](#filter)                     | Kalman smoother and estimator of out-of-likelihood parameters
  [`fisher`](#fisher)                     | Approximate Fisher information matrix in frequency domain
  [`lognormal`](#lognormal)                  | Characteristics of log-normal distributions returned from filter of forecast
  [`loglik`](#loglik)                     | Evaluate minus the log-likelihood function in time or frequency domain
  [`neighbourhood`](#neighbourhood)              | Local behaviour of the objective function around the estimated parameters
  [`regress`](#regress)                    | Centred population regression for selected model variables
  [`VAR`](#VAR)                        | Population VAR for selected model variables

  

## Alphabetical List of Functions ##

### acf ### 
__Syntax__
 
    [C, R, list] = acf(model, ...)
 
 
__Input Arguments__
 
* `model` [ model ] - A solved model object for which the autocorrelation
function will be computed.
 
 
__Output Arguments__
 
* `C` [ namedmat | numeric ] - Covariance matrices.
 
* `R` [ namedmat | numeric ] - Correlation matrices.
 
* `list` [ cellstr ] - List of variables in rows and columns of `C` and
`R`.
 
 
__Options__
 
* `ApplyTo=@all` [ cellstr | char | `@all` ] - List of variables to which
the `Filter=` will be applied; `@all` means all variables.
 
* `Contributions=false` [ `true` | `false` ] - If `true` the
contributions of individual shocks to ACFs will be computed and stored in
the 5th dimension of the `C` and `R` matrices.
 
* `Filter=''` [ char ] - Linear filter that is applied to
variables specified by the option `ApplyTo=`.
 
* `NFreq=256` [ numeric ] - Number of equally spaced frequencies over
which the filter in the option `Filter=` is numerically integrated.
 
* `Order=0` [ numeric ] - Order up to which ACF will be computed.
 
* `MatrixFormat='namedmat'` [ `'namedmat'` | `'plain'` ] - Return
matrices `C` and `R` as either [`namedmat`](NamedMat) objects (matrices
with named rows and columns) or plain numeric arrays.
 
* `Select=@all` [ `@all` | char | cellstr ] - Return ACF for selected
variables only; `@all` means all variables.
 
 
__Description__
 
`C` and `R` are both n-by-n-by-(p+1)-by-v matrices, where n is the
number of measurement and transition variables (including auxiliary lags
and leads in the state space vector), p is the order up to which the ACF
is computed (controlled by the option `Order=`), and v is the number
of parameter variants in the input model object, `M`.

If `Contributions=true`, the size of the two matrices is
n-by-n-by-(p+1)-by-k-by-v, where k is the number of all shocks
(measurement and transition) in the model.
 
 
_ACF with Linear Filters_
 
You can use the option `Filter=` to get the ACF for variables as though
they were filtered through a linear filter. You can specify the filter in
both the time domain (such as first-difference filter, or
Hodrick-Prescott) and the frequncy domain (such as a band of certain
frequncies or periodicities). The filter is a text string in which you
can use the following references:
 
* `'L'` for the lag operator, which will be replaced with
`'exp(-1i*freq)'`;
* `'per'` for the periodicity;
* `'freq'` for the frequency.

 
__Example__
 
A first-difference filter (i.e. computes the ACF for the first
differences of the respective variables):
 
    [C, R] = acf(m, 'Filter=', '1-L')
 
 
__Example__
 
The cyclical component of the Hodrick-Prescott filter with the smoothing
parameter, \(\lambda\), set to 1,600. The formula for the filter follows
from the classical Wiener-Kolmogorov signal extraction theory, 
 
$$w(L) = \frac{\lambda}{\lambda + \frac{1}{ | (1-L)(1-L) | ^2}}$$
 
    [C, R] = acf(m, 'Filter=', '1600/(1600 + 1/abs((1-L)^2)^2)')
 
 
__Example__
 
A band-pass filter with user-specified lower and upper bands. The
band-pass filters can be defined either in frequencies or periodicities;
the latter is usually more convenient. The following is a filter which
retains periodicities between 4 and 40 periods (this would be between 1
and 10 years in a quarterly model), 
 
    [C, R] = acf(m, 'Filter=', 'per>=4 & per<=40')



### addToDatabank ### 
__Syntax__
 
Input arguments marked with a `~` sign may be omitted
 
    D = addToDatabank(What, M, D, ...)
    D = addToDatabank(What, M, D, Range, ...)
 
 
__Input Arguments__
 
* `What` [ char | cellstr | string ] - What model quantities to add:
parameters, std deviations, cross-correlations.
 
* `M` [ model ] - Model object whose parameters will be added to databank
`D`.
 
* `D` [ struct ] - Databank to which the model parameters will be added.
 
* `~Range` [ DateWrapper ] - Date range on which time series will be
created; needs to be specified for `Shocks`.
 
 
__Output Arguments__
 
* `D` [ struct ] - Databank with the model parameters added.
 
 
__Description__
 
Function `addToDatabank( )` adds all specified model quantities to the databank,
`D`, as arrays with values for all parameter variants. If no input
databank is entered, a new will be created.
 
Specify one of the following to choose what model quantities to add:
 
  * `'Parameters'` - add plain parameters (no std deviations or cross correlations)
  * `'Std'` - add std deviations of model shocks
  * `'NonzeroCorr'` - add nonzero cross-correlations of model shocks
  * `'Corr'` - add all cross correlations of model shocks
  * `'Shocks'` - add time series for model shocks
  * `'Default'` - equivalent to `{'Parameters', 'Std', 'NonzeroCorr'}`
 
These can be specified as case-insensitive char, strings, or combined in
a cellstr or a string array.
 
Any existing databank entries whose names coincide with the names of
model parameters will be overwritten.
 
 
__Example__
 
    d = struct( );
    d = addToDatabank('Parameters', m, d);



### alter ### 
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

