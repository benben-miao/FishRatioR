## FishRatioR:
> Calculate the ratio and logarithmic value of species contained in several genus of a family to all species in this family

```{r setup}
install.packages("FishRatioR")

or 

devtools::install_github("benben-miao/FishRatioR")

library(FishRatioR)
```

## 1.Example data view and usage

```{r}
data("famgenspe")

famgenspe
```
| Family         | Genus           | Species |
|----------------|-----------------|---------|
| Myxinidae      | Eptatretus      | 3       |
| Chimaeridae    | Chimaera        | 1       |
| Chimaeridae    | Hydrolagus      | 1       |
| Scyliorhinidae | Apristurus      | 2       |
| Scyliorhinidae | Atelomycterus   | 1       |
| Scyliorhinidae | Cephaloscyllium | 3       |
| Scyliorhinidae | Galeus          | 1       |
| Scyliorhinidae | Halaelurus      | 1       |
| Scyliorhinidae | Parmaturus      | 1       |

## 2. Calculate Ratio values

> **Formula**: Ratio = (N_species_in_genus) / (N_species_in_family)

```{r}
ratio <- calc_ratio(famgenspe = famgenspe)

ratio
```
| Family         | Genus           | Species | Ratios            |
|----------------|-----------------|---------|-------------------|
| Chimaeridae    | Chimaera        | 1       | 0.5               |
| Chimaeridae    | Hydrolagus      | 1       | 0.5               |
| Myxinidae      | Eptatretus      | 3       | 1                 |
| Scyliorhinidae | Apristurus      | 2       | 0.222222222222222 |
| Scyliorhinidae | Atelomycterus   | 1       | 0.111111111111111 |
| Scyliorhinidae | Cephaloscyllium | 3       | 0.333333333333333 |
| Scyliorhinidae | Galeus          | 1       | 0.111111111111111 |
| Scyliorhinidae | Halaelurus      | 1       | 0.111111111111111 |
| Scyliorhinidae | Parmaturus      | 1       | 0.111111111111111 |

## 3. Calculate Ln(Ratio) values

> **Formula**: Ln(Ratio) = Ln((N_species_in_genus) / (N_species_in_family))

```{r}
ln_ratio <- calc_ln_ratio(famgenspe = famgenspe)

ln_ratio
```
| Family         | Genus           | Species | LnRatio            |
|----------------|-----------------|---------|--------------------|
| Chimaeridae    | Chimaera        | 1       | -0.693147180559945 |
| Chimaeridae    | Hydrolagus      | 1       | -0.693147180559945 |
| Myxinidae      | Eptatretus      | 3       | 0                  |
| Scyliorhinidae | Apristurus      | 2       | -1.50407739677627  |
| Scyliorhinidae | Atelomycterus   | 1       | -2.19722457733622  |
| Scyliorhinidae | Cephaloscyllium | 3       | -1.09861228866811  |
| Scyliorhinidae | Galeus          | 1       | -2.19722457733622  |
| Scyliorhinidae | Halaelurus      | 1       | -2.19722457733622  |
| Scyliorhinidae | Parmaturus      | 1       | -2.19722457733622  |

## 4. Calculate Ratio(-Ln(Ratio)) values

> **Formula**: NegMulRatio = Ratio \* (-Ln((N_species_in_genus) / (N_species_in_family)))

```{r}
mul_ratio <- calc_mul_ratio(famgenspe = famgenspe)

mul_ratio
```
| Family         | Genus           | Species | NegMulRatio       |
|----------------|-----------------|---------|-------------------|
| Chimaeridae    | Chimaera        | 1       | 0.346573590279973 |
| Chimaeridae    | Hydrolagus      | 1       | 0.346573590279973 |
| Myxinidae      | Eptatretus      | 3       | 0                 |
| Scyliorhinidae | Apristurus      | 2       | 0.334239421505839 |
| Scyliorhinidae | Atelomycterus   | 1       | 0.244136064148469 |
| Scyliorhinidae | Cephaloscyllium | 3       | 0.366204096222703 |
| Scyliorhinidae | Galeus          | 1       | 0.244136064148469 |
| Scyliorhinidae | Halaelurus      | 1       | 0.244136064148469 |
| Scyliorhinidae | Parmaturus      | 1       | 0.244136064148469 |

## 5. Calculate all values based one step

> **Formula**: Ratio = (N_species_in_genus) / (N_species_in_family), Ln(Ratio) = Ln((N_species_in_genus) / (N_species_in_family)), NegMulRatio = Ratio \* (-Ln((N_species_in_genus) / (N_species_in_family)))

```{r}
all_ratio <- calc_all(famgenspe = famgenspe)

all_ratio
```
| Family         | Genus           | Species | Ratios            | LnRatio            | NegMulRatio       |
|----------------|-----------------|---------|-------------------|--------------------|-------------------|
| Chimaeridae    | Chimaera        | 1       | 0.5               | -0.693147180559945 | 0.346573590279973 |
| Chimaeridae    | Hydrolagus      | 1       | 0.5               | -0.693147180559945 | 0.346573590279973 |
| Myxinidae      | Eptatretus      | 3       | 1                 | 0                  | 0                 |
| Scyliorhinidae | Apristurus      | 2       | 0.222222222222222 | -1.50407739677627  | 0.334239421505839 |
| Scyliorhinidae | Atelomycterus   | 1       | 0.111111111111111 | -2.19722457733622  | 0.244136064148469 |
| Scyliorhinidae | Cephaloscyllium | 3       | 0.333333333333333 | -1.09861228866811  | 0.366204096222703 |
| Scyliorhinidae | Galeus          | 1       | 0.111111111111111 | -2.19722457733622  | 0.244136064148469 |
| Scyliorhinidae | Halaelurus      | 1       | 0.111111111111111 | -2.19722457733622  | 0.244136064148469 |
| Scyliorhinidae | Parmaturus      | 1       | 0.111111111111111 | -2.19722457733622  | 0.244136064148469 |

## 6. FishRatioR for Python

> [**FishRatio PYPI Code**](https://github.com/benben-miao/FishRatio)**: <https://github.com/benben-miao/FishRatio>**
>
> [**FishRatio PYPI**](https://pypi.org/project/fishratio)**: <https://pypi.org/project/fishratio>**

```{bash}
pip install fishratio
  
fishratio --help
Usage: fishratio [OPTIONS]

     Description:

     Calculate the ratio and logarithmic value of species contained in
     several genus of a family to all species in this family.

     Examples:

     1. Get options and parameters help:

     FishRatio --help

     2. Sample command with all default parameters:

     FishRatio --input input.xlsx     or

     FishRatio --input input.xlsx --ratio true --ln_ratio true --neg_ratio
     true --output output.xlsx

     3. Only calculate (species number of genus) / (species number of
     family):

     FishRatio --input input.xlsx --ratio true --ln_ratio false --neg_ratio
     false --output output.xlsx

Options:
  --input TEXT        Full name (path + name + extension) of input file.
                      default="input.xlsx"

  --ratio BOOLEAN     Formula: (species number of genus) / (species number of
                      family) ratio value. default=True

  --ln_ratio BOOLEAN  Formula: Log(e)(ratio value). default=True
  --neg_mul BOOLEAN   Formula: -(ratio x Log(e)(ratio value)). default=True
  --output TEXT       Full name (path + name + extension) of output file.
                      default="output.xlsx"

  --help              Show this message and exit.
```
