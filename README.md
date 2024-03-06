# rqolpcd
Computes scores for the scales of the QOL-PCD questionnaire's English and German versions for the adult and pediatric (adolescents, parent proxies) target groups.

## Disclaimer
This package has been written to the best of my knowledge and belief. Nevertheless, I assume no liability for the correctness of the algorithm and calculated results.

## Obtaining rqolpcd
Using devtools, install rqolpcd with:

``library(devtools)``

``install_github("br-f/rqolpcd")``

## Input data format
Reads a CSV file with colnames:

``ID .... String; an identifier unique to that patient``

``Ver ... String, either "Ad" (adult), "Asc" (adolescent), "PP" (parent proxy)``

``Lang .. String, either "Eng" (Englisch) or "Ger" (German)``

``q1 .... Int, 0 - 3; coded response to question 1, higher value corresponds to higher QOL``

``q2 .... Int, 0 - 3, coded response to question 2, ...``

``q3 .... etc. pp.``

``...``

``q40 ... Int, 0 - 3, coded response to question 40, ...``

## Usage

1. Include rqolpcd.

    ``library(rqolpcd)``

2. Read in your data in the format specified above.

3. Call XXXXXX

4. Returns the original dataframe, amended by the following columns, with scales that are not defined for an age group being are score as ``NA``:

    ``physical ....... physical score``

    ``emotional ...... emotional score``

    ``social ......... social score``

    ``treatment ...... treatment burden score``

    ``role ........... role score``

    ``health ......... health perception score``

    ``vitality ....... vitality score``

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
