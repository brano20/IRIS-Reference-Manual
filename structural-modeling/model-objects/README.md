# Model Objects

Model objects \(objects of class `Model`\) are created from a model file. Model files are written in [IRIS Model File Language](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/Model-File-Language.md). After a model object is created in the Matlab workspace, you can combine model functions and standard Matlab functions to work with it in your own m-files \(scripts, functions, etc.\): assign or estimate model parameters, run model simulations, calculate its stochastic properties, etc.

Model methods:

## Summary of Model Functions by Category

### Constructor

| Function Name | Brief Description |
| :--- | :--- |
| [`Model`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/Model.md) | Create Model object from source model files |

### Getting Information about Model Objects

| Function Name | Brief Description |
| :--- | :--- |
| [`addToDatabank`](addtodatabank.md) | Add model quantities to existing or new databank |
| [`autocaption`](autocaption.md) | Create captions for reporting model variables or parameters |
| [`autoswap`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/autoswap.md) | Inquire about or assign autoswap pairs |
| [`beenSolved`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/beenSolved.md) | True if first-order solution has been successfully calculated |
| [`chkredundant`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/chkredundant.md) | Check for redundant shocks and/or parameters |
| [`comment`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/comment.md) | Get or set user comments in IRIS object |
| [`eig`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/eig.md) | Eigenvalues of model transition matrix |
| [`findeqtn`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/findeqtn.md) | Find equations by their labels |
| [`findname`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/findname.md) | Find names of variables, shocks, or parameters by their labels |
| [`get`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/get.md) | Query @Model object properties |
| [`isactive`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/isactive.md) | True if dynamic link or steady-state revision is active \(not disabled\) |
| [`iscompatible`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/iscompatible.md) | True if two models can occur together on the LHS and RHS in an assignment |
| [`islinear`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/islinear.md) | True for models declared as linear |
| [`islog`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/islog.md) | True for log-linearised variables |
| [`ismissing`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/ismissing.md) | True if some initical conditions are missing from input database |
| [`isnan`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/isnan.md) | Check for NaNs in model object |
| [`isname`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/isname.md) | True for valid names of variables, parameters, or shocks in model object |
| [`isstationary`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/isstationary.md) | True if model or specified combination of variables is stationary |
| [`length`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/length.md) | Number of parameter variants within model object |
| [`changeLogStatus`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/changeLogStatus.md) | Change log status of model variables |
| [`omega`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/omega.md) | Get or set the covariance matrix of shocks |
| [`sspace`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/sspace.md) | State-space matrices describing the model solution |
| [`system`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/system.md) | System matrices for unsolved model |
| [`userdata`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/userdata.md) | Get or set user data in an IRIS object |

### Referencing Model Objects

| Function Name | Brief Description |
| :--- | :--- |
| [`subsasgn`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/subsasgn.md) | Subscripted assignment for model objects |
| [`subsref`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/subsref.md) | Subscripted reference for model objects |

### Changing Model Objects

| Function Name | Brief Description |
| :--- | :--- |
| [`alter`](alter.md) | Expand or reduce number of parameter variants in model object |
| [`assign`](assign.md) | Assign parameters, steady states, std deviations or cross-correlations |
| [`disable`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/disable.md) | Disable dynamic links or steady-state revision equations |
| [`enable`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/enable.md) | Enable dynamic links or revision equations |
| [`export`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/export.md) | Save all export files associated with model object to current working folder |
| [`horzcat`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/horzcat.md) | Merge two or more compatible model objects into multiple parameterizations |
| [`refresh`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/refresh.md) | Refresh dynamic links |
| [`reset`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/reset.md) | Reset specific values within model object |
| [`rename`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/rename.md) | Rename temporarily model quantities |
| [`stdscale`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/stdscale.md) | Rescale all std deviations by the same factor |
| [`set`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/set.md) | Change settable model object property |

### Steady State

