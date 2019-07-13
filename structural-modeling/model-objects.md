# Model Objects #
 
Model objects (objects of class `Model`) are created from a model file.
Model files are written in [IRIS Model File Language](Model-File-Language.md). After a model
object is created in the Matlab workspace, you can combine model
functions and standard Matlab functions to work with it in your own
m-files (scripts, functions, etc.): assign or estimate model parameters,
run model simulations, calculate its stochastic properties, etc.
 
 
Model methods:
 
## Categorical List of Model Functions ##
 
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

  