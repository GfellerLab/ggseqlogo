# ggseqlogoMOD

Modified code of ggseqlogo to display non-canonical (e.g. phosphorylated) amino acids in different color


### Description
 
Plotting the sequence logo of peptides with modifications in purple. Modified residues have to be in lowercase letters of the respective amino acid. 

Default values are for sequences inlcuding phosphorylated residues (i.e. sequences over an alphabet of 23 amino acids, 20 canonical amino acids plus s, t, and y).

```ggseqlogoMOD``` is a further developed version of the package ```ggseqlogo``` (Wagih, Omar. ggseqlogo: a versatile R package for drawing sequence logos. Bioinformatics 33, no. 22 (2017): 3645-3647. https://doi.org/10.1093/bioinformatics/btx469 PMID: 29036507), with minor changes for modified amino acids.


### Prerequisites
R package ```ggplot2```.


### Installation

```devtools::install_github("GfellerLab/ggseqlogoMOD")```


### Usage

```
ggseqlogoMOD(data, 
             smallSampleCorr = FALSE,
             col_scheme = "phosphorylated",
             additionalAA = "sty", 
             seq_type = "aa", 
             font = "helvetica_phosphorylated",
             legendText = FALSE, 
             ylim = c(0, 4.32), 
             title = NULL,
             titleSize = 24, 
             titlePos = 0.5,
             axisTextSizeX = 18, 
             axisTextSizeY = 18,
             axisTitleSize = 18, 
             ...)
```


### Arguments

```data```            A list of sequences or a position weight matrix.

```smallSampleCorr``` Include small-sample correction in information content or not.

```col_scheme```      Color scheme of plot.

```additionalAA```    Amino acids that include a modification.

```seq_type```        Sequence type of input.

```font```            Font for plot.

```legendText```      Plot legend or not.

```ylim```          Range of y-axis.

```title```       Title of plot.

```titleSize```       Size of title.

```titlePos```       Horizontal position of title.

```axisTextSizeX```   Size of x tick labels.

```axisTextSizeY```   Size of y tick labels.

```axisTitleSize```   Size of axis title.


### Examples

Load package:
```
library(ggseqlogoMOD)
```

Load example data:
```
data(data_B0702, package="ggseqlogoMOD")
```

Plot phosphorylated binding motif of HLA-B0702:
```
ggseqlogoMOD(b7p)
```


### Contact information ggseqlogoMOD

Marthe Solleder (marthe.solleder@unil.ch) and David Gfeller (david.gfeller@unil.ch).



### README ggseqlogo


<img src="https://cdn.rawgit.com/omarwagih/ggseqlogo/4938177a/inst/images/logo.svg" alt="ggseqlogo logo" width="350px"><br>
[![](http://cranlogs.r-pkg.org/badges/ggseqlogo)](http://cran.rstudio.com/web/packages/ggseqlogo/index.html)
[![](https://www.r-pkg.org/badges/version/ggseqlogo)](http://cran.rstudio.com/web/packages/ggseqlogo/index.html)
	

ggseqlogo is an R package for generating publication-ready sequence logos using ggplot2. 

## Getting started
First install `ggseqlogo` from github using the `devtools` package:

```r
devtools::install_github("omarwagih/ggseqlogo")
```

Load up the package and sample data

```r
# Load the required packages
require(ggplot2)
require(ggseqlogo)

# Some sample data
data(ggseqlogo_sample)

```

Then draw a sequence logo

```r
# Plot DNA sequence logo for transcription factor - data from JASPAR
ggseqlogo( seqs_dna$MA0001.1 )

# Plot protein sequence logo for kinase target phosphosites
ggseqlogo( seqs_aa$AKT1 )
```

For more examples, and a list of features **[see the full tutorial here](http://omarwagih.github.io/ggseqlogo/)**.


## Tutorial
A detailed tutorial on how to use ggseqlogo **[can be found here](http://omarwagih.github.io/ggseqlogo/)**.

## Citation
If you use ggseqlogo, please cite:

Wagih, Omar. ggseqlogo: a versatile R package for drawing sequence logos. _Bioinformatics_ 33, no. 22 (2017): 3645-3647.
[https://doi.org/10.1093/bioinformatics/btx469](https://doi.org/10.1093/bioinformatics/btx469) PMID: [29036507](https://www.ncbi.nlm.nih.gov/pubmed/29036507)

## Feedback
If you have any feedback or suggestions, drop me a line at (omarwagih(at)gmail.com) or open an issue on github.
