# Model Objects

Model objects \(objects of class `Model`\) are created from a model file. Model files are written in [IRIS Model File Language](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/daf57ac8d5e2904ecbcd91190864152e5702d116/structural-modeling/Model-File-Language.md). After a model object is created in the Matlab workspace, you can combine model functions and standard Matlab functions to work with it in your own m-files \(scripts, functions, etc.\): assign or estimate model parameters, run model simulations, calculate its stochastic properties, etc.

Model methods:

## Summary of Model Functions by Category

### Constructor

| Function Name | Brief Description |
| :--- | :--- |
| [`Model`](model-objects.md#Model) | Create Model object from source model files |

### Getting Information about Model Objects

| Function Name | Brief Description |
| :--- | :--- |
| [`addToDatabank`](model-objects.md#addToDatabank) | Add model quantities to existing or new databank |
| [`autocaption`](model-objects.md#autocaption) | Create captions for reporting model variables or parameters |
| [`autoswap`](model-objects.md#autoswap) | Get or set pairs of names in dynamic and steady autoswap |
| [`beenSolved`](model-objects.md#beenSolved) | True if first-order solution has been successfully calculated |
| [`chkredundant`](model-objects.md#chkredundant) | Check for redundant shocks and/or parameters |
| [`comment`](model-objects.md#comment) | Get or set user comments in IRIS object |
| [`eig`](model-objects.md#eig) | Eigenvalues of model transition matrix |
| [`findeqtn`](model-objects.md#findeqtn) | Find equations by their labels |
| [`findname`](model-objects.md#findname) | Find names of variables, shocks, or parameters by their labels |
| [`get`](model-objects.md#get) | Query @Model object properties |
| [`isactive`](model-objects.md#isactive) | True if dynamic link or steady-state revision is active \(not disabled\) |
| [`iscompatible`](model-objects.md#iscompatible) | True if two models can occur together on the LHS and RHS in an assignment |
| [`islinear`](model-objects.md#islinear) | True for models declared as linear |
| [`islog`](model-objects.md#islog) | True for log-linearised variables |
| [`ismissing`](model-objects.md#ismissing) | True if some initical conditions are missing from input database |
| [`isnan`](model-objects.md#isnan) | Check for NaNs in model object |
| [`isname`](model-objects.md#isname) | True for valid names of variables, parameters, or shocks in model object |
| [`isstationary`](model-objects.md#isstationary) | True if model or specified combination of variables is stationary |
| [`length`](model-objects.md#length) | Number of parameter variants within model object |
| [`omega`](model-objects.md#omega) | Get or set the covariance matrix of shocks |
| [`sspace`](model-objects.md#sspace) | State-space matrices describing the model solution |
| [`system`](model-objects.md#system) | System matrices for unsolved model |
| [`userdata`](model-objects.md#userdata) | Get or set user data in an IRIS object |

### Referencing Model Objects

| Function Name | Brief Description |
| :--- | :--- |
| [`subsasgn`](model-objects.md#subsasgn) | Subscripted assignment for model objects |
| [`subsref`](model-objects.md#subsref) | Subscripted reference for model objects |

### Changing Model Objects

| Function Name | Brief Description |
| :--- | :--- |
| [`alter`](model-objects.md#alter) | Expand or reduce number of parameter variants in model object |
| [`assign`](model-objects.md#assign) | Assign parameters, steady states, std deviations or cross-correlations |
| [`disable`](model-objects.md#disable) | Disable dynamic links or steady-state revision equations |
| [`enable`](model-objects.md#enable) | Enable dynamic links or revision equations |
| [`export`](model-objects.md#export) | Save all export files associated with model object to current working folder |
| [`horzcat`](model-objects.md#horzcat) | Merge two or more compatible model objects into multiple parameterizations |
| [`refresh`](model-objects.md#refresh) | Refresh dynamic links |
| [`reset`](model-objects.md#reset) | Reset specific values within model object |
| [`rename`](model-objects.md#rename) | Rename temporarily model quantities |
| [`stdscale`](model-objects.md#stdscale) | Rescale all std deviations by the same factor |
| [`set`](model-objects.md#set) | Change settable model object property |

### Steady State

| Function Name | Brief Description |
| :--- | :--- |
| [`blazer`](model-objects.md#blazer) | Reorder dynamic or steady equations and variables into sequential block structure |
| [`checkSteady`](model-objects.md#checkSteady) | Check if equations hold for currently assigned steady-state values |
| [`steady`](model-objects.md#steady) | Compute steady state or balance-growth path of the model |

### Solution, Simulation and Forecasting

| Function Name | Brief Description |
| :--- | :--- |
| [`chkmissing`](model-objects.md#chkmissing) | Check for missing initial values in simulation database |
| [`diffsrf`](model-objects.md#diffsrf) | Differentiate shock response functions w.r.t. specified parameters |
| [`expand`](model-objects.md#expand) | Compute forward expansion of model solution for anticipated shocks |
| [`jforecast`](model-objects.md#jforecast) | Forecast with judgmental adjustments \(conditional forecasts\) |
| [`icrf`](model-objects.md#icrf) | Initial-condition response functions, first-order solution only |
| [`lhsmrhs`](model-objects.md#lhsmrhs) | Discrepancy between the LHS and RHS of each model equation for given data |
| [`resample`](model-objects.md#resample) | Resample from the model implied distribution |
| [`reporting`](model-objects.md#reporting) | Evaluate reporting equations from within model object |
| [`shockplot`](model-objects.md#shockplot) | Short-cut for running and plotting plain shock simulation |
| [`simulate`](model-objects.md#simulate) | Simulate model from inputasfasfdfsfafasdfaasdfasdf |
| [`solve`](model-objects.md#solve) | Calculate first-order accurate solution of the model |
| [`srf`](model-objects.md#srf) | First-order shock response functions |
| [`tolerance`](model-objects.md#tolerance) | Get or set model-specific tolerance levels |

### Model Data

| Function Name | Brief Description |
| :--- | :--- |
| [`data4lhsmrhs`](model-objects.md#data4lhsmrhs) | Prepare data array for running `lhsmrhs` |
| [`emptydb`](model-objects.md#emptydb) | Create model database with empty time series for each variable and shock |
| [`shockdb`](model-objects.md#shockdb) | Create model-specific databank with random shocks |
| [`steadydb`](model-objects.md#steadydb) | Create model-specific steady-state or balanced-growth-path database |
| [`templatedb`](model-objects.md#templatedb) | Create model-specific template database |
| [`zerodb`](model-objects.md#zerodb) | Create model-specific zero-deviation database |

### Stochastic Properties

| Function Name | Brief Description |
| :--- | :--- |
| [`acf`](model-objects.md#acf) | Autocovariance and autocorrelation function for model variables |
| [`ifrf`](model-objects.md#ifrf) | Frequency response function to shocks |
| [`fevd`](model-objects.md#fevd) | Forecast error variance decomposition for model variables |
| [`ffrf`](model-objects.md#ffrf) | Filter frequency response function of transition variables to measurement variables |
| [`fmse`](model-objects.md#fmse) | Forecast mean square error matrices |
| [`vma`](model-objects.md#vma) | Vector moving average representation of the model |
| [`xsf`](model-objects.md#xsf) | Power spectrum and spectral density for model variables |

### Identification, Estimation and Filtering

| Function Name | Brief Description |
| :--- | :--- |
| [`bn`](model-objects.md#bn) | Beveridge-Nelson trends |
| [`diffloglik`](model-objects.md#diffloglik) | Approximate gradient and hessian of log-likelihood function |
| [`estimate`](model-objects.md#estimate) | Estimate model parameters by optimizing selected objective function |
| [`filter`](model-objects.md#filter) | Kalman smoother and estimator of out-of-likelihood parameters |
| [`fisher`](model-objects.md#fisher) | Approximate Fisher information matrix in frequency domain |
| [`lognormal`](model-objects.md#lognormal) | Characteristics of log-normal distributions returned from filter of forecast |
| [`loglik`](model-objects.md#loglik) | Evaluate minus the log-likelihood function in time or frequency domain |
| [`neighbourhood`](model-objects.md#neighbourhood) | Local behaviour of the objective function around the estimated parameters |
| [`regress`](model-objects.md#regress) | Centred population regression for selected model variables |
| [`VAR`](model-objects.md#VAR) | Population VAR for selected model variables |

## Alphabetical List of Functions

------------------

### `acf`

{% hint %}
`acf` Autocorrelation function
{% endhint %}

**Syntax**

```text
[C, R, list] = acf(model, ...)
```

**Input Arguments**

* `model` \[ model \] - A solved model object for which the autocorrelation

  function will be computed.

**Output Arguments**

* `C` \[ namedmat \| numeric \] - Covariance matrices.
* `R` \[ namedmat \| numeric \] - Correlation matrices.
* `list` \[ cellstr \] - List of variables in rows and columns of `C` and `R`.

**Options**

* `ApplyTo=@all` \[ cellstr \| char \| `@all` \] - List of variables to which the `Filter=` will be applied; `@all` means all variables.
* `Contributions=false` \[ `true` \| `false` \] - If `true` the contributions of individual shocks to ACFs will be computed and stored in the 5th dimension of the `C` and `R` matrices.
* `Filter=''` \[ char \] - Linear filter that is applied to variables specified by the option `ApplyTo=`.
* `NFreq=256` \[ numeric \] - Number of equally spaced frequencies over which the filter in the option `Filter=` is numerically integrated.
* `Order=0` \[ numeric \] - Order up to which ACF will be computed.
* `MatrixFormat='namedmat'` \[ `'namedmat'` \| `'plain'` \] - Return matrices `C` and `R` as either [`namedmat`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/daf57ac8d5e2904ecbcd91190864152e5702d116/structural-modeling/NamedMat/README.md) objects \(matrices with named rows and columns\) or plain numeric arrays.
* `Select=@all` \[ `@all` \| char \| cellstr \] - Return ACF for selected variables only; `@all` means all variables.

**Description**

`C` and `R` are both n-by-n-by-\(p+1\)-by-v matrices, where n is the number of measurement and transition variables \(including auxiliary lags and leads in the state space vector\), p is the order up to which the ACF is computed \(controlled by the option `Order=`\), and v is the number of parameter variants in the input model object, `M`.

If `Contributions=true`, the size of the two matrices is n-by-n-by-\(p+1\)-by-k-by-v, where k is the number of all shocks \(measurement and transition\) in the model.

_ACF with Linear Filters_

You can use the option `Filter=` to get the ACF for variables as though they were filtered through a linear filter. You can specify the filter in both the time domain \(such as first-difference filter, or Hodrick-Prescott\) and the frequncy domain \(such as a band of certain frequncies or periodicities\). The filter is a text string in which you can use the following references:

* `'L'` for the lag operator, which will be replaced with

  `'exp(-1i*freq)'`;

* `'per'` for the periodicity;
* `'freq'` for the frequency.

**Example**

A first-difference filter \(i.e. computes the ACF for the first differences of the respective variables\):

```text
[C, R] = acf(m, 'Filter=', '1-L')
```

**Example**

The cyclical component of the Hodrick-Prescott filter with the smoothing parameter, \(\lambda\), set to 1,600. The formula for the filter follows from the classical Wiener-Kolmogorov signal extraction theory,

$$w(L) = \frac{\lambda}{\lambda + \frac{1}{ | (1-L)(1-L) | ^2}}$$

```text
[C, R] = acf(m, 'Filter=', '1600/(1600 + 1/abs((1-L)^2)^2)')
```

**Example**

A band-pass filter with user-specified lower and upper bands. The band-pass filters can be defined either in frequencies or periodicities; the latter is usually more convenient. The following is a filter which retains periodicities between 4 and 40 periods \(this would be between 1 and 10 years in a quarterly model\),

```text
[C, R] = acf(m, 'Filter=', 'per>=4 & per<=40')
```

### addToDatabank

**Syntax**

Input arguments marked with a `~` sign may be omitted

```text
D = addToDatabank(What, M, D, ...)
D = addToDatabank(What, M, D, Range, ...)
```

**Input Arguments**

* `What` \[ char \| cellstr \| string \] - What model quantities to add: parameters, std deviations, cross-correlations.
* `M` \[ model \] - Model object whose parameters will be added to databank `D`.
* `D` \[ struct \] - Databank to which the model parameters will be added.
* `~Range` \[ DateWrapper \] - Date range on which time series will be created; needs to be specified for `Shocks`.

**Output Arguments**

* `D` \[ struct \] - Databank with the model parameters added.

**Description**

Function `addToDatabank( )` adds all specified model quantities to the databank, `D`, as arrays with values for all parameter variants. If no input databank is entered, a new will be created.

Specify one of the following to choose what model quantities to add:

* `'Parameters'` - add plain parameters \(no std deviations or cross correlations\)
* `'Std'` - add std deviations of model shocks
* `'NonzeroCorr'` - add nonzero cross-correlations of model shocks
* `'Corr'` - add all cross correlations of model shocks
* `'Shocks'` - add time series for model shocks
* `'Default'` - equivalent to `{'Parameters', 'Std', 'NonzeroCorr'}`

These can be specified as case-insensitive char, strings, or combined in a cellstr or a string array.

Any existing databank entries whose names coincide with the names of model parameters will be overwritten.

**Example**

```text
d = struct( );
d = addToDatabank('Parameters', m, d);
```

### alter

**Syntax**

```text
M = alter(M, N)
```

**Input arguments**

* `M` \[ model \] - Model object in which the number of parameter variants will be changed.
* `N` \[ numeric \] - New number of model variants.

**Output arguments**

* `M` \[ model \] - Model object with the new number of variants.

**Description**

If the new number of parameter variants, `N`, is greater than the current number of parameter variants in the model object, `M`, the last parameter variant \(including solution matrices, if available\) is copied an appropriate number of times.

If the new number of parameter variants, `N`, is smaller than the current number of parameter variants in the model object, `M`, an appropriate number of parameter variants is deleted from the end.

**Example**

