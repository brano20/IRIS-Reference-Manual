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

### Model ### 
__Syntax__ 
 
    m = Model(fileNames, ...)
 
 
__Input Arguments__
 
* `fileNames` [ char | cellstr | string ] - File name or a list of
multiple file names of source model files from which the new model object
will be created; multiple source model files are simply combined all
together.
 

__Output Arguments__
 
* `m` [ Model ] - New model object based on the source model file(s)
specified in `fileNames`.
 
 
__Options__
 
 
__Description__
 
 
__Example__


### VAR ### 
__Syntax__
 
    V = VAR(M, List, Range, ...)
 
 
__Input Arguments__
 
* `M` [ model ] - Solved model object.
 
* `List` [ cellstr | char ] - List of variables selected for the VAR.
 
* `Range` [ numeric | char ] - Hypothetical range, including pre-sample
initial condition, on which the VAR would be estimated.
 
 
__Output Arguments__
 
* `V` [ VAR ] - Asymptotic reduced-form VAR for selected model variables.
 
 
__Options__
 
* `'Order='` [ numeric | *1* ] - Order of the VAR.
 
* `'Constant='` [ *`true`* | `false` ] - Include in the VAR a constant
vector derived from the steady state of the selected variables.
 
 
__Description__
 
 
__Example__



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



### assign ### 
__Syntax__
 
    [M, Assigned] = assign(M, P)
    [M, Assigned] = assign(M, N)
    [M, Assigned] = assign(M, Name, Value, Name, Value, ...)
    [M, Assigned] = assign(M, List, Values)
 
 
__Syntax for Fast Assign__
 
    % Initialise
    assign(M, List);
 
    % Fast assign
    M = assign(M, Values);
    ...
    M = assign(M, Values);
    ...
 
 
__Input arguments__
 
* `M` [ model ] - Model object.
 
* `P` [ struct ] - Database whose fields refer to parameter
names, variable names, std deviations, or cross-correlations.
 
* `N` [ model ] - Another model object from which all parameteres
(including std erros and cross-correlation coefficients), and
steady-states values will be assigned that match the name and type in
`M`.
 
* `Name` [ char ] - A parameter name, variable name, std
deviation, cross-correlation, or a regular expression that will be
matched against model names.
 
* `Value` [ numeric ] - A value (or a vector of values in case of
multiple parameterisations) that will be assigned.
 
* `List` [ cellstr ] - A list of parameter names, variable names, std
deviations, or cross-correlations.
 
* `Values` [ numeric ] - A vector of values.
 
 
__Output arguments__
 
* `M` [ model ] - Model object with newly assigned parameters and/or
steady states.
 
* `Assigned` [ cellstr | `Inf` ] - List of actually assigned parameter
names, variables names (steady states), std deviations, and
cross-correlations; `Inf` indicates that all values has been assigned
from another model object.
 
 
__Description__
 
Calls with `Name`-`Value` or `List`-`Value` pairs throw an error if some
names in the list are not valid names in the model object. Calls with a
database, `P`, or another model object, `N`, do not perform this check.
 
 
__Example__



### autocaption ### 
__Syntax__
 
    C = autocaption(M, X, Template, ...)
 
 
__Input Arguments__
 
* `M` [ model ] - Model object.
 
* `X` [ cellstr | struct | poster ] - A cell array of model names, a
struct with model names, or a [`poster`](poster/Contents) object.
 
* `Template` [ char ] - Prescription for how to create the caption; see
Description for details.
 
 
__Output Arguments__
 
* `C` [ cellstr | string ] - Cell array or string array of captions, with
one for each model name (variable, shock, parameter) found in `X`, in
order of their appearance in `X`.
 
 
__Options__
 
* `Corr='Corr $shock1$ X $shock2$'` [ char ] - Template to create
`$descript$` and `$alias$` for correlation coefficients based on
`$descript$` and `$alias$` of the underlying shocks.
 
* `Std='Std $shock$'` [ char ] - Template to create `$descript$` and
`$alias$` for std deviation based on `$descript$` and `$alias$` of the
underlying shock.
 
 
__Description__
 
The function `autocaption( )` is used to supply user-created captions to
title graphs in `grfun/plotpp`, `grfun/plotneigh`, `model/shockplot`, 
and `dbase/dbplot`, through their option `Caption=`.
 
The `Template` can contain the following substitution strings:
 
* `$name$` -- will be replaced with the name of the respective variable, 
shock, or parameter;
 
* `$label$` -- will be replaced with the description of the respective
variable, shock, or parameter;
 
* `$alias$` -- will be replaced with the alias of the respective
variable, shock, or parameter.
 
The options `Corr=` and `Std=` will be used to create `$descript$`
and `$alias$` for std deviations and cross-correlations of shocks (which
cannot be created in the model code). The options are expected to use the
following substitution strings:
 
* `'$shock$'` -- will be replaced with the description or alias of the
underlying shock in a std deviation;
 
* `'$shock1$'` -- will be replaced with the description or alias of the
first underlying shock in a cross correlation;
 
* `'$shock2$'` -- will be replaced with the description or alias of the
second underlying shock in a cross correlation.
 
 
__Example__



### autoswap ### 
Syntax fo getting autoexogen pairs of names
============================================
 
    A = autoswap(M)
 
 
Syntax fo setting autoswap pairs of names
==========================================
 
    M = autoswap(M, A)
 
 
Input arguments
================
 
* `M` [ model ] - Model object.
 
* `A` [ struct ] - `A` contains two substructs, `.Simulate` and
`.Steady`. Each field in the substructs defines a variable/shock pair (in
`.Simulate`), or a variable/parameter pair (in `.Steady`).
 
 
Output arguments
=================
 
* `M` [ model ] - Model object with updated definitions of autoswap pairs
of names.
 
 
Description
============
 
 
Example 
========



### beenSolved ### 
__Syntax__
 
    flag = beenSolved(model)
 
 
__Input Arguments__
 
* `model` [ model ] - Model object.
 
 
__Output Arguments__
 
* `flag` [ `true` | `false` ] - True for parameter variants for which
a stable unique solution has been successfully calculated.
 
 
__Description__
 
 
__Example__



### blazer ### 
__Syntax__
 
    [NameBlk, EqtnBlk, BlkType] = blazer(M, ...)
 
 
__Input Arguments__
 
* `M` [ model ] - Model object.
 
 
__Output Arguments__
 
* `M` [ model ] - Model object with variables and steady-state equations
regrouped to create sequential block structure.
 
* `NameBlk` [ cell ] - Cell of cellstr with variable names in each block.
 
* `EqtnBlk` [ cell ] - Cell of cellstr with equations in each block.
 
* `BlkType` [ solver.block.Type ] - Type of each equation block: `SOLVE` or
`ASSIGN`.
 
 
__Options__
 
* `'Endogenize='` [ cellstr | char ] - List of parameters that will be
endogenized in steady equations.
 
* `'Exogenize='` [ cellstr | char ] - List of transition or measurement
variables that will be exogenized in steady equations.
 
* `'Kind='` [ `'Current'` | `'Stacked'` | *`'Steady'`* ] - The kind of
sequential block analysis that will be performed.
 
 
__Description__
 
Three kinds of sequential block analysis can be performed:
 
* `'Steady'` - Investigate steady-state equations, considering lags and
leads to be the same entity as the respective current dated variable.
 
* `'Current'` - Investigate the current dated variables in dynamic
equations, taking lags and leads as give.
 
* `'Stacked'` - Investigate a whole structure of time-stacked equations
(not available yet).
 
 
_Reordering Algorithm_
 
The reordering algorithm first identifies equations with a single
variable in each, and variables occurring in a single equation each, and
then uses a combination of column and row approximate minimum degree
permutations (`colamd`) followed by a Dulmage-Mendelsohn permutation
(`dmperm`).
 
 
_Output Returned from Blazer_
 
The output arguments `NameBlk` and `EqtnBlk` are 1-by-N cell arrays, 
where N is the number of blocks, and each cell is a 1-by-Kn cell array of
strings, where Kn is the number of variables and equations in block N.
 
 
__Example__



### bn ### 
__Syntax__
 
    Outp = bn(SolvedModel, InputData, Range, ...)
 
 
__Input Arguments__
 
* `SolvedModel` [ model ] - Solved model object.
 
* `InputData` [ struct | cell ] - Input data on which the BN trends will
be computed.
 
* `Range` [ numeric | char ] - Date range on which the BN trends will be
computed.
 
 
__Output Arguments__
 
* `Outp` [ struct | cell ] - Output data with the BN trends.
 
 
__Options__
 
* `Deviation=false` [ `true` | `false` ] - Input and output data are
deviations from steady-state paths.
 
* `DTrends=@auto` [ `@auto` | `true` | `false` ] - Measurement variables
in input and output data include deterministic trends specified in
[`!dtrends`](irislang/dtrends) equations.
 
 
__Description__
 
The BN decomposition is accurate only if the input data have been
generated using unanticipated shocks.
 
 
__Example__



### checkSteady ### 
 
__Syntax__
 
    [flag, list] = chksstate(model, ...)
    [flag, discr, list] = chksstate(model, ...)
 
__Input Arguments__
 
* `model` [ model ] - Model object with steady-state values assigned.
 
 
__Output Arguments__
 
* `flag` [ `true` | `false` ] - True if discrepancy between LHS and RHS
is smaller than tolerance level in each equation.
 
* `discr` [ numeric ] - Discrepancies between LHS and RHS evaluated for
each equation at two consecutive times, and returned as two column
vectors.
 
* `list` [ cellstr ] - List of equations in which the discrepancy between
LHS and RHS is greater than predefined tolerance.
 
 
__Options__
 
* `Error=true` [ `true` | `false` ] - Throw an error if one or more
equations fail to hold up to tolerance level.
 
* `EquationSwitch='Dynamic'` [ `'Both'` | `'Dynamic'` | `'Steady'` ] - Check either
dynamic equations or steady equations or both.
 
* `Warning=true` [ `true` | `false` ] - Display warnings produced by this
function.
 
 
__Description__
 
 
__Example__



### chkmissing ### 
__Syntax__
 
    [Ok, Miss] = chkmissing(M, D, Start)
 
 
__Input Arguments__
 
* `M` [ model ] - Model object.
 
* `D` [ struct ] - Input database for the simulation.
 
* `Start` [ numeric ] - Start date for the simulation.
 
 
__Output Arguments__
 
* `Ok` [ `true` | `false` ] - True if the input database `D` contains
all required initial values for simulating model `M` from date `Start`.
 
* `Miss` [ cellstr ] - List of missing initial values.
 
 
__Options__
 
* `'error='` [ *`true`* | `false` ] - Throw an error if one or more
initial values are missing.
 
 
__Description__
 
This function does not perform any simulation; it only checks for missing
initial values in an input database.
 
 
__Example_



### chkredundant ### 
 
Syntax
=======
 
    [redShocks, redParams] = chkredundant(m)
 
 
Input arguments
================
 
* `m` [ model ] - Model object.
 
 
Output arguments
=================
 
* `redShocks` [ cellstr ] - List of shocks that do not occur in any model
equation.
 
* `redParams` [ cellstr ] - List of parameters that do not occur in any
model equation.
 
 
Options
========
 
* `'Warning='` [ *`true`* | `false` ] - Throw a warning listing redundant
shocks and parameters.
 
* `'ChkShocks='` [ *`true`* | `false` ] - Check for redundant shocks.
 
* `'ChkParams='` [ *`true`* | `false` ] - Check for redundant parameters.
 
 
Description
============
 
 
Example
========



### comment ### 
__Syntax for Getting User Comments__
 
    c = comment(obj)
 
 
__Syntax for Assigning User Comments__
 
    obj = comment(obj, newComment)
 
 
__Input Arguments__
 
* `obj` [ model | tseries | VAR | SVAR | FAVAR | sstate ] -
IRIS object subclassed from shared.CommentContainer.
 
* `newComment` [ char | string ] - New user comment that will be
attached to the object.
 
 
__Output Arguments__
 
* `c` [ char ] - User comment that is currently attached to the
object.
 
 
__Description__
 
 
__Example__


### data4lhsmrhs ### 
__Syntax__
 
    [YXEPG, RowNames, ExtendedRange] = data4lhsmrhs(Model, InpDatabank, Range)
 
 
__Input Arguments__
 
* `Model` [ model ] - Model object whose equations will be later
evaluated by calling [`lhsmrhs`](model/lhsmrhs).
 
* `InpDatabank` [ struct ] - Input database with observations on
measurement variables, transition variables, and shocks on which
[`lhsmrhs`](model/lhsmrhs) will be evaluated.
 
* `Range` [ DateWrapper ] - Continuous range on which
[`lhsmrhs`](model/lhsmrhs) will be evaluated.
 
 
__Output Arguments__

* `YXEPG` [ numeric ] - Numeric array with the observations on
measurement variables, transition variables, shocks and exogenous
variables (including time trend) organized row-wise.
 
* `RowNames` [ cellstr ] - List of measurement variables, transition
variables, shocks, parameters and exogenous variables in order of their
appearance in the rows of `YXEPG`.
 
* `ExtendedRange` [ DateWrapper ] - Extended range including pre-sample
and post-sample observations needed to evaluate lags and leads of
transition variables.
 
 
__Description__
 
