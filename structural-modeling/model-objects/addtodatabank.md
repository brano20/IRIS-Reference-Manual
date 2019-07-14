# addToDatabank

Add model quantities to existing or new databank

## Syntax

Input arguments marked with a `~` sign may be omitted

```text
D = addToDatabank(What, M, D, ...)
D = addToDatabank(What, M, D, Range, ...)
```

## Input Arguments

* `What` \[ char \| cellstr \| string \] - What model quantities to add: parameters, std deviations, cross-correlations.
* `M` \[ model \] - Model object whose parameters will be added to databank `D`.
* `D` \[ struct \] - Databank to which the model parameters will be added.
* `~Range` \[ DateWrapper \] - Date range on which time series will be created; needs to be specified for `Shocks`.

## Output Arguments

* `D` \[ struct \] - Databank with the model parameters added.

## Description

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

## Example

```text
d = struct( );
d = addToDatabank('Parameters', m, d);
```

