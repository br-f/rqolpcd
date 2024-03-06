# rqolpcd
Computes scores for the scales of the QOL-PCD questionnaire's English and German versions for the adult and pediatric (adolescents, parent proxies) target groups.

## Disclaimer
This package has been written to the best of my knowledge and belief. Nevertheless, I assume no liability for the correctness of the algorithm and calculated results. Please refer to the relevant publications for details on the calculation of the scores. You may find them below.

## Obtaining rqolpcd
Using devtools, install rqolpcd with

```
library("devtools")

install_github("br-f/rqolpcd")
```

## Input data format
Reads a CSV file containing, but not limited to, columns with the following names.

Note that q1, q2, ..., q40 should be adjacent to each other and arranged in that order left to right.

``version ... String, either "Ad" (adult), "Asc" (adolescent), "PPx" (parent proxy)``

``q1 .... Int, 0 - 3; coded response to question 1, higher value corresponds to higher QOL``

``q2 .... Int, 0 - 3, coded response to question 2, ...``

``q3 .... etc. pp.``

``...``

``q40 ... Int, 0 - 3, coded response to question 40, ...``

## Usage

1. Include rqolpcd.

    ``library("rqolpcd")``

2. Read in your data in the format specified above.

    ```
    df_qol = read.csv(
        'qolpcd.csv',
        sep=';',
        header=TRUE,
        dec=",",
        na.strings=c(99,88,''),
        encoding='utf-8'
    )
    ```

3. Compute the scores with

    ``df_qol <- impute_and_score(df_qol)``


4. Returns the original dataframe, amended by the following columns.

    Scales that are not defined for an age group are scored as ``NA``.

    ``physical ....... physical score``

    ``emotional ...... emotional score``

    ``social ......... social score``

    ``treatment ...... treatment burden score``

    ``role ........... role score; only applicable to adults and adolescents``

    ``health ......... health perception score; only applicable to adults and parent proxy``

    ``vitality ....... vitality score; only applicable to adults and adolescents``

    ``upper.airways .. symptoms of the upper airways score``

    ``lower.airways .. symptoms of the lower airways score``

    ``hearing ........ hearing score``

    ``eating ......... eating / weight score; only applicabile to parent proxy questionnaires``

## Handling of missing data
If for a given questionnaire more than half of all items on a scale have been coded as missing, the scale receives ``NA`` as score.

Otherwise, missing values are imputed as the mean of all non-missing responses in that questionnaire belonging to that scale.

## References
For the original publications see
- Jane S et al. (2015): ``A quality-of-life measure for adults with primary ciliary dyskinesia: QOL-PCD``. Eur Respir J; 46:375-383.
  [``DOI 10.1183/09031936.00216214``](doi.org/10.1183/09031936.00216214)
- Dell S et al. (2016): ``Primary Ciliary Dyskinesia: First Health-related Quality-of-Life Measures for Pediatric Patients``. Ann Am Thorac Soc; 13(10):1726-1735.
  [``DOI 10.1513/AnnalsATS.201603-198OC``](doi.org/10.1513/AnnalsATS.201603-198OC)

Validated in
- Behan L et al. (2017): ``Validation of a health-related quality of life instrument for primary ciliary dyskinesia (QOL-PCD)``. Thorax; 72:832-839.
  [``DOI 10.1136/thoraxjnl-2016-209356``](doi.org/10.1136/thoraxjnl-2016-209356)
- Behan L et al. (2019): ``Validation of pediatric health-related quality of life instruments for primary ciliary dyskinesia (QOL-PCD)``. Pediatr Pulmonol; 54(12):2011-2020.
 [`` DOI 10.1002/ppul.24507``](doi.org/10.1002/ppul.24507)