The output array, `YXEPG`, is N-by-T-by-K where N is the total number of
all quantities in the `Model` (measurement variables, transition
variables, shocks, parameters, and exogenous variables including a time
trend), T is the number of periods including the pre-sample and
post-sample periods needed to evaluate lags and leads, and K is the
number of alternative data sets (i.e. the number of columns in each input
time series) in the `InputDatabank`.
 
 
__Example__
 
    YXEPG = data4lhsmrhs(m, d, range);
    d = lhsmrhs(m, YXEPG);



### diffloglik ### 
__Syntax__
 
    [MinusLogLik, Grad, Hess, V] = diffloglik(M, Inp, Range, PList, ...)
 
 
__Input arguments__
 
* `M` [ model ] - Model object whose likelihood function will be
differentiated.
 
* `Inp` [ cell | struct ] - Input data from which measurement variables
will be taken.
 
* `Range` [ numeric | char ] - Date range on which the likelihood
function will be evaluated.
 
* `PList` [ cellstr ] - List of model parameters with respect to which
the likelihood function will be differentiated.
 
 
__Output arguments__
 
* `MinusLogLik` [ numeric ] - Value of minus the likelihood function at the input
data.
 
* `Grad` [ numeric ] - Gradient (or score) vector.
 
* `Hess` [ numeric ] - Hessian (or information) matrix.
 
* `V` [ numeric ] - Estimated variance scale factor if the `'relative='`
options is true; otherwise `v` is 1.
 
 
__Options__
 
* `'ChkSstate='` [ `true` | *`false`* | cell ] - Check steady state in
each iteration; works only in non-linear models.
 
* `'Solve='` [ *`true`* | `false` | cellstr ] - Re-compute solution for
each parameter change; you can specify a cell array with options for the
`solve` function.
 
* `'Sstate='` [ `true` | *`false`* | cell ] - Re-compute steady state in each
differentiation step; if the model is non-linear, you can pass in a cell
array with options used in the `sstate( )` function.
 
See help on [`model/filter`](model/filter) for other options available.
 
 
__Description__
 
 
__Example__



### diffsrf ### 
__Syntax__
 
    outputDatabank = diffsrf(model, numOfPeriods, listOfParams, ...)
    outputDatabank = diffsrf(model, range, listOfParams, ...)
 
 
__Input Arguments__
 
* `model` [ model ] - Model object whose response functions will be
simulated and differentiated.
 
* `range` [ numeric | char ] - Simulation date range with the first date
being the shock date.
 
* `numOfPeriods` [ numeric ] - Number of simulation periods.
 
* `listOfParams` [ char | cellstr ] - List of parameters w.r.t. which the
shock response functions will be differentiated.
 
 
__Output Arguments__
 
* `outputDatabank` [ struct ] - Database with shock reponse derivatives
returned in multivariate time series.
 
 
__Options__
 
See [`model/srf`](model/srf) for options available
 
 
__Description__
 
 
__Example__



### disable ### 
__Syntax__
 
    M = disable(M, '!links')
    M = disable(M, '!links', Name1, Name2, ...);
    M = disable(M, '!revisions');
    M = disable(M, '!revisions', Name1, Name2, ...);
 
 
__Input Arguments__
 
* `M` [ model ] - Model object.
 
* `Name1`, `Name2`, ... [ char ] - Names whose links or revision equations
will be temporarily disabled.
 
 
__Output Arguments__
 
