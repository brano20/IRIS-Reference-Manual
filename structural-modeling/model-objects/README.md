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
  [`Model`](Model.md)                      | Create Model object from source model files
 
 
### Getting Information about Model Objects ###

  Function Name | Brief Description
----------------|--------------------
  [`addToDatabank`](addToDatabank.md)              | Add model quantities to existing or new databank 
  [`autocaption`](autocaption.md)                | Create captions for reporting model variables or parameters
  [`autoswap`](autoswap.md)                   | Get or set pairs of names in dynamic and steady autoswap
  [`beenSolved`](beenSolved.md)                 | True if first-order solution has been successfully calculated
  [`chkredundant`](chkredundant.md)               | Check for redundant shocks and/or parameters
  [`comment`](comment.md)                    | Get or set user comments in IRIS object
  [`eig`](eig.md)                        | Eigenvalues of model transition matrix
  [`findeqtn`](findeqtn.md)                   | Find equations by their labels
  [`findname`](findname.md)                   | Find names of variables, shocks, or parameters by their labels
  [`get`](get.md)                        | Query @Model object properties
  [`isactive`](isactive.md)                   | True if dynamic link or steady-state revision is active (not disabled)
  [`iscompatible`](iscompatible.md)               | True if two models can occur together on the LHS and RHS in an assignment
  [`islinear`](islinear.md)                   | True for models declared as linear
  [`islog`](islog.md)                      | True for log-linearised variables
  [`ismissing`](ismissing.md)                  | True if some initical conditions are missing from input database
  [`isnan`](isnan.md)                      | Check for NaNs in model object
  [`isname`](isname.md)                     | True for valid names of variables, parameters, or shocks in model object
  [`isstationary`](isstationary.md)               | True if model or specified combination of variables is stationary
  [`length`](length.md)                     | Number of parameter variants within model object
  [`omega`](omega.md)                      | Get or set the covariance matrix of shocks
  [`sspace`](sspace.md)                     | State-space matrices describing the model solution
  [`system`](system.md)                     | System matrices for unsolved model
  [`userdata`](userdata.md)                   | Get or set user data in an IRIS object
 
 
### Referencing Model Objects ###

  Function Name | Brief Description
----------------|--------------------
  [`subsasgn`](subsasgn.md)                   | Subscripted assignment for model objects
  [`subsref`](subsref.md)                    | Subscripted reference for model objects
 
 
### Changing Model Objects ###

  Function Name | Brief Description
----------------|--------------------
  [`alter`](alter.md)                      | Expand or reduce number of parameter variants in model object
  [`assign`](assign.md)                     | Assign parameters, steady states, std deviations or cross-correlations
  [`disable`](disable.md)                    | Disable dynamic links or steady-state revision equations
  [`enable`](enable.md)                     | Enable dynamic links or revision equations
  [`export`](export.md)                     | Save all export files associated with model object to current working folder
  [`horzcat`](horzcat.md)                    | Merge two or more compatible model objects into multiple parameterizations
  [`refresh`](refresh.md)                    | Refresh dynamic links
  [`reset`](reset.md)                      | Reset specific values within model object
  [`rename`](rename.md)                     | Rename temporarily model quantities
  [`stdscale`](stdscale.md)                   | Rescale all std deviations by the same factor
  [`set`](set.md)                        | Change settable model object property
 
 
### Steady State ###

  Function Name | Brief Description
----------------|--------------------
  [`blazer`](blazer.md)                     | Reorder dynamic or steady equations and variables into sequential block structure
  [`checkSteady`](checkSteady.md)                | Check if equations hold for currently assigned steady-state values
  [`steady`](steady.md)                     | Compute steady state or balance-growth path of the model
 
 
### Solution, Simulation and Forecasting ###

  Function Name | Brief Description
----------------|--------------------
  [`chkmissing`](chkmissing.md)                 | Check for missing initial values in simulation database
  [`diffsrf`](diffsrf.md)                    | Differentiate shock response functions w.r.t. specified parameters
  [`expand`](expand.md)                     | Compute forward expansion of model solution for anticipated shocks
  [`jforecast`](jforecast.md)                  | Forecast with judgmental adjustments (conditional forecasts)
  [`icrf`](icrf.md)                       | Initial-condition response functions, first-order solution only
  [`lhsmrhs`](lhsmrhs.md)                    | Discrepancy between the LHS and RHS of each model equation for given data
  [`resample`](resample.md)                   | Resample from the model implied distribution
  [`reporting`](reporting.md)                  | Evaluate reporting equations from within model object
  [`shockplot`](shockplot.md)                  | Short-cut for running and plotting plain shock simulation
  [`simulate`](simulate.md)                   | Simulate model from inputasfasfdfsfafasdfaasdfasdf 
  [`solve`](solve.md)                      | Calculate first-order accurate solution of the model
  [`srf`](srf.md)                        | First-order shock response functions
  [`tolerance`](tolerance.md)                  | Get or set model-specific tolerance levels
 
 
### Model Data ###

  Function Name | Brief Description
----------------|--------------------
  [`data4lhsmrhs`](data4lhsmrhs.md)               | Prepare data array for running `lhsmrhs`
  [`emptydb`](emptydb.md)                    | Create model database with empty time series for each variable and shock
  [`shockdb`](shockdb.md)                    | Create model-specific databank with random shocks
  [`steadydb`](steadydb.md)                   | Create model-specific steady-state or balanced-growth-path database
  [`templatedb`](templatedb.md)                 | Create model-specific template database
  [`zerodb`](zerodb.md)                     | Create model-specific zero-deviation database
 
 
### Stochastic Properties ###

  Function Name | Brief Description
----------------|--------------------
  [`acf`](acf.md)                        | Autocovariance and autocorrelation function for model variables
  [`ifrf`](ifrf.md)                       | Frequency response function to shocks
  [`fevd`](fevd.md)                       | Forecast error variance decomposition for model variables
  [`ffrf`](ffrf.md)                       | Filter frequency response function of transition variables to measurement variables
  [`fmse`](fmse.md)                       | Forecast mean square error matrices
  [`vma`](vma.md)                        | Vector moving average representation of the model
  [`xsf`](xsf.md)                        | Power spectrum and spectral density for model variables
 
 
### Identification, Estimation and Filtering ###

  Function Name | Brief Description
----------------|--------------------
  [`bn`](bn.md)                         | Beveridge-Nelson trends
  [`diffloglik`](diffloglik.md)                 | Approximate gradient and hessian of log-likelihood function
  [`estimate`](estimate.md)                   | Estimate model parameters by optimizing selected objective function
  [`filter`](filter.md)                     | Kalman smoother and estimator of out-of-likelihood parameters
  [`fisher`](fisher.md)                     | Approximate Fisher information matrix in frequency domain
  [`lognormal`](lognormal.md)                  | Characteristics of log-normal distributions returned from filter of forecast
  [`loglik`](loglik.md)                     | Evaluate minus the log-likelihood function in time or frequency domain
  [`neighbourhood`](neighbourhood.md)              | Local behaviour of the objective function around the estimated parameters
  [`regress`](regress.md)                    | Centred population regression for selected model variables
  [`VAR`](VAR.md)                        | Population VAR for selected model variables

  

## Alphabetical List of Functions ##