| Function Name | Brief Description |
| :--- | :--- |
| [`blazer`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/blazer.md) | Reorder dynamic or steady equations and variables into sequential block structure |
| [`checkSteady`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/checkSteady.md) | Check if equations hold for currently assigned steady-state values |
| [`steady`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/steady.md) | Compute steady state or balance-growth path of the model |

### Solution, Simulation and Forecasting

| Function Name | Brief Description |
| :--- | :--- |
| [`chkmissing`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/chkmissing.md) | Check for missing initial values in simulation database |
| [`diffsrf`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/diffsrf.md) | Differentiate shock response functions w.r.t. specified parameters |
| [`expand`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/expand.md) | Compute forward expansion of model solution for anticipated shocks |
| [`jforecast`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/jforecast.md) | Forecast with judgmental adjustments \(conditional forecasts\) |
| [`icrf`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/icrf.md) | Initial-condition response functions, first-order solution only |
| [`lhsmrhs`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/lhsmrhs.md) | Discrepancy between the LHS and RHS of each model equation for given data |
| [`resample`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/resample.md) | Resample from the model implied distribution |
| [`reporting`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/reporting.md) | Evaluate reporting equations from within model object |
| [`shockplot`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/shockplot.md) | Short-cut for running and plotting plain shock simulation |
| [`simulate`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/simulate.md) | Simulate model |
| [`solve`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/solve.md) | Calculate first-order accurate solution of the model |
| [`srf`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/srf.md) | First-order shock response functions |
| [`tolerance`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/tolerance.md) | Get or set model-specific tolerance levels |

### Model Data

| Function Name | Brief Description |
| :--- | :--- |
| [`data4lhsmrhs`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/data4lhsmrhs.md) | Prepare data array for running `lhsmrhs` |
| [`emptydb`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/emptydb.md) | Create model database with empty time series for each variable and shock |
| [`shockdb`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/shockdb.md) | Create model-specific databank with random shocks |
| [`steadydb`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/steadydb.md) | Create model-specific steady-state or balanced-growth-path database |
| [`templatedb`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/templatedb.md) | Create model-specific template database |
| [`zerodb`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/zerodb.md) | Create model-specific zero-deviation database |

### Stochastic Properties

| Function Name | Brief Description |
| :--- | :--- |
| [`acf`](acf.md) | Autocovariance and autocorrelation function for model variables |
| [`ifrf`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/ifrf.md) | Frequency response function to shocks |
| [`fevd`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/fevd.md) | Forecast error variance decomposition for model variables |
| [`ffrf`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/ffrf.md) | Filter frequency response function of transition variables to measurement variables |
| [`fmse`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/fmse.md) | Forecast mean square error matrices |
| [`vma`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/vma.md) | Vector moving average representation of the model |
| [`xsf`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/xsf.md) | Power spectrum and spectral density for model variables |

### Identification, Estimation and Filtering

| Function Name | Brief Description |
| :--- | :--- |
| [`bn`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/bn.md) | Beveridge-Nelson trends |
| [`diffloglik`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/diffloglik.md) | Approximate gradient and hessian of log-likelihood function |
| [`estimate`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/estimate.md) | Estimate model parameters by optimizing selected objective function |
| [`filter`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/filter.md) | Kalman smoother and estimator of out-of-likelihood parameters |
| [`fisher`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/fisher.md) | Approximate Fisher information matrix in frequency domain |
| [`lognormal`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/lognormal.md) | Characteristics of log-normal distributions returned from filter of forecast |
| [`loglik`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/loglik.md) | Evaluate minus the log-likelihood function in time or frequency domain |
| [`neighbourhood`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/neighbourhood.md) | Local behaviour of the objective function around the estimated parameters |
| [`regress`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/regress.md) | Centred population regression for selected model variables |
| [`VAR`](https://github.com/IRIS-Solutions-Team/IRIS-Reference-Manual/tree/8952201cc56181b8e0fa71669a9297a33e0c48a5/structural-modeling/model-objects/VAR.md) | Population VAR for selected model variables |

## Alphabetical List of Functions