* `M` [ model ] - Model object with dynamic links
[`!links`](irislang/links) or steady-state revision equations
[`!revisions`](irislang/revisions) temporarily disabled until
enabled by [`enable`](#enable) again.
 
 
Example



### eig ### 
__Syntax__
 
    [EigenVal, Stab] = eig(M)
 
 
__Input Arguments__
 
* `M` [ model ] - Model object whose eigenvalues will be returned.
 
 
__Output Arguments__
 
* `EigenVal` [ numeric ] - Array of all eigenvalues associated with
the model, i.e. all stable, unit, and unstable roots are included.
 
* `Stab` [ int8 ] - Classification of each root in the `EigenValues`
vector: `0` means a stable root, `1` means a unit root, `2` means an
unstable root. `Stab` is filled with zeros in models or parameter
variants where no solution has been computed.
 
 
__Description__
 
 
__Example__



### emptydb ### 
__Syntax__
 
    outputDatabank = emptydb(m)
 
 
__Input arguments__
 
* `m` [ model ] - Model for which the empty database will be created.
 
 
__Output arguments__
 
* `outputDatabank` [ struct ] - Databank with an empty time series for
each variable and each shock, and a vector of currently assigned values
for each parameter.
 
 
__Options__
 
* `Include=@all` [ char | cellstr | string | `@all` ] - Types of
quantities that will be included in the output databank; `@all` means all
variables, shocks and parameters will be included; see Description.
 
* `Size=[0, 1]` [ numeric ] - Size of the empty time series; the size in
first dimension must be zero.
 
 
__Description__
 
The output databank will, by default, include an empty time series for
each measurement and transition variable, and measurement and transition
shock, as well as a numeric array for each parameter. To create a
databank with only some of these quantities, use the option `Include=`,
and assign a cellstr or a string array combining the following:
 
* `Variables` to include measurement and transition variables;
* `MeasurementVariables` to include measurement variables;
* `TransitionVariables` to include transition variables;
* `Shocks` to include measurement and transition shocks;
* `MeasurementShocks` to include measurement shocks;
* `TransitionShocks` to include transition shocks;
* `Parameters` to include parameters;
* `Std` to include std deviations of shocks.
 
 
__Example__



### enable ### 
Syntax
=======
 
    M = enable(M, '!links')
    M = enable(M, '!links', Name1, Name2, ...);
    M = enable(M, '!revisions');
    M = enable(M, '!revisions', Name1, Name2,...);
 
 
Input arguments
================
 
* `M` [ model ] - Model object.
 
* `Name1`, `Name2`, ... [ char ] - Names whose links or steady-state
revision equations will be enabled.
 
 
Output arguments
=================
 
* `M` [ model ] - Model object with dynamic links
[`!links`](irislang/links) or steady-state revision equations
[`!revisions`](irislang/revisions) enabled.
 
 
Example
========



### estimate ### 
__Syntax__
 
Input arguments marked with a `~` sign may be omitted.
 
    [Summary, Poster, Table, Hess, MEst, V, Delta, PDelta] = ...
              estimate(M, D, Range, EstimSpec, ~SystemPriors, ...)
 
 
__Input Arguments__
 
* `M` [ model ] - Model object with single parameterization.
 
* `D` [ struct | cell ] - Input database or datapack from which the
measurement variables will be taken.
 
* `Range` [ struct | char ] - Date range on which the data likelihood
will be evaluated.
 
* `EstimSpec` [ struct ] - Struct with the list of paremeters that will be
estimated, and the parameter prior specifications (see below).
 
* `~SystemPriors` [ systempriors | *empty* ] - System priors object,
[`systempriors`](systempriors/Contents); may be omitted.
 
 
__Output Arguments__
 
* `Summary` [ table ] - Table with summary information.
 
* `Poster` [ poster ] - Posterior, [`poster`](poster/Contents), object;
this object also gives you access to the value of the objective function
at optimum or at any point in the parameter space, see the
[`poster/eval`](poster/eval) function.
 
* `Table` [ numeric ] - Summary table with a starting value, point
estimate, std error estimate, and lower and upper bounds for each
parameter. 
 
* `Hess` [ cell ] - `Hess{1}` is the total hessian of the objective
function; `Hess{2}` is the contributions of the priors to the hessian.
 
* `MEst` [ model ] - Model object solved with the estimated parameters
(including out-of-likelihood parameters and common variance factor).
 
The remaining three output arguments, `V`, `delta`, `PDelta`, are the
same as the [`model/loglik`](model/loglik) output arguments of the same
names.
 
 
__Options__
 
* `ChkSstate=false` [ `true` | `false` | cell ] - Check steady state in
each iteration; works only in non-linear models.
 
* `EvalLikelihood=true` [ `true` | `false` ] - In each iteration, evaluate
likelihood (or another data based criterion), and include it to the
overall objective function to be optimised.
 
* `EvalParameterPriors=true` [ `true` | `false` ] - In each iteration,
evaluate parameter prior density, and include it to the overall objective
function to be optimised.
 
* `EvalSystemPriors=true` [ `true` | `false` ] - In each iteration,
evaluate system prior density, and include it to the overall objective
function to be optimised.
 
* `Filter={ }` [ cell ] - Cell array of options that will be passed on to
the Kalman filter including the type of objective function; see help on
[`model/filter`](model/filter) for the options available.
 
* `InitVal='struct'` [ `'Model'` | `'Struct'` | struct ] - If `Struct`
use the values in the input struct `est` to start the iteration; if
`Model` use the currently assigned parameter values in the input model,
`m`.
 
* `MaxIter=500` [ numeric ] - Maximum number of iterations allowed.
 
* `MaxFunEvals=2000` [ numeric ] - Maximum number of objective function
calls allowed.
 
* `NoSolution='Error'` [ `'Error'` | `'Penalty'` | numeric ] - Specifies
what happens if solution or steady state fails to solve in an iteration:
`NoSolution='Error'` stops the execution with an error message,
`NoSolution='Penalty'` returns an extreme value, `1e10`, back to the
minimization routine; or a user-supplied penalty can be specified as a
numeric scalar greater than `1e10`.
 
* `OptimSet={ }` [ cell ] - Cell array used to create the Optimization
Toolbox options structure; works only with the option `Solver='Default'`.
 
* `Summary='Table'` [ `'Table'` | `'Struct'` ] - Format of the `Summary`
output argument.
 
* `Solve=true` [ `true` | `false` | cellstr ] - Re-compute solution in
each iteration; you can specify a cell array with options for the `solve`
function.
 
* `Solver='Default'` [ `'Default'` | cell | function_handle ] -
Minimization procedure.
 
    * `'Default'`: The Optimization Toolbox function `fminunc` or
    `fmincon` will be called depending on the presence or absence of
    lower and/or upper bounds.

    * function_handle or cell: Enter a function handle to your own
    optimization procedure, or a cell array with a function handle and
    additional input arguments (see below).
 
* `SState=false` [ `true` | `false` | cell | function_handle ] -
Re-compute steady state in each iteration; you can specify a cell array
with options for the `sstate( )` function, or a function handle whose
behaviour is described below.
 
* `TolFun=1e-6` [ numeric ] - Termination tolerance on the objective
function.
 
* `TolX=1e-6` [ numeric ] - Termination tolerance on the estimated
parameters.
 
 
__Description__
 
The parameters that are to be estimated are specified in the input
parameter estimation database, `E` in which you can provide the following
specifications for each parameter:
 
    E.parameter_name = { start, lower, upper, logpriorFunc };
 
where `start` is the value from which the numerical optimization will
start, `lower` is the lower bound, `upper` is the upper bound, and
`logpriorFunc` is a function handle expected to return the log of the
prior density. You can use the [`logdist`](logdist/Contents) package to
create function handles for some of the basic prior distributions.
 
You can use `NaN` for `start` if you wish to use the value currently
assigned in the model object. You can use `-Inf` and `Inf` for the
bounds, or leave the bounds empty or not specify them at all. You can
leave the prior distribution empty or not specify it at all.
 
 
_Estimating Nonlinear Models_
 
By default, only the first-order solution, but not the steady state is
updated (recomputed) in each iteration before the likelihood is
evaluated. This behavior is controled by two options, `Solve=` (`true`
by default) and `Sstate=` (`false` by default). If some of the
estimated parameters do affect the steady state of the model, the option
`Sstate=` needs to be set to `true` or to a cell array with
steady-state options, as in the function [`sstate`](model/sstate),
otherwise the results will be groslly inaccurate or a valid first-order
solution will be impossible to find.
 
When steady state is recomputed in each iteration, you may also want to
use the option `Chksstate=` to require that a steady-state check for
all model equations be performed.
 
 
_User-supplied Optimization (Minimization) Routine_
 
You can supply a function handle to your own minimization routine through
the option `Solver=`. This routine will be used instead of the Optim
Tbx's `fminunc` or `fmincon` functions. The user-supplied function is
expected to take at least five input arguments and return three output
arguments:
 
    [pEst, ObjEst, Hess] = yourminfunc(F, P0, PLow, PHigh, OptimSet)
 
with the following input arguments:
 
* `F` is a function handle to the function minimised;
* `P0` is a 1-by-N vector of initial parameter values;
* `PLow` is a 1-by-N vector of lower bounds (with `-Inf` indicating no
lower bound);
* `PHigh` is a 1-by-N vector of upper bounds (with `Inf` indicating no
upper bounds);
* `OptimSet` is a cell array with name-value pairs entered by the user
through the option `'OptimSet='`. This option can be used to modify
various settings related to the optimization routine, such as tolerance,
number of iterations, etc. Of course, you may simply ignore it and leave
this input argument unused;
 
and the following output arguments:
 
* `pEst` is a 1-by-N vector of estimated parameters;
* `ObjEst` is the value of the objective function at optimum;
* `Hess` is a N-by-N approximate Hessian matrix at optimum.
 
If you need to use extra input arguments in your minimization function,
enter a cell array instead of a plain function handle:
 
    {@yourminfunc, Arg1, Arg2, ...}
 
In that case, the solver will be called the following way:
 
    [pEst, ObjEst, Hess] = yourminfunc(F, P0, PLow, PHigh, Opt, Arg1, Arg2, ...)
 
 
_User-Supplied Steady-State Solver_
 
You can supply a function handle to your own steady-state solver (i.e. a
function that finds the steady state for given parameters) through the
`Sstate=` option.
 
The function is expected to take one input argument, the model object
with newly assigned parameters, and return at least two output arguments,
the model object with a new steady state (or balanced-growth path) and a
success flag. The flag is `true` if the steady state has been successfully
computed, and `false` if not:
 
    [m, success] = mysstatesolver(m)
 
It is your responsibility to add the growth characteristics if some of
the model variables drift over time. In other words, you need to take
care of the imaginary parts of the steady state values in the model
object returned by the solver.
 
Alternatively, you can also run the steady-state solver with extra input
arguments (with the model object still being the first input argument).
In that case, you need to set the option `Sstate='` to a cell array with
the function handle in the first cell, and the other input arguments
afterwards, e.g.
 
    'Sstate=', {@mysstatesolver, 1, 'a', x}
 
The actual function call will have the following form:
 
    [m, success] = mysstatesolver(m, 1, 'a', x)
 
 
__Example__



### expand ### 
__Syntax__
 
    M = expand(M, K)
 
 
__Input Arguments__
 
* `M` [ model ] - Model object whose solution will be expanded.
 
* `K` [ numeric ] - Number of periods ahead, t+k, up to which the
solution for anticipated shocks will be expanded.
 
 
__Output Arguments__
 
* `M` [ model ] - Model object with the solution expanded.
 
 
__Description__
 
 
__Example__



### export ###
Syntax
=======
 
    export(m)
 
 
Input arguments
================
 
* `m` [ model ] - Model object whose export files will be saved.
 
 
Description
============
 
Function `export` saves all export files associated with the model
objects to the current working folder. The export files, including their
file names, are read from the underlying model file at the time of
calling the `model( )` function. See [`!export`](ModelLang/export) for
more on export files.
 
If a file with the same name as one of the export files already exists in
the current folder, a warning is thrown and the file is overwritten.
 
 
Example
========



### fevd ### 
__Syntax__
 
    [X, Y, List, A, B] = fevd(M, Range, ...)
    [X, Y, List, A, B] = fevd(M, NPer, ...)
 
 
__Input Arguments__
 
* `M` [ model ] - Model object for which the decomposition will be
computed.
 
* `Range` [ numeric | char ] - Decomposition date range with the first
date beign the first forecast period.
 
* `NPer` [ numeric ] - Number of periods for which the decomposition will
be computed.
 
 
__Output Arguments__
 
* `X` [ namedmat | numeric ] - Array with the absolute contributions of
individual shocks to total variance of each variables.
 
* `Y` [ namedmat | numeric ] - Array with the relative contributions of
individual shocks to total variance of each variables.
 
* `List` [ cellstr ] - List of variables in rows of the `X` an `Y`
arrays, and shocks in columns of the `X` and `Y` arrays.
 
* `A` [ struct ] - Database with the absolute contributions converted to
time series.
 
* `B` [ struct ] - Database with the relative contributions converted to
time series.
 
 
__Options__
 
* `'MatrixFormat='` [ *`'namedmat'`* | `'plain'` ] - Return matrices `X`
and `Y` as be either [`namedmat`](namedmat/Contents) objects (i.e.
matrices with named rows and columns) or plain numeric arrays.
 
* `'select='` [ `@all` | char | cellstr ] - Return FEVD for selected
variables and/or shocks only; `@all` means all variables and shocks; this
option does not apply to the output databases, `A` and `B`.
 
 
__Description__
 
 
__Example__



### ffrf ### 
__Syntax__
 
    [F, List] = ffrf(M, Freq, ...)
 
 
__Input Arguments__
 
* `M` [ model ] - Model object for which the frequency response function
will be computed.
 
* `Freq` [ numeric ] - Vector of frequencies for which the response
function will be computed.
 
 
__Output Arguments__
 
* `F` [ namedmat | numeric ] - Array with frequency responses of
transition variables (in rows) to measurement variables (in columns).
 
* `List` [ cell ] - List of transition variables in rows of the `F`
matrix, and list of measurement variables in columns of the `F` matrix.
 
 
__Options__
 
* `Include=@all` [ char | cellstr | `@all` ] - Include the effect of the
listed measurement variables only; `@all` means all measurement
variables.
 
* `Exclude=[ ]` [ char | cellstr | empty ] - Remove the effect of the
listed measurement variables.
 
* `MaxIter=500` [ numeric ] - Maximum number of iteration when
calculating a steady-state Kalman filter for zero-frequency FRF.
 
* `MatrixFormat='NamedMat'` [ `'NamedMat'` | `'Plain'` ] - Return matrix
`F` as either a [`namedmat`](namedmat/Contents) object (i.e. matrix with
named rows and columns) or a plain numeric array.
 
* `Select=@all` [ `@all` | char | cellstr ] - Return FFRF for selected
variables only; `@all` means all variables.
 
* `Tolerance=1e-7` [ numeric ] - Convergence tolerance when calculating a
steady-state Kalman filter for zero-frequency FRF.
 
 
__Description__
 
 
__Example__



### filter ### 
 
__Syntax__
 
Input arguments marked with a `~` sign may be omitted
 
    [M, Outp, V, Delta, PE, SCov] = filter(M, Inp, Range, ~J, ...)
 
 
__Input Arguments__
 
* `M` [ model ] - Solved model object.
 
* `Inp` [ struct | cell ] - Input database from which observations for
measurement variables will be taken.
 
* `Range` [ numeric | char ] - Date filterRange on which the Kalman filter will
be run.
 
* `~J=[ ]` [ struct | empty ] - For backward compatibility: Database with
user-supplied time-varying paths for std deviation, corr coefficients, or
medians for shocks; `~J` is equivalent to using the option `Override=`,
and should be omitted.
 
 
__Output Arguments__
 
* `M` [ model ] - Model object with updates of std devs (if `Relative=`
is true) and/or updates of out-of-likelihood parameters (if `OutOfLik=`
is non-empty).
 
* `Outp` [ struct | cell ] - Output struct with smoother or prediction
data.
 
* `V` [ numeric ] - Estimated variance scale factor if the `Relative=`
options is true; otherwise `V` is 1.
 
* `Delta` [ struct ] - Database with estimates of out-of-likelihood
parameters.
 
* `PE` [ struct ] - Database with prediction errors for measurement
variables.
 
* `SCov` [ numeric ] - Sample covariance matrix of smoothed shocks;
the covariance matrix is computed using shock estimates in periods that
are included in the option `ObjRange=` and, at the same time, contain
at least one observation of measurement variables.
 
 
__Options__
 
* `Ahead=1` [ numeric ] - Calculate predictions up to `Ahead` periods
ahead.
 
* `ChkFmse=false` [ `true` | `false` ] - Check the condition number of
the forecast MSE matrix in each step of the Kalman filter, and return
immediately if the matrix is ill-conditioned; see also the option
`FmseCondTol=`.
 
* `Condition={ }` [ char | cellstr | empty ] - List of conditioning
measurement variables. Condition time t|t-1 prediction errors (that enter
the likelihood function) on time t observations of these measurement
variables.
 
* `Deviation=false` [ `true` | `false` ] - Treat input and output data as
deviations from balanced-growth path.
 
* `Dtrends=@auto` [ `@auto` | `true` | `false` ] - Measurement data
contain deterministic trends; `@auto` means `DTrends=` will be set
consistently with `Deviation=`.
 
* `Output='Smooth'` [ `'Predict'` | `'Filter'` | `'Smooth'` ] - Return
smoother data or filtered data or prediction data or any combination of
them.
 
* `FmseCondTol=eps( )` [ numeric ] - Tolerance for the FMSE condition
number test; not used unless `ChkFmse=true`.
 
* `InitCond='Stochastic'` [ `'fixed'` | `'optimal'` | `'stochastic'` |
struct ] - Method or data to initialise the Kalman filter; user-supplied
initial condition must be a mean database or a struct containing `.mean`
and `.mse` fields.
 
* `InitUnit='FixedUnknown'` [ `'ApproxDiffuse'` | `'FixedUknown'` ] -
Method of initializing unit root variables; see Description.
 
* `LastSmooth=Inf` [ numeric ] - Last date up to which to smooth data
backward from the end of the filterRange; `Inf` means the smoother will run on
the entire filterRange.
 
* `MeanOnly=false` [ `true` | `false` ] - Return a plain database with
mean data only; this option overrides options `ReturnCont=`,
`ReturnMse=`, `ReturnStd=`.
 
* `OutOfLik={ }` [ cellstr | empty ] - List of parameters in
deterministic trends that will be estimated by concentrating them out of
the likelihood function.
 
* `ObjFunc='-LogLik'` [ `'-LogLik'` | `'PredErr'` ] - Objective function
computed; can be either minus the log likelihood function or weighted sum
of prediction errors.
 
* `ObjRange=Inf` [ DateWrapper | `Inf` ] - The objective function will be
computed on the specified filterRange only; `Inf` means the entire filter
filterRange.
 
* `Relative=true` [ `true` | `false` ] - Std devs of shocks assigned in
the model object will be treated as relative std devs, and a common
variance scale factor will be estimated.
 
* `ReturnCont=false` [ `true` | `false` ] - Return contributions of
 prediction errors in measurement variables to the estimates of all
 variables and shocks.
 
* `ReturnMse=true` [ `true` | `false` ] - Return MSE matrices for
 predetermined state variables; these can be used for settin up initial
 condition in subsequent call to another `filter( )` or `jforecast( )`.
 
* `ReturnStd=true` [ `true` | `false` ] - Return database with std devs
of model variables.
 
* `Weighting=[ ]` [ numeric | empty ] - Weighting vector or matrix for
prediction errors when `Objective='PredErr'`; empty means prediction
errors are weighted equally.
 
 
__Options for Time Variation in Std Deviation, Correlations and Means of Shocks__
 
* `Multiply=[ ]` [ struct | empty ] - Database with time series of
possibly time-varying multipliers for std deviations of shocks; the
numbers supplied will be multiplied by the std deviations assigned in
the model object to calculate the std deviations used in the filter. See
Description.

* `Override=[ ]` [ struct | empty ] - Database with time series for
possibly time-varying paths for std deviations, correlations
coefficients, or medians of shocks; these paths will override the values
assigned in the model object. See Description.
 
 
__Options for Models with Nonlinear Equations Simulated in Prediction Step__
 
* `Simulate=false` [ `false` | cell ] - Use the backend algorithms from
the [`simulate`](model/simulate) function to run nonlinear simulation for
each prediction step; specify options that will be passed into `simulate`
when running a prediction step.
 
 
__Description__
 
The option `Ahead=` cannot be combined with one another, or with multiple
data sets, or with multiple parameterisations.
 
 
_Initial Conditions in Time Domain_
 
By default (with `InitCond='Stochastic'`), the Kalman filter starts
from the model-implied asymptotic distribution. You can change this
behaviour by setting the option `InitCond=` to one of the following
four different values:
 
* `'Fixed'` -- the filter starts from the model-implied asymptotic mean
(steady state) but with no initial uncertainty. The initial condition is
treated as a vector of fixed, non-stochastic, numbers.
 
* `'Optimal'` -- the filter starts from a vector of fixed numbers that
is estimated optimally (likelihood maximising).
 
* database (i.e. struct with fields for individual model variables) -- a
database through which you supply the mean for all the required initial
conditions, see help on [`model/get`](model/get) for how to view the list
of required initial conditions.
 
* mean-mse struct (i.e. struct with fields `.mean` and `.mse`) -- a struct
through which you supply the mean and MSE for all the required initial
conditions.
 
 
_Initialization of Unit Root (Nonstationary, Diffuse) Processes_
 
Two methods are available to initialize unit-root (nonstationary,
diffuse) elements in the state vector. In either case, the Kalman filter
works with a system where the state vector is transformed so that its
transition matrix is upper diagonal, with unit roots concentrated in the
top left corner.
 
* Fixed unknown quantities. This is the default method (for backward
compatibility reasons), and corresponds to setting
`InitUnit='FixedUnknown'`.  The initial conditions for unit-root
processes are treated as fixed unknown elements, and uses a Rosenberg
(1973) algorithm to compute the optimal estimates of these. The algorithm
is completely described in section 3.4.4. of Harvey (1990) "Forecasting,
Structural Time Series Models and the Kalman Filter", Cambridge
University Press.
 
* Approximate diffuse. The other method is used when
`InitUnit='ApproxDiffuse'`.  This alternative method treats the initial
conditions for unit-root processes as a diffuse distribution (with
infinitely large variances) approximating the true diffuse distribution
by scaling up the appropriate elements of the initial covariance matrix
(by a sufficiently large factor in proportion to the remaining parts of
the matrix). This method is described e.g. in Harvey & Phillips (1979)
"Maximum Likelihood Estimation of Regression Models with Autoregressive-
Moving Average Disturbances" Biometrika 66(1).
 
 
_Contributions of Measurement Variables to Estimates of All Variables_
 
Use the option `ReturnCont=true` to request the decomposition of
measurement variables, transition variables, and shocks into the
contributions of each individual measurement variable. The resulting
output database will include one extra subdatabase called `.cont`. In
the `.cont` subdatabase, each time series will have Ny columns where Ny
is the number of measurement variables in the model. The k-th column will
be the contribution of the observations on the k-th measurement variable.
 
The contributions are additive for linearised variables, and
multiplicative for log-linearised variables (log variables). The
difference between the actual path for a particular variable and the sum
of the contributions (or their product in the case of log varibles) is
due to the effect of constant terms and deterministic trends.
 
 
_Time Variation in Std Deviations, Correlations and Means of Shocks_
 
The options `Multiply=` and `Override=` modify the std deviations,
correlation coefficients or medians of shocks within the filter range,
allowing them also to vary over time. Create a time series and specify
observations for each std deviation, correlation coefficient, or median
(mean) that you want to deviate from the values currently assigned in the
model object. The time series supplied do not need to stretch over the
entire filter range: in the periods not specified, the values currently
assigned in the model object will be assumed. 
 
The option `Override=` simply overrides the std deviations, correlations
or medians (means) of the shocks whenever specified. 

The option `Mutliply=` can be used to supply multipliers for std
deviations. The numbers entered will be multiplied by the std deviations
to obtain the final std deviations used in the filter.

To alter the median (mean) of a shock, supply a time series named after
the shock itself. To alter the std deviation of a shock, use the name of
that std deviation, i.e. `std_xxx` where `xxx` is the name of the shock.
To alter the correlation coefficient between two shocks, use the name of
that correlation coefficient, i.e. `corr_xxx__yyy` where `xxx` and `yyy`
are the names of the shocks (mind the double underscore between `xxx` and
`yyy`).
 
 
__Example__



### findeqtn ### 
__Syntax__
 
    [Eqtn, Eqtn, ...] = findeqtn(M, Label, Label, ...)
 
 
__Input Arguments__
 
* `m` [ model ] - Model object in which the equations will be searched
for.
 
* `Label` [ char | rexp ] - Equation labels that will be searched for,
or rexp objects (regular expressions) against which the labels will be
matched.
 
 
__Output Arguments__
 
* `Eqtn` [ char | cellstr ] - If `Label` is a text string, `Eqtn` is
the first equation with the label `Label`; if `Label` is a rexp
object (regular expression), `Eqtn` is a cell array of equations matched
successfully against the regular expression.
 
 
__Description__
 
 
__Example__



### findname ### 
Syntax
=======
 
    [found, found, ...] = findfound(m, search, search, ...)
 
 
Input arguments
================
 
* `m` [ model ] - Model object in which names will be searched for by
their labels.
 
* `search` [ char | rexp ] - Labels of variables, shocks, or parameters that
will be searched for, or rexp objects (regular expressions) against which
the labels will be matched.
 
 
Output arguments
=================
 
* `found` [ char | cellstr ] - If `search` is a text string, `found` is
the first model name found with the label `search`; if `search` is a
rexp object (regular expression), `found` is a cell array of model names
matched successfully against the regular expression.
 
 
Description
============
 
 
Example
========



### fisher ### 
__Syntax__
 
    [F, FF, Delta, Freq] = fisher(M, NPer, PList, ...)
 
 
__Input Arguments__
 
* `M` [ model ] - Solved model object.
 
* `NPer` [ numeric ] - Length of the hypothetical range for which the
Fisher information will be computed.
 
* `PList` [ cellstr ] - List of parameters with respect to which the
likelihood function will be differentiated.
 
 
__Output Arguments__
 
* `F` [ numeric ] - Approximation of the Fisher information matrix.
 
* `FF` [ numeric ] - Contributions of individual frequencies to the total
Fisher information matrix.
 
* `Delta` [ numeric ] - Kronecker delta by which the contributions in
`Fi` need to be multiplied to sum up to `F`.
 
* `Freq` [ numeric ] - Vector of frequencies at which the Fisher
information matrix is evaluated.
 
 
__Options__
 
* `'ChkSstate='` [ `true` | *`false`* | cell ] - Check steady state in
each iteration; works only in non-linear models.
 
* `'Deviation='` [ *`true`* | `false` ] - Exclude the steady state effect
at zero frequency.
 
* `'Exclude='` [ char | cellstr | *empty* ] - List of measurement
variables that will be excluded from the likelihood function.
 
* `'Percent='` [ `true` | *`false`* ] - Report the overall Fisher matrix
`F` as Hessian w.r.t. the log of variables; the interpretation for this
is that the Fisher matrix describes the changes in the log-likelihood
function in reponse to percent, not absolute, changes in parameters.
 
* `'Progress='` [ `true` | *`false`* ] - Display progress bar in the
command window.
 
* `'Solve='` [ *`true`* | `false` | cellstr ] - Re-compute solution in
each differentiation step; you can specify a cell array with options for
the `solve` function.
 
* `'Sstate='` [ `true` | *`false`* | cell ] - Re-compute steady state in
each differentiation step; if the model is non-linear, you can pass in a
cell array with opt used in the `sstate( )` function.
 
 
__Description__
 
 
__Example__



### fmse ### 
__Syntax__
 
    [F, List, D] = fmse(M, NPer, ...)
    [F, List, D] = fmse(M, Range, ...)
 
 
__Input Arguments__
 
* `M` [ model ] - Model object for which the forecast MSE matrices will
be computed.
 
* `NPer` [ numeric ] - Number of periods.
 
* `Range` [ numeric | char ] - Date range.
 
 
__Output Arguments__
 
* `F` [ namedmat | numeric ] - Forecast MSE matrices.
 
* `List` [ cellstr ] - List of variables in rows and columns of `M`.
 
* `D` [ dbase ] - Database with the std deviations of
individual variables, i.e. the square roots of the diagonal elements of
`F`.
 
 
__Options__
 
* `'MatrixFormat='` [ *`'namedmat'`* | `'plain'` ] - Return matrix `F` as
either a [`namedmat`](namedmat/Contents) object (i.e. matrix with named
rows and columns) or a plain numeric array.
 
* `'Select='` [ *`@all`* | char | cellstr ] - Return FMSE for selected
variables only; `@all` means all variables.
 
 
__Description__
 
 
__Example__



### get ###

### horzcat ### 
__Syntax__
 
    M = [M1, M2, ...]
 
 
__Input Arguments__
 
* `M1`, `M2` [ model ] - Compatible model objects that will be merged
into one model with multiple parameterizations; the input models must be
based on the same model file.
 
 
__Output Arguments__
 
* `M` [ model ] - Output model object created by merging the input model
objects into one with multiple parameterizations.
 
 
__Description__
 
 
__Example__
 
Load the same model file with two different sets of parameters (databases
`P1` and `P2`), and merge the two model objects into one with multipler
parameterizations.
 
    m1 = model('my.model', 'assign=', P1);
    m2 = model('my.model', 'assign=', P2);
    m = [m1, m2]



### icrf ### 
__Syntax__
 
    S = icrf(M, NPer, ...)
    S = icrf(M, Range, ...)
 
 
__Input Arguments__
 
* `M` [ model ] - Model object for which the initial condition responses
will be simulated.
 
* `Range` [ numeric | char ] - Date range with the first date being the
shock date.
 
* `NPer` [ numeric ] - Number of periods.
 
 
__Output Arguments__
 
* `S` [ struct ] - Databank with initial condition response series.
 
 
__Options__
 
* `'Delog='` [ *`true`* | `false` ] - Delogarithmise the responses for
variables declared as `!log_variables`.
 
* `'Size='` [ numeric | *`1`* for linear models | *`log(1.01)`* for non-linear
models ] - Size of the deviation in initial conditions.
 
 
__Description__
 
Function `icrf` returns the responses of all model variables to a
deviation (of a given size) in one initial condition. All other
initial conditions remain undisturbed and all shocks remain zero in the
simulation.
 
 
__Example__



### ifrf ### 
Syntax
=======
 
    [W,List] = ifrf(M,Freq,...)
 
 
Input arguments
================
 
* `M` [ model ] - Model object for which the frequency response function
will be computed.
 
* `Freq` [ numeric ] - Vector of frequencies for which the response
function will be computed.
 
 
Output arguments
=================
 
* `W` [ namedmat | numeric ] - Array with frequency responses of
transition variables (in rows) to shocks (in columns).
 
* `List` [ cell ] - List of transition variables in rows of the `W`
matrix, and list of shocks in columns of the `W` matrix.
 
 
Options
========
 
* `'MatrixFormat='` [ *`'namedmat'`* | `'plain'` ] - Return matrix `W` as
either a [`namedmat`](namedmat/Contents) object (i.e. matrix with named
rows and columns) or a plain numeric array.
 
* `'select='` [ *`@all`* | char | cellstr ] - Return IFRF for selected
variables only; `@all` means all variables.
 
 
Description
============
 
Example
========



### isactive ### 
 
Syntax
=======
 
    d = isactive(m, '!links')
    flag = isactive(m, '!links', name);
    d = isactive(m, '!revisions');
    flag = isactive(m, '!revisions', name);
 
 
Input arguments
================
 
* `m` [ model ] - Model object.
 
* `name` [ char ] - Name of LHS variable in links or steady-state
revision equations whose status will be returned.
 
 
Output arguments
=================
 
* `d` [ cellstr ] - Database with the status (`true` means active,
`false` means inactive) for each LHS name in [`!links`](irislang/links)
or [`!revisions`](irislang/revisions) equations.
 
* `flag` [ `true` | `false` ] - Returns `true` for active
[`!links`](irislang/links) or [`!revisions`](irislang/revisions),
`false` for inactive (disabled).
 
 
Example
========



### iscompatible ### 
Syntax
=======
 
    Flag = iscompatible(M1,M2)
 
 
Input arguments
================
 
 
* `M1`, `M2` [ model ] - Two model objects that will be tested for
compatibility.
 
Output arguments
=================
 
* `Flag` [ `true` | `false` ] - True if `M1` and `M1` can occur in an
assignment, `M1(...) = M2(...)` or horziontal concatenation, `[M1,M2]`.
 
 
Description
============
 
The function compares the names of all variables, shocks, and parameters,
and the composition of the state-space vectors.
 
 
Example
========



### islinear ### 
Syntax
=======
 
    Flag = islinear(M)
 
 
Input arguments
================
 
* `m` [ model ] - Queried model object.
 
 
Output arguments
=================
 
* `Flag` [ `true` | `false` ] - True if the model has been declared
linear.
 
 
Description
============
 
The value returned dependes on whether the model has been declared as
linear by the user when constructing the model object by calling the
[`model/model`](model/model) function. In other words, no check is
performed whether or not the model is actually linear.
 
 
Example
========
 
    m = model('mymodel.file', 'linear=', true);
    islinear(m)
    ans =
         1



### islog ### 
Syntax
=======
 
    Flag = islog(M,Name)
 
Input arguments
================
 
* `M` [ model ] - Model object.
 
* `Name` [ char | cellstr ] - Name or names of model variable(s).
 
Output arguments
=================
 
* `Flag` [ `true` | `false` ] - True for log variables.
 
Description
============
 
Example
========



### ismissing ### 
Syntax
=======
 
    [Flag,List] = ismissing(M,Inp,Range)
 
Input arguments
================
 
* `M` [ model ] - Model object.
 
* `Inp` [ struct ] - Input database from which initical conditions are
obtained.
 
* `Range` [ numeric ] - Simulation range.%
 
Output arguments
=================
 
* `Flag` [ `true` | `false` ] - True if one or more initial conditions
required for simulation of the model `M` are missing from the database
`Inp`.
 
* `List` [ cellstr ] - List of initial conditions missing from the
database `Inp`.
 
Description
============
 
The complete list of initial conditions required for simulating the model
`M` can be obtained by
 
    get(M,'required')
 
Example
========



### isname ### 
Syntax
=======
 
    Flag = isname(M,Name)
    [Flag,Flag,...] = isname(M,Name,Name,...)
 
 
Input arguments
================
 
* `M` [ model ] - Model object.
 
* `Name` [ char ] - A text string that will be matched against the names
of variables, parameters and shocks in the model object `M`.
 
 
Output arguments
=================
 
* `Flag` [ `true` | `false` ] - True for input strings that are valid
names in the model object `M`.
 
 
Description
============
 
 
Example
========



### isnan ### 
__Syntax__
 
    [Flag, List] = isnan(M, 'Parameters')
    [Flag, List] = isnan(M, 'Steady')
    [Flag, List] = isnan(M, 'Derivatives')
    [Flag, List] = isnan(M, 'Solution')
 
 
__Input Arguments__
 
* `M` [ model ] - Model object.
 
 
__Output arguments__
 
* `Flag` [ `true` | `false` ] - True if at least one `NaN` value exists
in the queried category.
 
* `List` [ cellstr ] - List of parameters (if called with `'Parameters'`)
or variables (if called with `'Steady'`) that are assigned NaN in at
least one parameter variant, or equations (if called with `'Derivatives'`)
that produce an NaN derivative in at least one parameterisation.
 
 
__Description__
 
 
__Example__



### isstationary ### 
__Syntax__
 
    Flag = isstationary(M)
    Flag = isstationary(M, Name)
    Flag = isstationary(M, LinComb)
 
 
__Input Arguments__
 
* `M` [ model ] - Model object.
 
* `Name` [ char ] - Transition variable name.
 
* `LinComb` [ char ] - Text string defining a linear combination of
transition variables; log variables need to be enclosed in `log(...)`.
 
 
__Output Arguments__
 
* `Flag` [ `true` | `false` ] - True if the model (if called without a
second input argument) or the specified transition variable or
combination of transition variables (if called with a second input
argument) is stationary.
 
 
__Description__
 
 
__Example__
 
In the following examples, `m` is a solved model object with two of its
transition variables named `X` and `Y`; the latter is a log variable:
 
    isstationary(m)
    isstationary(m, 'X')
    isstationary(m, 'log(Y)')
    isstationary(m, 'X - 0.5*log(Y)')



### jforecast ### 
__Syntax__
 
    F = jforecast(SolvedModel, InputData, Range, ...)
 
 
__Input Arguments__
 
* `SolvedModel` [ model ] - Solved model object.
 
* `InputData` [ struct ] - Input data from which the initial condition is taken.
 
* `Range` [ numeric ] - Forecast range.
 
 
__Output Arguments__
 
* `F` [ struct ] - Output struct with the judgmentally adjusted forecast.
 
 
__Options__
 
* `Anticipate=true` [ `true` | `false` ] - If true, real future shocks
are anticipated, imaginary are unanticipated; vice versa if false.
 
* `CurrentOnly=true` [ `true` | `false` ] - If `true`, MSE matrices will
be computed only for the current-dated variables, not for their lags or
leads (expectations).
 
* `Deviation=false` [ `true` | `false` ] - Treat input and output data as
deviations from balanced-growth path.
 
* `Dtrends=@auto` [ `@auto` | `true` | `false` ] - Measurement data
contain deterministic trends.
 
* `InitCond='data'` [ `'data'` | `'fixed'` ] - Use the MSE for the
initial conditions if found in the input data or treat the initial
conditions as fixed.
 
* `InitCondMSE=@auto` [ `@auto` | numeric | `0` ] - MSE for the initial
condition of the vector of backward looking variables, including their
auxiliary lags.
 
* `MeanOnly=false` [ `true` | `false` ] - Return only mean data, i.e.
 point estimates.
 
* `Plan=[ ]` [ plan | empty ] - Forecast plan specifying exogenized
variables, endogenized shocks, and conditioning variables.
 
* `StdScale=1` [ numeric | complex | `'normalize'` ] - Scale standard
deviations of shocks by this factor; if `StdScale=` is a complex number,
stdevs for anticipated and unanticipated shocks will be scaled
differently. See Description/Std Deviations.
 
* `Override=[ ]` [ struct | empty ] - Database with time-varying std
deviations or cross-correlations of shocks.
 
 
__Description__
 
Function `jforecast( )` provides similar functionality as `simulate( )`
but differs in a number of ways:
 
* `jforecast( )` returns also standard deviations for the forecasts of
model variables;
 
* `jforecast( )` can use conditioning (specified in a `plan` object)
techniques in addition to exogenizing techniques; conditiong and
exogenizing techniques can be combined together.
 
* `jforecast( )` only works with first-order approximate solution; no
nonlinear technique is available.
 
 
_Anticipated and Unanticipated Shocks_
 
When adjusting the mean of shocks (in the input database, `InputData`) or
the std deviations of shocks (in the option `Override=`), you can use
real and imaginary numbers to distinguish between anticipated and
unanticipated shocks (depending on the `Anticipate=` option):
 
* if `Anticipate=true` then real numbers describe anticipated shocks and
imaginary numbers describe unanticipated shocks;
 
* if `Anticipate=false` then real numbers describe unanticipated shocks
and imaginary numbers describe anticipated shocks;
 
 
__Example__



### length ### 
__Syntax__
 
    N = length(M)
 
 
__Input Arguments__
 
* `M` [ model | esteq ] - Model object.
 
 
__Output Arguments__
 
* `N` [ numeric ] - Number of parameter variants within the model object,
`M`.
 
 
__Description__
 
 
__Example__



### lhsmrhs ### 
__Syntax for Casual Evaluation__
 
    Q = lhsmrhs(Model, InputDatabank, Range)
 
 
__Syntax for Fast Evaluation__
 
    Q = lhsmrhs(Model, X)
 
 
__Input Arguments__
 
* `Model` [ model ] - Model object whose equations and currently assigned
parameters will be evaluated.
 
* `X` [ numeric ] - Numeric array created from an input databank by
calling the function [`data4lhsmrhs`](model/data4lhsmrhs). `X` contains
data for all `Model` quantities (measurement variables, transition
variables, shocks, parameters, and exogenous variables including a time
trend) organised in rows, plus an extra last row with time shifts for
steady-state references.
 
* `InputDatabank` [ struct ] - Input databank with data for measurement
variables, transition variables, and shocks on which the discrepancies
will be evaluated.
 
* `Range` [ numeric ] - Date range on which the discrepancies will be
evaluated.
 
 
__Output Arguments__
 
`Q` [ numeric ] - Numeric array with discrepancies between the LHS and
RHS for each model equation.
 
 
__Options__
 
`HashEquationsOnly=false` [ `true` | `false` ] - Evaluate hash equations
only.
 
`EquationSwitch='Dynamic'` [ `'Dynamic'` | `'Steady'` ] - Evaluate the
dynamic versions or the steady versions of the model equations.
 

__Description__
 
The function `lhsmrhs` evaluates the discrepancy between the LHS and the
RHS in each model equation; each lead is replaced with the actual
observation supplied in the input data. The function `lhsmrhs` does not
work for models with [references to steady state
values](irislang/sstateref).
 
The first syntax, with the array `YXET` pre-built in a prior call to
[`data4lhsmrhs`](model/data4lhsmrhs) is computationally more efficient if
you need to evaluate the LHS-RHS discrepancies repeatedly for different
parameterisations.
 
The output argument `D` is an nEqtn-by-nPer-by-nAlt array, where nEqtn is
the number of measurement and transition equations, nPer is the length of
the range on which `lhsmrhs` is evaluated, and nAlt is the greater of
the number of alternative parameterisations in `M`, and the number of
alternative datasets in the input data, `D` or `YXET`.
 
 
__Example__
 
    YXET = data4lhsmrhs(M, d, range);
    Q = lhsmrhs(M, YXET);



### loglik ### 
 
__Syntax__
 
Input arguments marked with a `~` sign may be omitted.
 
    [Obj,V,F,PE,Delta,PDelta] = loglik(M,Inp,Range,~J,...)
 
 
__Syntax for Fast One-Off Likelihood Evaluation__
 
Input arguments marked with a `~` sign may be omitted.
 
    Obj = loglik(M,Inp,Range,~J,...)
 
 
__Syntax for Repeated Fast Likelihood Evaluations__
 
Input arguments marked with a `~` sign may be omitted.
 
    % Step #1: Initialise.
    loglik(M,Inp,Range,~J,...,'persist=',true);
 
    % Step #2: Assign/change parameters.
    M... = ...; % Change parameters.
 
    % Step #3: Re-compute steady state and solution if necessary.
    M = ...;
    M = ...;
 
    % Step #4: Evaluate likelihood.
    L = loglik(M);
 
    % Repeat steps #2, #3, #4 for different values of parameters.
    % ...
 
 
__Input Arguments__
 
* `M` [ model ] - Solved model object.
 
* `Inp` [ struct | cell ] - Input database from which observations for
measurement variables will be taken.
 
* `Range` [ numeric | char ] - Date range on which the Kalman filter will
be run.
 
* `~J` [ struct | *empty* ] - Database with user-supplied time-varying
paths for std deviation, corr coefficients, or medians for shocks; `~J`
is equivalent to using the option `'vary='`, and may be omitted.
 
 
__Output Arguments__
 
* `Obj` [ numeric ] - Value of minus the log-likelihood function (or
other objective function if specified in options).
 
* `V` [ numeric ] - Estimated variance scale factor if the `'relative='`
options is true; otherwise `V` is 1.
 
* `F` [ numeric ] - Sequence of forecast MSE matrices for
measurement variables.
 
* `PE` [ struct ] - Database with prediction errors for measurement
variables; exp of prediction errors for measurement variables declared as
log variables.
 
* `Delta` [ struct ] - Databse with point estimates of the deterministic
trend parameters specified in the `'outoflik='` option.
 
* `PDelta` [ numeric ] - MSE matrix of the estimates of the `'outoflik='`
parameters.
 
 
__Options__
 
* `'objDecomp='` [ `true` | *`false`* ] - Decompose the objective
function into the contributions of individual time periods (in time
domain) or individual frequencies (in frequency domain); the
contributions are added as extra rows in the output argument `Obj`.
 
* `'persist='` [ `true` | *`false`* ] -- Pre-process and store the overhead
(data and options) for subsequent fast calls.
 
See help on [`model/filter`](model/filter) for other options available.
 
 
__Description__
 
The number of output arguments you request when calling `loglik` affects
computational efficiency. Running the function with only the first output
argument, i.e. the value of the likelihood function (minus the log of it,
in fact), results in the fastest performance.
 
The `loglik` function runs an identical Kalman filter as
[`model/filter`](model/filter), the only difference is the types and
order of output arguments returned.
 
 
_Fast Evaluation of Likelihood_
 
Every time you change the parameters, you need to update the steady state
and solution of the model if necessary by yourself, before calling
`loglik`. Follow these rules:
 
* If you only change std deviations and no other parameters, you don't
have to re-calculate steady state or solution.
 
* If the model is linear, you only need to call [`solve`](model/solve).
 
* The only exception to rules #2 and #3 is when the model has [`dynamic
links`](irislang/links) with references to some steady state values. In
that case, you must also run [`sstate`](model/sstate) after
[`solve`](model/solve) in linear models to update the steady state.
 
* If the model is non-linear, and you only change parameters that affect
transitory dynamics and not the steady state, you only need to call
[`solve`](model/solve).
 
* If the model is non-linear, and you change parameters that affect both
transitory dynamics and steady state, you must run first
[`sstate`](model/sstate) and then [`solve`](model/solve).
 
 
__Example__



### lognormal ### 
__Syntax__
 
    D = lognormal(M, D, ...)
 
 
__Input arguments__
 
* `M` [ model ] - Model on which the `filter` or `forecast` function has
been run.
 
* `D` [ struct ] - Struct or database returned from the `filter`
or `forecast` function.
 
 
__Output arguments__
 
* `D` [ struct ] - Struct including new sub-databases with requested
log-normal statistics.
 
 
__Options__
 
* `'Fresh='` [ `true` | *`false`* ] - Output structure will include only
the newly computed databases.
 
* `'Mean='` [ *`true`* | `false` ] - Compute the mean of the log-normal
distributions.
 
* `'Median='` [ *`true`* | `false` ] - Compute the median of the log-normal
distributions.
 
* `'Mode='` [ *`true`* | `false` ] - Compute the mode of the log-normal
distributions.
 
* `'Prctile='` [ numeric | *`[5, 95]`* ] - Compute the selected
percentiles of the log-normal distributions.
 
* `'Prefix='` [ char | *`'lognormal'`* ] - Prefix used in the names of
the newly created databases.
 
* `'Std='` [ *`true`* | `false` ] - Compute the std deviations of the
log-normal distributions.
 
 
__Description__
 
 
__Example__



### neighbourhood ### 
Syntax
=======
 
    [D, FigH, AxH, ObjH, LikH, EstH, BH] = neighbourhood(M, Pos, Neigh,...)
 
Input arguments
================
 
* `M` [ model | bkwmodel ] - Model or bkwmodel object.
 
* `Pos` [ poster ] - Posterior simulator (poster) object returned by
the [`model/estimate`](model/estimate) function.
 
* `Neigh` [ numeric ] - The neighbourhood in which the objective function
will be evaluated defined as multiples of the parameter estimates.
 
Output arguments
=================
 
* `D` [ struct ] - Struct describing the local behaviour of the objective
function and the data likelihood (minus log likelihood) within the
specified range around the optimum for each parameter.
 
The following output arguments are non-empty only if you choose `'plot='`
true:
 
* `FigH` [ numeric ] - Handles to the figures created.
 
* `AxH` [ numeric ] - Handles to the axes objects created.
 
* `ObjH` [ numeric ] - Handles to the objective function curves plotted.
 
* `LikH` [ numeric ] - Handles to the data likelihood curves plotted.
 
* `EstH` [ numeric ] - Handles to the actual estimate marks plotted.
 
* `BH` [ numeric ] - Handles to the bounds plotted.
 
Options
========
 
* `'plot='` [ *`true`* | `false` ] - Call the
[`grfun.plotneigh`](grfun/plotneigh) function from within `neighbourhood`
to visualise the results.
 
* `'neighbourhood='` [ struct | *empty* ] - Struct specifying the
neighbourhood points for some of the parameters; these points will be
used instead of those based on `Neigh`.
 
Plotting options
=================
 
See help on [`grfun.plotneigh`](grfun/plotneigh) for options available
when you choose `'plot='` true.
 
Description
============
 
In the output database, `D`, each parameter is a 1-by-3 cell array.
The first cell is a vector of parameter values at which the local
behaviour was investigated. The second cell is a matrix with two column
vectors: the values of the overall minimised objective function (as set
up in the [`estimate`](model/estimate) function), and the values of the
data likelihood component. The third cell is a vector of four numbers:
the parameter estimate, the value of the objective function at optimum,
the lower bound and the upper bound.
 
Example
========



### omega ### 
__Syntax for Getting Covariance Matrix__
 
    Omg = omega(M)
 
 
__Syntax for Setting Covariance Matrix__
 
    M = omega(M, Omg)
 
 
__Input Arguments__
 
* `M` [ model ] - Model object.
 
* `Omg` [ numeric ] - Covariance matrix that will be converted to new
values for std deviations and cross-corr coefficients.
 
 
__Output Arguments__
 
* `Omg` [ numeric ] - Covariance matrix of shocks or residuals based on
the currently assigned std deviations and cross-correlation coefficients.
 
* `M` [ model ] - Model object with new values for std deviations and
cross-corr coefficients based on the input covariance matrix.
 
 
__Description__
 
 
__Example__



### refresh ### 
__Syntax__
 
    M = refresh(M)
 
 
__Input Arguments__
 
* `M` [ model ] - Model object whose dynamic links will be refreshed.
 
 
__Output Arguments__
 
* `M` [ model ] - Model object with dynamic links refreshed.
 
 
__Description__
 
 
__Example__
 
    m = refresh(m)



### regress ### 
Syntax
=======
 
    [B,CovRes,R2] = regress(M,Lhs,Rhs,...)
 
Input arguments
================
 
* `M` [ model ] - Model on whose covariance matrices the popolation
regression will be based.
 
* `Lhs` [ char | cellstr ] - Lhs variables in the regression; each of the
variables must be part of the state-space vector.
 
* `Rhs` [ char | cellstr ] - Rhs variables in the regression; each of the
variables must be part of the state-space vector, or must refer to a
larger lag of a transition variable present in the state-space vector.
 
Output arguments
=================
 
* `B` [ namedmat | numeric ] - Population regression coefficients.
 
* `CovRes` [ namedmat | numeric ] - Covariance matrix of residuals from
the population regression.
 
* `R2` [ numeric ] - Coefficient of determination (R-squared).
 
Options
========
 
* `'MatrixFormat='` [ *`'namedmat'`* | `'plain'` ] - Return matrices `B`
and `CovRes` as either [`namedmat`](namedmat/Contents) object (i.e.
matrices with named rows and columns) or plain numeric arrays.
 
Description
============
 
Population regressions calculated by this function are always centred.
This means the regressions are always calculated as if estimated on
observations with their uncondional means (the steady-state levels)
removed from them.
 
The Lhs and Rhs variables that are log variables must include
`log( )` explicitly in their names. For instance, if `X` is declared
to be a log variable, then you must refer to `log(X)` or `log(X{-1})`.
 
Example
========
 
    [B,C] = regress('log(R)',{'log(R{-1})','log(dP)'});



### rename ### 
__Syntax for Renaming Model Quantities__
 
    M = rename(M, NamePair, NamePair, ...)
 
 
__Syntax for Resetting Names to Original Names__
 
    M = rename(M)
 
 
__Input Arguments__
 
* `M` [ model ] - Model objects whose quantities (variables, parameter,
shocks) will be renamed.
 
* `NamePair` [ char | string ] - Strings with two names separated by any
non-alphanumeric character(s); the first name must be an existing name,
the second name is the new name.
 
 
__Output Arguments__
 
* `M` [ model ] - Model object with some quantities renamed.
 
 
__Description__
 
The function allows to temporarily change the names of model quantities,
i.e. variables, parameters and shocks. The new names will be then used
when reading input databases, writing output databases, or returning
named matrices. When called with only one input parameter (the model
object), the function resets all names to their original names from the
source model file.
 
When specifying a renaming pair, create a string that starts with an
exiting name (i.e. the name that is to be changed), then include one or
more non-alphanumeric characters (i.e. any character other than a letter,
a digit or an underscore), and then specify the new name.
 
 
__Example__
 
An existing model object contains six quantities (variables, shocks,
parameters) with the following names:
 
    >> get(m, 'Names')
    ans =
      1x6 cell array
        {'x'}    {'y'}    {'z'}    {'eps_x'}    {'eps_y'}    {'alpha'}
 
Use the function `rename( )` to change two of the names: `x` will change
to `gdp` and `y` will change to `pie`:
 
    >> m = rename(m, 'x->gdp', 'z->pie');
 
Verify that the names have been changed:
 
    >> get(m, 'Names')
    ans =
      1x6 cell array
        {'gdp'}    {'y'}    {'pie'}    {'eps_x'}    {'eps_y'}    {'alpha'}



### reporting ### 
Syntax
=======
 
    D = reporting(M,D,Range,...)
 
 
Input arguments
================
 
* `M` [ model ] - Model object with reporting equations.
 
* `D` [ struct ] - Input database that will be used to evaluate the
reporting equations.
 
* `Range` [ numeric | char ] - Date range on which the reporting
equations will be evaluated.
 
 
Output arguments
=================
 
* `D` [ struct ] - Output database with reporting variables.
 
 
Options
========
 
See [`rpteq/run`](rpteq/run) for options available.
 
 
Description
============



### resample ### 
__Syntax__
 
Input arguments marked with a `~` sign may be omitted.
 
    Outp = resample(M, ~Inp, Range, ~NDraw, ~J, ...)
 
 
__Input Arguments__
 
* `M` [ model ] - Solved model object with single parameterization.
 
* `~Inp=[ ]` [ struct | empty ] - Input data (if needed) for the distributions of
initial condition and/or empirical shocks.
 
* `Range` [ DateWrapper ] - Resampling date range.
 
* `~NDraw=1` [ numeric ] - Number of draws; may be omitted.
 
 
__Output Arguments__
 
* `Outp` [ struct ] - Output database with resampled data.
 
 
__Options__
 
* `BootstrapMethod='Efron'` [ `'Efron'` | `'Wild'` | numeric ] - Numeric
options correspond to block sampling methods. Use a positive integer to
specify a fixed block length, or a value strictly between zero and one to
specify random block lengths based on a geometric distribution.
 
* `Deviation=false` [ `true` | `false` ] - Treat input and output data as
deviations from balanced-growth path.
 
* `Dtrends=@auto` [ `@auto` | `true` | `false` ] - Add deterministic
trends to measurement variables.
 
* `Method='MonteCarlo'` [ `'Bootstrap'` | `'mOnteCarlo'` ] - Method of
randomizing shocks and initial condition.
 
* `Progress=false` [ `true` | `false` ] - Display progress bar in the
command window.
 
* `RandomInitCond=true'` [ `true` | `false` | numeric ] - Randomise
initial condition; a number means the initial condition will be simulated
using the specified number of extra pre-sample periods.
 
* `StateVector='Alpha'` [ `'Alpha'` | `'X'` ] - When resampling initial
condition, use the transformed state vector, `Alpha`, or the vector of
original variables, `X`; this option is meant to guarantee replicability
of results.
 
* `SvdOnly=false` [ `true` | `false` ] - Do not attempt Cholesky and only
use SVD to factorize the covariance matrix when resampling initial
condition; only applies when `RandomInitCond=true`.
 
* `Override=[ ]` [ struct | empty ] - Database with user-supplied
time-varying paths for std deviations, correlation coefficients, or
medians (means) of shocks.
 
 
__Description__
 
When you use wild bootstrap for resampling the initial condition, the
results are based on an assumption that the mean of the initial condition
is the asymptotic mean implied by the model (i.e. the steady state).
 
 
__References__
 
1. Politis, D. N., & Romano, J. P. (1994). The stationary bootstrap.
Journal of the American Statistical Association, 89(428), 1303-1313.
 
 
__Example__



### reset ### 
__Syntax__
 
    M = reset(M)
    M = reset(M, Req1, Req2, ...)
 
 
__Input Arguments__
 
* `M` [ model ] -  Model object in which the requested type(s) of values
will be reset.
 
* `Req1`, `Req2`, ... [ `'Corr'` | `'Parameters'` | `'Sstate'` | `'Std'`
| `'Stdcorr'` ] - Requested type(s) of values that will be reset; if
omitted, everything will be reset.
 
 
__Output Arguments__
 
* `M` [ model ] - Model object with the requested values reset.
 
 
__Description__
 
* `'Corr'` - All cross-correlation coefficients will be reset to `0`.
 
* `'Parameters'` - All parameters will be reset to `NaN`.
 
* `'Sstate'` - All steady state values will be reset to `NaN`.
 
* `'Std'` - All std deviations will be reset to `1` (in linear models) or
`log(1.01)` (in non-linear models).
 
* `'Stdcorr'` - Equivalent to `'Std'` and `'Corr'`.
 
 
__Example__



### set ### 
__Syntax__
 
    M = set(M, Request, Value)
    M = set(M, Request, Value, Request, Value, ...)
 
__Input arguments__
 
* `M` [ model ] - Model object.
 
* `Request` [ char ] - Name of a modifiable model object property that
will be changed.
 
* `Value` [ ... ] - Value to which the property will be set.
 
 
__Output Arguments__
 
* `M` [ model ] - Model object with the requested property or properties
modified.
 
 
__Valid Requests to Model Objects__
 
_Equation Labels and Aliases_
 
* `'YLabels='`, `'XLabels='`, `'DLabels='`, `'LLabels='` [ cellstr ] -
Change the labels attached to, respectively, measurement equations (`Y`), 
transition equations (`X`), deterministic trends (`D`), and dynamic links
(`D`).
 
* `'Labels='` [ cell ] - Change the labels attached to all equations;
needs to be a cellstr matching the size of `get(M, 'labels')`.
 
* `'YeqtnAlias='`, `'XeqtnAlias='`, `'DeqtnAlias='`, `'LeqtnAlias='` [
cellstr ] - Change the aliases of, respectively, measurement equations
(`Y`), transition equations (`X`), deterministic trends (`D`), and
dynamic links (`L`).
 
* `'EqtnAlias='` [ cell ] - Change the aliases of all equations; needs to
be a cellstr matching the size of `get(M, 'eqtnAlias')`.
 
 
_Descriptions and Aliases of Variables, Shocks, and Parameters_
 
* `'YDescript='`, `'XDescript='`, `'EDescript='`, `'PDescript='` [
cellstr ] - Change the descriptions of, respectively, measurement
variables (`Y`), transition variables (`X`), shocks (`E`), and exogenous
variables (`G`).
 
* `'Descript='` [ struct ] - Change the descriptions of all variables, 
parameters, and shocks; needs to be a struct (database) with fields
corresponding to model names.
 
* `'YAlias='`, `'XAlias='`, `'EAlias='`, `'PAlias='` [ cellstr ] - Change
the aliases of, respectively, measurement variables (`Y`), transition
variables (`X`), shocks (`E`), and exogenous variables (`G`).
 
* `'Alias='` [ struct ] - Change the aliases of all variables, 
parameters, and shocks; needs to be a struct (database) with fields
corresponding to model names.
 
_Other Requests_
 
* `'NAlt='` [ numeric ] - Change the number of alternative
parameterisations.
 
* `'StdVec='` [ numeric ] - Change the whole vector of std deviations.
 
* `'BaseYear='` [ numeric ] - Change the base year for computing
deterministic time trends in measurement variables.
 
* `'Epsilon='` [ numeric ] - Change the relative differentiation step
when computing Taylor expansion.



### shockdb ### 
__Syntax__
 
Input arguments marked with a `~` sign may be omitted
 
    outputDatabank = shockdb(model, inputDatabank, range, ...)
 
 
__Input Arguments__
 
* `model` [ model ] - Model object.
 
* `inputDatabank` [ struct | empty ] - Input databank to which shock time
series will be added; if omitted or empty, a new databank will be
created; if `inputDatabank` already contains shock time series, the data
generated by `shockdb` will be added up with the existing data.
 
* `range` [ numeric ] - Date range on which the shock time series will be
generated and returned; if `inputDatabank` already contains shock time
series going before or after `range`, these will be clipped down to
`range` in the output databank.
 
 
__Output Arguments__
 
* `outputDabank` [ struct ] - Databank with newly generated shock time
series added.
 
 
__Options__
 
* `NumOfDraws=@auto` [ numeric | `@auto` ] - Number of draws (i.e.
columns) generated for each shock; if `@auto`, the number of draws is
equal to the number of alternative parameter variants in the model `M`,
or to the number of columns in shock series existing in the input
databank, `InputData`.
 
* `ShockFunc=@zeros` [ `@lhsnorm` | `@randn` | `@zeros` ] - Function used
to generate random draws for new shock time series; if `@zeros`, the new
shocks will simply be filled with zeros; the random numbers will be
adjusted by the respective covariance matrix implied by the current model
parameterization.
 
 
__Description__
 
Create a databank of time series for all model shocks.  The time series
are generated using a specified function, `ShockFunc`.  The two typical
cases are `ShockFunc=@zeros`, generating a zero time series for each
shock, and `ShockFunc=@randn`, generating random shocks from a Normal
distribution and scaled appropriately by the model shock covariance
matrix.

If the input databank, `inputDatabank`, already contains some time series
for some of the model shocks, the newly generated values will be added to
these. All other databank entries will be preserved in the output
databank unchanged.
 
 
__Example__



### shockplot ### 
__Syntax__
 
    [S, FF, AA] = shockplot(M, ShockName, Range, PlotList, ...)
 
 
__Input Arguments__
 
* `M` [ model ] - Model object that will be simulated.
 
* `ShockName` [ char ] - Name of the shock that will be simulated.
 
* `Range` [ DateWrapper ] - Date range on which the shock will be
simulated.
 
* `PlotList` [ cellstr ] - List of variables that will be reported; you
can use the syntax of [`dbase/dbplot`](dbase/dbplot).
 
 
__Output Arguments__
 
* `S` [ struct ] - Database with simulation results.
 
* `FF` [ numeric ] - Handles of figure windows created.
 
* `AA` [ numeric ] - Handles of axes objects created.
 
 
__Options Controlling the Simulation__
 
* `'Deviation='` [ *`true`* | `false` ] - See the option `'Deviation='`
in [`model/simulate`](model/simulate).
 
* `'Dtrends='` [ *`@auto`* | `true` | `false` ] - See the option
`'dtrends='` option in [`model/simulate`](model/simulate).
 
* `'ShockSize='` [ *`'std'`* | numeric ] - Size of the shock that will
be simulated; `'std'` means that one std dev of the shock will be
simulated.
 
 
__Options Controlling the Chart Plotted__
 
See help on [`dbase/dbplot`](dbase/dbplot) for other options available.
 
 
__Description__
 
The simulated shock always occurs at time `t=1`. Starting the simulation
range, `Range`, before `t=1` allows you to simulate anticipated
shocks.
 
The graphs automatically include one pre-sample period, i.e. one period
prior to the start of the simulation.
 
 
__Example__



### simulate ### 
__Syntax__
 
    [outputDatabank, outputInfo] = simulate(model, inputDatabank, range, ...)
 
 
__Input Arguments__
 
* `model` [ Model ] - Model object with a solution avalaibl for each of
its parameter variants.
 
* `inputDatabank` [ struct ] - Databank (struct) with initial conditions,
shocks, and exogenized data points for the simulation.
 
* `range` [ DateWrapper | numeric ] - Simulation range; only the start
date (the first element in `range`) and the end date (the last element in
`range`) are considered.
 
 
__Output Arguments__
 
* `outputDatabank` [ struct ] - Databank (struct) with the simulation
results; if options `AppendPresample=` or `AppendPostsample=` are not
used, the time series in `outputDatabank` span the simulation `range`
plus all necessary initial conditions for those variables that have lags
in the model.
 
 
__Options__
 
 
__Description__
 
 
__Example__


### solve ### 
__Syntax__
 
    M = solve(M, ...)
 
 
__Input Arguments__
 
* `M` [ model ] - Paramterised model object. Nonlinear models must also
have a steady state values assigned.
 
 
__Output Arguments__
 
* `M` [ model ] - Model with newly computed solution.
 
 
__Options__
 
* `Expand=0` [ numeric | `NaN` ] - Number of periods ahead up to which
the model solution will be expanded; if `NaN` the matrices needed to
support solution expansion are not calculated and stored at all and the
model cannot be used later in simulations or forecasts with anticipated
shocks or plans.
 
* `Eqtn=@all` [ `@all` | `'measurement'` | `'transition'` ] - Update
existing solution in the measurement block, or the transition block, or
both.
 
* `Error=false` [ `true` | `false` ] - Throw an error if no unique stable
solution exists; if `false`, a warning message only will be displayed.
 
* `Progress=false` [ `true` | `false` ] - Display progress bar in the
command window.
 
* `Select=true` [ `true` | `false` ] - Automatically detect which
equations need to be re-differentiated based on parameter changes from
the last time the system matrices were calculated.
 
* `Warning=true` [ `true` | `false` ] - Display warnings produced by this
function.
 
 
__Description__
 
The IRIS solver uses an ordered QZ (or generalised Schur) decomposition
to integrate out future expectations. The QZ may (very rarely) fail for
numerical reasons. IRIS  includes two patches to handle the some of the
QZ failures: a SEVN2 patch (Sum-of-EigenValues-Near-Two), and an E2C2S
patch (Eigenvalues-Too-Close-To-Swap).
 
* The SEVN2 patch: The model contains two or more unit roots, and the QZ
algorithm interprets some of them incorrectly as pairs of eigenvalues
that sum up accurately to 2, but with one of them significantly below 1
and the other significantly above 1. IRIS replaces the entries on the
diagonal of one of the QZ factor matrices with numbers that evaluate to
two unit roots.
 
* The E2C2S patch: The re-ordering of thq QZ matrices fails with a
warning `'Reordering failed because some eigenvalues are too close to
swap.'` IRIS attempts to re-order the equations until QZ works. The
number of attempts is limited to `N-1` at most where `N` is the total
number of equations.
 
 
__Example__



### srf ### 
__Syntax__
 
    S = srf(M, NPer, ...)
    S = srf(M, Range, ...)
 
 
__Input Arguments__
 
* `M` [ model ] - Model object whose shock responses will be simulated.
 
* `Range` [ numeric | char ] - Simulation date range with the first date
being the shock date.
 
* `NPer` [ numeric ] - Number of simulation periods.
 
 
__Output Arguments__
 
* `S` [ struct ] - Databank with shock response time series.
 
 
__Options__
 
* `Delog=true` [ `true` | `false` ] - Delogarithmize shock responses for
log variables.
 
* `Select=@all` [ cellstr | `@all` ] - Run the shock response function
for a selection of shocks only; `@all` means all shocks are simulated.
 
* `Size=@auto` [ `@auto` | numeric ] - Size of the shocks that will be
simulated; `@auto` means that each shock will be set to its std dev
currently assigned in the model object `M`.
 
 
__Description__

 
__Example__



### sspace ### 
__Syntax__
 
    [T, R, K, Z, H, D, U, Omg] = sspace(M, ...)
 
__Input Arguments__
 
* `M` [ model ] - Solved model object.
 
__Output Arguments__
 
* `T` [ numeric ] - Transition matrix.
 
* `R` [ numeric ] - Matrix at the shock vector in transition equations.
 
* `K` [ numeric ] - Constant vector in transition equations.
 
* `Z` [ numeric ] - Matrix mapping transition variables to measurement
variables.
 
* `H` [ numeric ] - Matrix at the shock vector in measurement
equations.
 
* `D` [ numeric ] - Constant vector in measurement equations.
 
* `U` [ numeric ] - Transformation matrix for predetermined variables.
 
* `Omg` [ numeric ] - Covariance matrix of shocks.
 
 
__Options__
 
* `'triangular='` [ *`true`* | `false` ] - If true, the state-space form
returned has the transition matrix `T` quasi triangular and the vector of
predetermined variables transformed accordingly; this is the default form
used in IRIS calculations. If false, the state-space system is based on
the original vector of transition variables.
 
 
__Description__
 
The state-space representation has the following form:
 
    [xf;alpha] = T*alpha(-1) + K + R*e
 
    y = Z*alpha + D + H*e
 
    xb = U*alpha
 
    Cov[e] = Omg
 
where `xb` is an nb-by-1 vector of predetermined (backward-looking)
transition variables and their auxiliary lags, `xf` is an nf-by-1 vector
of non-predetermined (forward-looking) variables and their auxiliary
leads, `alpha` is a transformation of `xb`, `e` is an ne-by-1 vector of
shocks, and `y` is an ny-by-1 vector of measurement variables.
Furthermore, we denote the total number of transition variables, and
their auxiliary lags and leads, nx = nb + nf.
 
The transition matrix, `T`, is, in general, rectangular nx-by-nb.
Furthremore, the transformed state vector alpha is chosen so that the
lower nb-by-nb part of `T` is quasi upper triangular.
 
You can use the `get(m, 'xVector')` function to learn about the order of
appearance of transition variables and their auxiliary lags and leads in
the vectors `xb` and `xf`. The first nf names are the vector `xf`, the
remaining nb names are the vector `xb`.



### stdscale ### 
__Syntax__
 
    M = stdscale(M, Factor)
 
__Input Arguments__
 
* `M` [ model ] - Model object whose std deviations will be rescaled.
 
* `Factor` [ numeric ] - Factor by which all std deviations in the model
object `M` will be rescaled.
 
__Output Arguments__
 
* `M` [ model ] - Model object with all of std deviations rescaled.
 
__Description__
 
 
__Example__



### steady ### 
__Syntax__
 
    [m, flag, outputInfo] = steady(m, ...)
 
 
__Input Arguments__
 
* `m` [ model ] - Parameterized model object.
 
 
__Output Arguments__
 
* `m` [ model ] - Model object with newly computed steady state assigned.
 
* `flag` [ `true` | `false` ] - True for parameter variants where steady
state has been found successfully.
 
* `outputInfo` [ struct ] - Additional information about steady state
calculations.
 
 
__Options__
 
* `'Warning='` [ *`true`* | `false` ] - Display IRIS warning produced by
this function.
 
 
__Options for Nonlinear Models__
 
* `Blocks=true` [ `true` | `false` ] - Rearrange steady-state equations
in sequential blocks before computing steady state.
 
* `Display='iter'` [ `'iter'` | `'final'` | `'notify'` | `'off'` ] -
Level of screen output.
 
* `Endogenize=[ ]` [ `@auto` | cellstr | char | *empty* ] - List of
parameters that will be endogenized when computing the steady state; the
number of endogenized parameters must match the number of transtion
variables exogenized in the `Exogenize=` option; the use of the keyword
`@auto` is explained in Description.
 
* `Exogenize=` [ `@auto` | cellstr | char | *empty* ] - List of
transition variables that will be exogenized when computing the steady
state; the number of exogenized variables must match the number of
parameters exogenized in the `'Exogenize='` option; the use of the
keyword `@auto` is explained in Description.
 
* `Fix=[ ]` [ cellstr | `AllBut` | *empty* ] - List of variables whose
steady state (both level and change) will not be computed and kept fixed
to the currently assigned values; alternatively an `AllBut` wrapper
object can be used to specify that all variables are to be fixed except
those listed.
 
* `FixGrowth=[ ]` [ cellstr | *empty* ] - Same as `Fix=` except that this
option fixes only the steady-state first difference (variables not declared as
log) or the steady-state rates of change (variables declared as log) of
each variables listed.
 
* `FixLevel=[ ]` [ cellstr | *empty* ] - Same as `Fix=` except that this
option fixes only the steady-state level of each variable listed.
 
* `Growth=false` [ `true` | `false` ] - If `true`, both the steady-state
levels and growth rates will be computed; if `false`, only the levels
will be computed assuming that either all model variables are stationary,
have stochastic trend without deterministic drift, or that the correct
steady-state changes are already assigned in the model object.
 
* `LogMinus=empty` [ cell | char | *empty* ] - List of log variables
whose steady state will be restricted to negative values in this run of
`steady`.
 
* `Reuse=false` [ `true` | `false` ] - Reuse the steady-state values
calculated for one parameter variant to initialize the steady-state
calculation for the next parameter variant.
 
* `Solver='IRIS-Qnsd'` [ `'IRIS-Qnsd'` | `'IRIS-Newton'` | `'fsolve'` |
`'lsqnonlin'` | cell ] - Numerical routine to solve the steady state of
nonlinear models complemented possibly with its options; see Description.
 
* `Unlog=[ ]` [ cell | char | *empty* ] - List of log variables that will
be temporarily treated as non-log variables in this run of `steady(~)`,
i.e.  their steady-state levels will not be restricted to either positive
or negative values.
 
 
__Options for Linear Models__
 
* `Solve=false` [ `true` | `false` ] - Calculate first-order solution
before steady state.
 
 
__Description__
 
 
_Option Growth=_
 
The option `Growth=` is `false` by default which is consistent with one
of the following situations:
 
* all model variables are either stationary or have stochastic trend but
no deterministic trend (no deterministic trend: the simplest example is a
plain vanilla random walk with no drift);
 
* the steady-state first differences (for variables not declared as log)
and steady-state rates of growth (for variables declared as log) have
been assigned (as imaginary parts) in the model object for all variables
before running `steady(~)`.
 
If some variables have an unknown deterministic trend (drift) in steady
state (for instance, a balanced growth path model), `steady(~)` needs to
be run with `Growth=true`.
 
 
_Lower and Upper Bounds_
 
Use options `'LevelBounds='` and `'GrowthBounds='` to impose lower and/or
upper bounds on steady-state levels and/or growth rates of selected
variables. Create a struct with a 1-by-2 vector `[lowerBnd, upperBnd]` for
each variable that is supposed to be bounded when the steady state is
being calculated, and pass the struct into the respective option. User
`-Inf` or `Inf` if only one of the bounds is specified. For instance, the
following piece of code
 
    bnd = struct( );
    bnd.X = [0, 10];
    bnd.Y = [-Inf, 20];
    bnd.Z = [5, Inf];
 
specifies lower bounds for variables `X` and `Z`, and upper bounds for
variables `X` and `Y`. The variables that are not bounded do not need to
be included in the struct.
 
 
_Using @auto in Options Exogenize= and Endogenize=_
 
The keyword `@auto` refers to `!steady-autoswaps` definitions and can be
used in the options `Exogenize=` and `Exogenize=` in the following three
possible combinations:
 
* Setting both `Exogenize=` and `Endogenize=` to `@auto` will
exogenize all variables from `!steady-autoswaps` definitions and
endogenize all corresponding parameters.
 
* Assigning the option `Exogenize=` an explicit list of variables while
setting `Endogenize=` to `@auto` will exogenize only the listed
variables while endogenizing the same number of the corresponding
parameters from `!steady-autoswapse` definitions. The listed variables
must each be found on the left-hand sides of a `!steady-autoswaps`
definition.
 
* Setting `Exogenize=` to `@auto` while assigning the option
`Endogenize=` an explicit list of parameters will exogenize only the
variables that occur on the left-hand sides of those `!steady-autoswaps`
definitions that have the listed parameters on their right-hand sides.
The listed parameters must each be found on the right-hand side of a
`!steady-autoswaps` definition.
 
 
_Options Fix=, FixLevel= and FixGrowth=_
 
Options `Fix=`, `FixLevel=` and `FixGrowth=` can be used for fixing the
steady state of a subset of variables (their steady-state levels,
changes, or both) to values supplied by the user before running
`steady(~)`. The fixed values need to be assigned to the respective
variables directly in the model object, and obviously need to be the
correct steady-state values. The variables are excluded from the list of
unknowns when the steady-state equations are being solved.
 
The list of variables assigned to the three options can be also defined
inversely using a `AllBut` wrapper object, constructed by passing the
list of variables that are _not_ to be fixed. For instance, in
 
    steady(m, 'FixGrowth=', AllBut('x', 'y'))
 
 the steady-state growth of all variables except `x` and `y` will be
 fixed (and needs to be supplied before calling this `steady(~)`).
 
 
__Example__
 
This example illustrates the use of the keyword `@auto` in
exogenizing/endogenizing variabes/parameters. Assume that the underlying
model file included the following sections:
 
    !variables
        W, X, Y, Z
 
    !parameters
        alpha, beta, gamma, delta
 
    !steady-autoswaps
        W := alpha;
        Y := beta;
        Z := delta;
 
Running the following command
 
    m = steady(m, 'Exogenize=', @auto, 'Endogenize=', @auto)
 
will calculate the steady state with all three variables from the
`!steady-autoswaps` defintions, `W`, `Y`, and `Z`, exogenized to their
currently assigned values while endogenizing the three corresponding
parameters, `alpha`, `beta`, and `delta`.
 
Running the following command
 
    m = steady(m, 'Exogenize=', {'W', 'Z'}, 'Endogenize=', @auto)
 
will calculate the steady state with the two listed variables, `W` and
`Z`, exogenized and the corresponding parameters, `alpha` and `delta`, 
endogenized.
 
Finally, running the following command
 
    m = steady(m, 'Exogenize=', @auto, 'Endogenize=', {'delta', 'beta'})
 
will calculate the steady state with two variables, `Z` and `Y`, 
(corresponding to the endogenized parameters listed) exogenized while
endogenizing the listed parameters, `alpha` and `delta`.



### steadydb ### 
 
__Syntax__
 
Input arguments marked with a `~` sign may be omitted.
 
    [D, IsDev] = steadydb(Model, SimulationRange, ~NumOfColumns, ...)
 
 
__Input Arguments__
 
* `Model` [ model ] - Model object for which the sstate database will be
created.
 
* `SimulationRange` [ numeric ] - Intended simulation range; the
steady-state or balanced-growth-path database will be created on a range
that also automatically includes all the necessary lags.
 
* `~NumOfColumns=1` [ numeric ] - Number of columns created in the time
series object for each variable; the input argument `NumOfColumns` can be only
used on models with one parameterisation.
 
 
__Options__
 
* `ShockFunc=@zeros` [ `@lhsnorm` | `@randn` | `@zeros` ] - Function used
to generate data for shocks. If `@zeros`, the shocks will simply be
filled with zeros. Otherwise, the random numbers will be drawn using the
specified function and adjusted by the respective covariance matrix
implied by the current model parameterization.
 
 
__Output Arguments__
 
* `D` [ struct ] - Database with a steady-state or balanced-growth path
tseries object for each model variable, and a scalar or vector of the
currently assigned values for each model parameter.
 
* `IsDev` [ `false` ] - The second output argument is always `false`, and
can be used to set the option `Deviation=` in
[`model/simulate`](model/simulate).
 
 
__Description__
 
 
__Example__



### subsasgn ### 
__Syntax for Assigning Parameterisations from Other Object
 
    M(Index) = N
 
 
__Syntax for Deleting Specified Parameter Variants__
 
    M(Index) = [ ]
 
 
__Syntax for Assigning Parameter Values or Steady Values__
 
    M.Name = X
    M(Index).Name = X
    M.Name(Index) = X
 
 
__Syntax for Assigning Std Deviations or Cross-Correlations of Shocks__
 
    M.Std_Name = X
    M.Corr_Name1__Name2 = X
 
Double underscore is used to separate the names of shocks in correlation
coefficients.
 
 
__Input Arguments__
 
* `M` [ model ] - Model object that will be assigned new parameter
variants or new parameter values or new steady values.
 
* `N` [ model ] - Model object compatible with `M` whose parameter
variants will be assigned (copied) into `M`.
 
* `Index` [ numeric ] - Index of parameter variants that will be assigned
or deleted.
 
* `Name`, `Name1`, `Name2` [ char ] - Name of a variable, shock, or
parameter.
 
* `X` [ numeric ] - A value (or a vector of values) that will be assigned
to a parameter or variable Named `Name`.
 
 
__Output Arguments__
 
* `M` [ model ] - Model object with newly assigned or deleted parameter
variants, or with newly assigned parameters, or steady values.
 
 
__Description__
 
 
__Example__
 
Expand the number of parameter variants in a model object that has
initially just one parameter variant:
 
    m(1:10) = m;
 
The parameter variants is simply copied ten times within the model
object.



### subsref ### 
__Syntax for Retrieving Object with Subset of Parameter Variants__
 
    M(Inx)
 
 
__Syntax for Retrieving Parameters or Steady-State Values__
 
    M.Name
 
 
__Syntax to Retrieve Std Deviations or Cross-correlation of Shocks__
 
    M.std_ShockName
    M.corr_ShockName1__ShockName2
 
A double underscore is used to separate the names of shocks in
correlation coefficients.
 
 
__Input Arguments__
 
* `M` [ model ] - Model object.
 
* `Inx` [ numeric | logical ] - Inx of requested parameterisations.
 
* `Name` - Name of a variable, shock, or parameter.
 
* `ShockName1`, `ShockName2` - Name of a shock.
 
 
__Description__
 
 
__Example__



### system ### 
__Syntax__
 
    [A, B, C, D, F, G, H, J, List, Nf] = system(Model)
 
 
__Input Arguments__
 
* `Model` [ model ] - Model object whose system matrices will be
returned.
 
 
__Output Arguments__
 
* `A`, `B`, `C`, `D`, `F`, `G`, `H` , `J`  [ numeric ] - Matrices
of the unsolved system, see Description.
 
* `List` [ cell ] - Lists of measurement variables, transition variables
includint their auxiliary lags and leads, and shocks as they appear in
the rows and columns of the system matrices.
 
* `Nf` [ numeric ] - Number of non-predetermined (forward-looking)
transition variables (multiplied by the first `Nf` columns of matrices
`A` and `B`).
 
 
__Options__
 
* `Select=true` [ `true` | `false` ] - Automatically detect which
equations need to be re-differentiated based on parameter changes from
the last time the system matrices were calculated.
 
* `Sparse=false` [ `true` | `false` ] - Return matrices `A`, `B`, `D`,
`F`, `G`, and `J` as sparse matrices; can be set to `true` only in models
with one parameterization.
 
 
__Description__
 
The system before the model is solved has the following form:
 
    A E[xf;xb] + B [xf(-1);xb(-1)] + C + D e = 0
 
    F y + G xb + H + J e = 0
 
where `E` is a conditional expectations operator, `xf` is a vector of
non-predetermined (forward-looking) transition variables, `xb` is a
vector of predetermined (backward-looking) transition variables, `y` is a
vector of measurement variables, and `e` is a vector of transition and
measurement shocks.
 
 
__Example__



### templatedb ### 
 
__Syntax__
 
    outputDatabank = templatedb(model)
 
 
__Input Arguments__
 
 
* `model` [ model ] - Model object for which the empty template
database will be created.
 
 
__Output Arguments__
 
* `outputDatabank` [ struct ] - Empty database (a 0x0 struct)
with a field for each model name (variables, shocks,
parameters).
 
 
__Description__
 
 
__Example__



### tolerance ### 
 
Syntax for getting tolerance
=============================
 
    TolStruct = tolerance(M)
    Tol = tolerance(M, Scope)
 
 
Syntax for setting tolerance
=============================
 
    M = tolerance(M, TolStruct)
    M = tolerance(M, @default)
    M = tolerance(M, Scope, Tol)
    M = tolerance(M, Scope, @default)
 
 
Input arguments
================
 
* `M` [ model ] - Model object.
 
* `Scope` [ `'solve'` | `'eigen'` | `'mse'` ] - Scope in which the new
tolerance level will be used.
 
* `Tol` [ numeric ] - New tolerance level used to detect singularities
and unit roots; if `@default` tolerance will be set to its default value.
 
* `TolStruct` [ numeric ] - Structure with new levels of tolerance for
each scope.
 
 
Output arguments
=================
 
* `Tol` [ numeric ] - Currently assigned level of tolerance.
 
* `TolStruct` [ numeric ] - Structure with currently assigned levels of
tolerance for each scope.
 
* `M` [ model ] - Model object with the new level of tolerance set.
 
 
Description
============



### userdata ### 
Syntax for getting user data
=============================
 
    X = userdata(Obj)
 
Syntax for assigning user data
===============================
 
    OBJ = userdata(Obj,X)
 
Input arguments
================
 
* `Obj` [ model | tseries | VAR | SVAR | FAVAR ] - One of the IRIS
objects with access to user data functions.
 
* `X` [ ... ] - Any kind of data that will be attached to, and stored
within, the object `OBJ`.
 
Output arguments
=================
 
* `X` [ ... ] - User data that are currently attached to the
object.
 
* `Obj` [ model | tseries | VAR | SVAR | FAVAR ] - The object with its
user data updated.
 
Description
============
 
Example
========



### vma ### 
Syntax
=======
 
    [Phi,List] = vma(M,P,...)
 
Input arguments
================
 
* `M` [ model ] - Model object for which the VMA representation will be
computed.
 
* `P` [ numeric ] - Order up to which the VMA will be evaluated.
 
Output arguments
=================
 
* `Phi` [ namedmat | numeric ] - VMA matrices.
 
* `List` [ cell ] - List of measurement and transition variables in
the rows of the `Phi` matrix, and list of shocks in the columns of the
`Phi` matrix.
 
Option
=======
 
* `'MatrixFormat='` [ *`'namedmat'`* | `'plain'` ] - Return matrix `Phi`
as either a [`namedmat`](namedmat/Contents) object (i.e. matrix with
named rows and columns) or a plain numeric array.
 
* `'select='` [ *`@all`* | char | cellstr ] - Return VMA for selected
variables only; `@all` means all variables.
 
Description
============
 
Example
========



### xsf ### 
__Syntax__
 
    [S, D, List] = xsf(M, Freq, ...)
    [S, D, List, Freq] = xsf(M, NFreq, ...)
 
 
__Input Arguments__
 
* `M` [ model ] - Model object.
 
* `Freq` [ numeric ] - Vector of frequencies at which the XSFs will be
evaluated.
 
* `NFreq` [ numeric ] - Total number of requested frequencies; the
frequencies will be evenly spread between 0 and \(\pi\).
 
 
__Output Arguments__
 
* `S` [ namedmat | numeric ] - Power spectrum matrices.
 
* `D` [ namedmat | numeric ] - Spectral density matrices.
 
* `List` [ cellstr ] - List of variables in order of their appearance in
rows and columns of `SS` and `DD`.
 
* `Freq` [ numeric ] - Vector of frequencies at which the XSFs has been
evaluated.
 
 
__Options__
 
* `ApplyTo=@all` [ cellstr | char | `@all` ] - List of variables to which
the option `Filter=` will be applied; `@all` means all variables.
 
* `Filter=''` [ char ] - Linear filter that is applied to variables
specified by 'applyto'.
 
* `MatrixFormat='NamedMat'` [ `'NamedMat'` | `'Plain'` ] - Return
matrices `SS` and `DD` as either [`namedmat`](namedmat/Contents) objects
(i.e.  matrices with named rows and columns) or plain numeric arrays.
 
* `Progress=false` [ `true` | `false` ] - Display progress bar on in
the command window.
 
* `Select=@all` [ cellstr | char | `@all` ] - Return XSF for selected
variables only; `@all` means all variables.
 
 
__Description__
 
 
__Example__



### zerodb ### 
 
__Syntax__
 
Input arguments marked with a `~` sign may be omitted.
 
    [D, IsDev] = zerodb(Model, SimulationRange, ~NumOfColumns, ...)
 
 
__Input Arguments__
 
* `Model` [ model ] - Model object for which the zero database will be
created.
 
* `SimulationRange` [ numeric ] - Intended simulation range; the zero
database will be created on a range that also automatically includes all
the necessary lags.
 
* `~NumOfColumns` [ numeric | *`1`* ] - Number of columns created in the
time series object for each variable; the input argument `NumOfColumns`
can be only used on models with one parameterisation; may be omitted.
 
 
__Options__
 
* `ShockFunc=@zeros` [ `@lhsnorm` | `@randn` | `@zeros` ] - Function used
to generate data for shocks. If `@zeros`, the shocks will simply be
filled with zeros. Otherwise, the random numbers will be drawn using the
specified function and adjusted by the respective covariance matrix
implied by the current model parameterization.
 
 
__Output Arguments__
 
* `D` [ struct ] - Database with a tseries object filled with zeros for
each linearised variable, a tseries object filled with ones for each
log-linearised variables, and a scalar or vector of the currently
assigned values for each model parameter.
 
* `IsDev` [ `true` ] - The second output argument is always `true`, and
can be used to set the option `Deviation=` in
[`model/simulate`](model/simulate).
 
 
__Description__
 
 
__Example__

