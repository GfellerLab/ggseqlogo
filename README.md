# ggseqlogoMOD

Modified code of ggseqlogo to display non-canonical (e.g. phosphorylated) amino acids in different color


### Description
 
Plotting the sequence logo of peptides with modifications in purple. Modified residues have to be in lowercase letters of the respective amino acid. 

Default values are for sequences inlcuding phosphorylated residues (i.e. sequences over an alphabet of 23 amino acids, 20 canonical amino acids plus s, t, and y).

```ggseqlogoMOD``` is a further developed version of the ```ggseqlogo``` function of the package ```ggseqlogo``` (Wagih, Omar. ggseqlogo: a versatile R package for drawing sequence logos. Bioinformatics 33, no. 22 (2017): 3645-3647. https://doi.org/10.1093/bioinformatics/btx469 PMID: 29036507), with minor changes for modified amino acids.


### Prerequisites
R package ```ggplot2```.


### Installation

```devtools::install_github("GfellerLab/ggseqlogo")```


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
library(ggseqlogo)
```

Load example data:
```
data(data_B0702, package="ggseqlogo")
```

Plot phosphorylated binding motif of HLA-B0702:
```
ggseqlogoMOD(b7p)
```


### Contact information ggseqlogoMOD

Marthe Solleder (marthe.solleder@unil.ch) and David Gfeller (david.gfeller@unil.ch).
