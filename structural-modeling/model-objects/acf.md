---
description: Autocovariance and autocorrelation function for model variables
---

# acf

## Syntax

```text
[C, R, list] = acf(model, ...)
```

## Input Arguments

asdfasdfaf \_\_`model`\_\_

`model` \[ Model \| XXX \]

{% hint %}
`model`\[ Model \] 

Solved model object
{% endhint %}

## Output Arguments

**`C`** \[ namedmat \| numeric \] - Covariance matrices.

**`R`** \[ namedmat \| numeric \] - Correlation matrices.

**`list`** \[ cellstr \] - List of variables in rows and columns of `C` and `R`.

## Options

**`ApplyTo=@all`** \[ cellstr \| char \| `@all` \] - List of variables to which the `Filter=` will be applied; `@all` means all variables.

**`Contributions=false`** \[ `true` \| `false` \] - If `true` the contributions of individual shocks to ACFs will be computed and stored in the 5th dimension of the `C` and `R` matrices.

**`Filter=''`** \[ char \] - Linear filter that is applied to variables specified by the option `ApplyTo=`.

**`NFreq=256`** \[ numeric \] - Number of equally spaced frequencies over which the filter in the option `Filter=` is numerically integrated.

**`Order=0`** \[ numeric \] - Order up to which ACF will be computed.

**`MatrixFormat='namedmat'`** \[ `'namedmat'` \| `'plain'` \] - Return matrices `C` and `R` as either [`NamedMat`](../../data-management/namedmat-objects.md) objects \(matrices with named rows and columns\) or plain numeric arrays.

**`Select=@all`** \[ `@all` \| char \| cellstr \] - Return ACF for selected variables only; `@all` means all variables.

## Description

`C` and `R` are both n-by-n-by-\(p+1\)-by-v matrices, where n is the number of measurement and transition variables \(including auxiliary lags and leads in the state space vector\), p is the order up to which the ACF is computed \(controlled by the option `Order=`\), and v is the number of parameter variants in the input model object, `M`.

If `Contributions=true`, the size of the two matrices is n-by-n-by-\(p+1\)-by-k-by-v, where k is the number of all shocks \(measurement and transition\) in the model.

### ACF with Linear Filters

You can use the option `Filter=` to get the ACF for variables as though they were filtered through a linear filter. You can specify the filter in both the time domain \(such as first-difference filter, or Hodrick-Prescott\) and the frequncy domain \(such as a band of certain frequncies or periodicities\). The filter is a text string in which you can use the following references:

* `'L'` for the lag operator, which will be replaced with

  `'exp(-1i*freq)'`;

* `'per'` for the periodicity;
* `'freq'` for the frequency.

## Example

A first-difference filter \(i.e. computes the ACF for the first differences of the respective variables\):

```text
[C, R] = acf(m, 'Filter=', '1-L')
```

## Example

The cyclical component of the Hodrick-Prescott filter with the smoothing parameter, \(\lambda\), set to 1,600. The formula for the filter follows from the classical Wiener-Kolmogorov signal extraction theory,

$$w(L) = \frac{\lambda}{\lambda + \frac{1}{ | (1-L)(1-L) | ^2}}$$

```text
[C, R] = acf(m, 'Filter=', '1600/(1600 + 1/abs((1-L)^2)^2)')
```

## Example

A band-pass filter with user-specified lower and upper bands. The band-pass filters can be defined either in frequencies or periodicities; the latter is usually more convenient. The following is a filter which retains periodicities between 4 and 40 periods \(this would be between 1 and 10 years in a quarterly model\),

```text
[C, R] = acf(m, 'Filter=', 'per>=4 & per<=40')
```

