# rqolpcd
Computes scores for the scales of the QOL-PCD questionnaire's English and German versions for the adult and pediatric (adolescents, parent proxies) target groups.

# Input data format
Reads a CSV file with colnames:

``ID .... String; an identifier unique to that patient``

``Ver ... String, either "Ad" (adult), "Asc" (adolescent), "PP" (parent proxy)``

``Lang .. String, either "Eng" (Englisch) or "Ger" (German)``

``q1 .... Int, 0 - 3; coded response to question 1, higher value corresponds to higher QOL``

``q2 .... Int, 0 - 3, coded response to question 2, ...``

``q3 .... etc. pp.``

``...``

``q40 ... Int, 0 - 3, coded response to question 40, ...``

# Usage

1. Read in your data in the format specified above.

2. Call XXXXXX

3. Returns the original dataframe, amended by the following columns:

    ``physical ..........``

    ``emotional .........``

    ``social ............``

    ``role ..............``

    ``XXX``

    ``XXX``

    ``p_diff``

    ``XXX``

    ``XXX``

    ``p_pval``

    ``XXX``
    
    ``XXX``

    ``p_reldiff``

    ``XXX``

    ``XXX``

# Handling of missing data
If for a given questionnaire more than half of all items on a scale have been coded as missing, the scale receives ``NA`` as score.

Otherwise, missing values are imputed as the mean of all non-missing responses in that questionnaire belonging to that scale.

# References
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
