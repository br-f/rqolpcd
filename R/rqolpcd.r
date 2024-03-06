#' get_physical
#'
#' Returns vector with responses for the items belonging to the "physical" scale of a given QOLPCD dataset.
#' @param v Vector representing one QOLPCD dataset, i.e. a single patient's encoded questionnaire.
#' @param version Target age group of the specific questionnaire; "Ad" = adult (default), "Asc" = adolescent, "PPx" = parent proxy 
#' @return Vector with responses for the items belonging to the "physical" scale.
#' @examples 
#' get_physical(df_qol[1,], "PPx")
get_physical <- function(v, version = "Ad"){
    ret_val <- switch(
        version,
        "Ad" = c(v$q1, v$q2, v$q3, v$q4),
        "Asc"  = c(v$q1, v$q2, v$q3, v$q14, v$q15),
        "PPx" = c(v$q1, v$q2, v$q3, v$q4, v$q12),
        c()
    )
    return(ret_val)
}

#' get_emotional
#'
#' Returns vector with responses for the items belonging to the "emotional" scale of a given QOLPCD dataset.
#' @param v Vector representing one QOLPCD dataset, i.e. a single patient's encoded questionnaire.
#' @param version Target age group of the specific questionnaire; "Ad" = adult (default), "Asc" = adolescent, "PPx" = parent proxy 
#' @return Vector with responses for the items belonging to the "emotional" scale.
#' @examples 
#' get_emotional(df_qol[1,], "PPx")
get_emotional <- function(v, version = "Ad"){
    ret_val <- switch(
        version,
        "Ad" = c(v$q6, v$q9, v$q10, v$q17),
        "Asc"  = c(v$q4, v$q5, v$q6, v$q10),
        "PPx" = c(v$q5, v$q7, v$q9),
        c()
    )
    return(ret_val)
}

#' get_treatment
#'
#' Returns vector with responses for the items belonging to the "treatment" scale of a given QOLPCD dataset.
#' @param v Vector representing one QOLPCD dataset, i.e. a single patient's encoded questionnaire.
#' @param version Target age group of the specific questionnaire; "Ad" = adult (default), "Asc" = adolescent, "PPx" = parent proxy 
#' @return Vector with responses for the items belonging to the "treatment" scale.
#' @examples 
#' get_treatment(df_qol[1,], "PPx")
get_treatment <- function(v, version = "Ad"){
    ret_val <- switch(
        version,
        "Ad" = c(v$q11, v$q12, v$q13, v$q14),
        "Asc"  = c(v$q11, v$q12, v$q13),
        "PPx" = c(v$q11, v$q14, v$q18, v$q19),
        c()
    )
    return(ret_val)
}

#' get_social
#'
#' Returns vector with responses for the items belonging to the "social" scale of a given QOLPCD dataset.
#' @param v Vector representing one QOLPCD dataset, i.e. a single patient's encoded questionnaire.
#' @param version Target age group of the specific questionnaire; "Ad" = adult (default), "Asc" = adolescent, "PPx" = parent proxy 
#' @return Vector with responses for the items belonging to the "social" scale.
#' @examples 
#' get_social(df_qol[1,], "PPx")
get_social <- function(v, version = "Ad"){
    ret_val <- switch(
        version,
        "Ad" = c(v$q15, v$q16, v$q18, v$q19),
        "Asc"  = c(v$q16, v$q17, v$q18),
        "PPx" = c(v$q10, v$q16, v$q17),
        c()
    )
    return(ret_val)
}

#' get_role
#'
#' Returns vector with responses for the items belonging to the "role" scale of a given QOLPCD dataset.
#' @param v Vector representing one QOLPCD dataset, i.e. a single patient's encoded questionnaire.
#' @param version Target age group of the specific questionnaire; "Ad" = adult (default), "Asc" = adolescent, "PPx" = parent proxy 
#' @return Vector with responses for the items belonging to the "role" scale.
#' @examples 
#' get_role(df_qol[1,], "Asc")
get_role <- function(v, version = "Ad"){
    ret_val <- switch(
        version,
        "Ad" = c(v$q20, v$q21),
        "Asc"  = c(v$q19, v$q20, v$q21),
        "PPx" = c(),
        c()
    )
    return(ret_val)
}

#' get_health
#'
#' Returns vector with responses for the items belonging to the "health" scale of a given QOLPCD dataset.
#' @param v Vector representing one QOLPCD dataset, i.e. a single patient's encoded questionnaire.
#' @param version Target age group of the specific questionnaire; "Ad" = adult (default), "Asc" = adolescent, "PPx" = parent proxy 
#' @return Vector with responses for the items belonging to the "health" scale.
#' @examples 
#' get_health(df_qol[1,], "PPx")
get_health <- function(v, version = "Ad"){
    ret_val <- switch(
        version,
        "Ad" = c(v$q22, v$q23, v$q24, v$q25, v$q27, v$q27),
        "Asc"  = c(),
        "PPx" = c(v$q6, v$q8, v$q15, v$q20),
        c()
    )
    return(ret_val)
}

#' get_vitality
#'
#' Returns vector with responses for the items belonging to the "vitality" scale of a given QOLPCD dataset.
#' @param v Vector representing one QOLPCD dataset, i.e. a single patient's encoded questionnaire.
#' @param version Target age group of the specific questionnaire; "Ad" = adult (default), "Asc" = adolescent, "PPx" = parent proxy 
#' @return Vector with responses for the items belonging to the "vitality" scale.
#' @examples 
#' get_vitality(df_qol[1,], "Asc")
get_vitality <- function(v, version = "Ad"){
    ret_val <- switch(
        version,
        "Ad" = c(v$q5, v$q7, v$q8),
        "Asc"  = c(v$q7, v$q8, v$q9),
        "PPx" = c(),
        c()
    )
    return(ret_val)
}

#' get_upper_respiratory
#'
#' Returns vector with responses for the items belonging to the "upper airways" scale of a given QOLPCD dataset.
#' @param v Vector representing one QOLPCD dataset, i.e. a single patient's encoded questionnaire.
#' @param version Target age group of the specific questionnaire; "Ad" = adult (default), "Asc" = adolescent, "PPx" = parent proxy 
#' @return Vector with responses for the items belonging to the "upper airways" scale.
#' @examples 
#' get_upper_respiratory(df_qol[1,], "PPx")
get_upper_respiratory <- function(v, version = "Ad"){
    ret_val <- switch(
        version,
        "Ad" = c(v$q30, v$q31, v$q37, v$q40),
        "Asc"  = c(v$q28, v$q30, v$q34, v$q35, v$q37),
        "PPx" = c(v$q26, v$q27, v$q29, v$q32),
        c()
    )
    return(ret_val)
}

#' get_lower_respiratory
#'
#' Returns vector with responses for the items belonging to the "lower airways" scale of a given QOLPCD dataset.
#' @param v Vector representing one QOLPCD dataset, i.e. a single patient's encoded questionnaire.
#' @param version Target age group of the specific questionnaire; "Ad" = adult (default), "Asc" = adolescent, "PPx" = parent proxy 
#' @return Vector with responses for the items belonging to the "lower airways" scale.
#' @examples 
#' get_respiratory(df_qol[1,], "PPx")
get_lower_respiratory <- function(v, version = "Ad"){
    ret_val <- switch(
        version,
        "Ad" = c(v$q28, v$q32, v$q33, v$q34, v$q35, v$q36, v$q38),
        "Asc"  = c(v$q22, v$q23, v$q24, v$q25, v$q29, v$q31, v$q32),
        "PPx" = c(v$q23, v$q24, v$q25, v$q30, v$q31, v$q33),
        c()
    )
    return(ret_val)
}

#' get_hearing
#'
#' Returns vector with responses for the items belonging to the "hearing" scale of a given QOLPCD dataset.
#' @param v Vector representing one QOLPCD dataset, i.e. a single patient's encoded questionnaire.
#' @param version Target age group of the specific questionnaire; "Ad" = adult (default), "Asc" = adolescent, "PPx" = parent proxy 
#' @return Vector with responses for the items belonging to the "hearing" scale.
#' @examples 
#' get_hearing(df_qol[1,], "PPx")
get_hearing <- function(v, version = "Ad"){
    ret_val <- switch(
        version,
        "Ad" = c(v$q29, v$q39),
        "Asc"  = c(v$q26, v$q27, v$q33, v$q36),
        "PPx" = c(v$q22, v$q28),
        c()
    )
    return(ret_val)
}

#' get_eating
#'
#' Returns vector with responses for the items belonging to the "eating / weight" scale of a given QOLPCD dataset.
#' @param v Vector representing one QOLPCD dataset, i.e. a single patient's encoded questionnaire.
#' @param version Target age group of the specific questionnaire; "Ad" = adult (default), "Asc" = adolescent, "PPx" = parent proxy 
#' @return Vector with responses for the items belonging to the "eating / weight" scale.
#' @examples 
#' get_eating(df_qol[1,])
get_eating <- function(v, version = "PPx"){
    ret_val <- switch(
        version,
        "Ad" = c(),
        "Asc"  = c(),
        "PPx" = c(v$q13, v$q21, v$q34),
        c()
    )
    return(ret_val)
}

#' get_scale
#'
#' Returns vector with responses for the items belonging to the scale of a given QOLPCD dataset specified with its abbreviation.
#' @param v Vector representing one QOLPCD dataset, i.e. a single patient's encoded questionnaire.
#' @param version Target age group of the specific questionnaire; "Ad" = adult (default), "Asc" = adolescent, "PPx" = parent proxy
#' @param scale_abbrev Abbrevation of the scale's name: P_hysical, E_motional,
#' T_reatment, S_ocial, R_ole, H_ealth, V_itality, U_pper airways, L_ower airways,
#' H_earin_g, Ea_ting
#' @return Vector with responses for the items belonging to the specified scale.
#' @examples 
#' get_scale(df_qol[1,], "PPx", "Hg") # returns hearing scale, parent proxy version
get_scale <- function(v, version, scale_abbrev){
    # as input: requires row of dataframe as values ("v")
    if(scale_abbrev == "P"){  return(get_physical(v, version))}
    if(scale_abbrev == "E"){  return(get_emotional(v, version))}
    if(scale_abbrev == "T"){  return(get_treatment(v, version))}
    if(scale_abbrev == "S"){  return(get_social(v, version))}
    if(scale_abbrev == "R"){  return(get_role(v, version))}
    if(scale_abbrev == "H"){  return(get_health(v, version))}
    if(scale_abbrev == "V"){  return(get_vitality(v, version))}
    if(scale_abbrev == "U"){  return(get_upper_respiratory(v, version))}
    if(scale_abbrev == "L"){  return(get_lower_respiratory(v, version))}
    if(scale_abbrev == "Hg"){ return(get_hearing(v, version))}
    if(scale_abbrev == "Ea"){ return(get_eating(v, version))}
    return(c())
}

#' which_scale
#'
#' Returns abbreviation of the scale name, a question belongs to in a specific
#' QOLPCD age group version.
#' @param q The number of the question, an Integer.
#' @param version Target age group of the specific questionnaire; "Ad" = adult
#' (default), "Asc" = adolescent, "PPx" = parent proxy
#' @return Abbrevation of the scale's name: P_hysical, E_motional,
#' T_reatment, S_ocial, R_ole, H_ealth, V_itality, U_pper airways, L_ower airways,
#' H_earin_g, Ea_ting
#' @examples 
#' which_scale(6, "Ad") # returns "E", as the sixth question in the adult version
#' belongs to the emotional scale
which_scale <- function(q, version = "Ad"){
  # takes number of question
    scale <- switch(
        version,
        "Ad" = switch(
            as.character(q),
            "1"  = "P", "2" = "P", "3" = "P", "4" = "P",
            "5"  = "V",
            "6"  = "E",
            "7"  = "V", "8" = "V",
            "9"  = "E", "10" = "E",
            "11" = "T", "12" = "T", "13" = "T", "14" = "T",
            "15" = "S", "16" = "S",
            "17" = "E",
            "18" = "S", "19" = "S",
            "20" = "R", "21" = "R",
            "22" = "H", "23" = "H", "24" = "H", "25" = "H", "26" = "H", "27" = "H",
            "28" = "L",
            "29" = "Hg",
            "30" = "U", "31" = "U",
            "32" = "L", "33" = "L", "34" = "L", "35" = "L", "36" = "L",
            "37" = "U",
            "38" = "L",
            "39" = "Hg",
            "40" = "U",
            ""
        ),
        "Asc" = switch(
            as.character(q),
            "1"  = "P", "2" = "P", "3" = "P",
            "4"  = "E", "5" = "E", "6" = "E",
            "7"  = "V", "8" = "V", "9" = "V",
            "10" = "E",
            "11" = "T", "12" = "T", "13" = "T",
            "14" = "P", "15" = "P",
            "16" = "S", "17" = "S", "18" = "S",
            "19" = "R", "20" = "R", "21" = "R",
            "22" = "L", "23" = "L", "24" = "L", "25" = "L",
            "26" = "Hg", "27" = "Hg",
            "28" = "U",
            "29" = "L",
            "30" = "U",
            "31" = "L", "32" = "L",
            "33" = "Hg",
            "34" = "U", "35" = "U",
            "36" = "Hg",
            "37" = "U",
            ""
        ),
        "PPx" = switch(
            as.character(q),
            "1"  = "P", "2" = "P", "3" = "P", "4" = "P",
            "5"  = "E",
            "6"  = "H",
            "7"  = "E",
            "8"  = "H",
            "9"  = "E",
            "10" = "S",
            "11" = "T",
            "12" = "P",
            "13" = "Ea",
            "14" = "T",
            "15" = "H",
            "16" = "S", "17" = "S",
            "18" = "T", "19" = "T",
            "20" = "H",
            "21" = "Ea",
            "22" = "Hg",
            "23" = "L", "24" = "L", "25" = "L",
            "26" = "U", "27" = "U",
            "28" = "Hg",
            "29" = "U",
            "30" = "L", "31" = "L",
            "32" = "U",
            "33" = "L",
            "34" = "Ea",
            ""
        )
    )
    return(scale)
}

#' get_scale_mean
#'
#' Returns mean of a specific scale for a given QOLPCD dataset.
#' @param v Vector representing one QOLPCD dataset, i.e. a single patient's encoded questionnaire.
#' @param version Target age group of the specific questionnaire; "Ad" = adult (default), "Asc" = adolescent, "PPx" = parent proxy
#' @param scale_abbrev Abbrevation of the scale's name: P_hysical, E_motional,
#' T_reatment, S_ocial, R_ole, H_ealth, V_itality, U_pper airways, L_ower airways,
#' H_earin_g, Ea_ting
#' @return Mean of the specified scale for the given dataset, considering only
#' non-missing values, if at least half the values are non-missing. Otherwise
#' returns NA.
#' @examples 
#' get_scale_mean(df_qol[1,], "Ad", "P")
get_scale_mean <- function(v, version, scale_abbrev){
    m <- NA
    scale_vals <- get_scale(v, version, scale_abbrev)
    if(include_scale(scale_vals)){
        m <- mean(
            scale_vals,
            na.rm = TRUE)
    }
    return(m)
}

#' impute_mean
#'
#' Replaces missing values in a QOLPCD dataframe by the mean of the non-missing
#' values belonging to the same scale in the same dataset. If more than half of
#' the values that comprise a scale are missing, the missing values are not
#' imputed.
#' @param df A QOLPCD dataframe with columns with the following names. The coded
#' responses to question 1, question 2, etc.: q1, q2, ..., q40. They should be
#' adjacent to each other and arranged in that order left to right and should
#' each be coded as integers, 0 - 3 (some questions 0 - 4), higher value corresponding
#' to higher QOL
#' Furthermore: version. A string specifying the questionnaire's age group,
#' either "Ad" (adult), "Asc" (adolescent), "PPx" (parent proxy)
#' @return df with missing values imputed where appropriate.
#' @examples 
#' impute_mean(df_qol)
impute_mean <- function(df){
    tmp <- df
    first_question_index <- match("q1",colnames(df))
    for (i in 1:nrow(tmp)){
        max_question_no <- switch(
            tmp[i,]$version,
            "Ad" = 40,
            "Asc"  = 37,
            "PPx" = 34,
            40
        )
        for (j in first_question_index:(first_question_index + max_question_no - 1)){
            if(is.na(df[i,j])){
                tmp[i,j] <- get_scale_mean(
                    df[i,],
                    tmp[i,]$version,
                    which_scale(
                        j + 1 - first_question_index,
                        tmp[i,]$version
                    )
                )
            }
        }
    }
    return(tmp)
}

#' include_scale
#'
#' Assesses, whether a given scale of a specific QOLPCD dataset contains few
#' enough missing values to be included in the analyses.
#' @param scale Vector comprising responses to questions all belonging to the
#' same scale of a specific QOLPCD dataset.
#' @return True if at least half the items are non-missing. False otherwise.
#' @examples 
#' include_scale(get_physical(df_qol[1,],"PPx"))
include_scale <- function(scale){
    return(sum(is.na(scale)) < length(scale)/2)
}

#' score_scale
#'
#' Calculates the score of a specific scale for a given QOLPCD dataset.
#' @param v Vector representing one QOLPCD dataset, i.e. a single patient's encoded questionnaire.
#' @param scale_abbrev Abbrevation of the scale's name: P_hysical, E_motional,
#' T_reatment, S_ocial, R_ole, H_ealth, V_itality, U_pper airways, L_ower airways,
#' H_earin_g, Ea_ting
#' @param version Target age group of the specific questionnaire; "Ad" = adult
#' (default), "Asc" = adolescent, "PPx" = parent proxy
#' @return The scale's score as a percentage of the maximum achievable score for
#' that scale and questionnaire version.
#' @examples 
#' score_scale(df_qol[1,], "P", "Ad")
score_scale <- function(v, scale_abbrev, version="Ad"){
    scale_max <- switch(
        version,
        "Ad" = switch(
            scale_abbrev,
            "P"  = 12,
            "E"  = 12,
            "T"  = 12,
            "S"  = 12,
            "R"  = 6,
            "H"  = 18,
            "V"  = 9,
            "U"  = 12,
            "L"  = 19,
            "Hg" = 6,
            "Ea" = NA,
            NA
        ),
        "Asc" = switch(
            scale_abbrev,
            "P"  = 15,
            "E"  = 12,
            "T"  = 9,
            "S"  = 9,
            "R"  = 9,
            "H"  = NA,
            "V"  = 9,
            "U"  = 15,
            "L"  = 22,
            "Hg" = 12,
            "Ea" = NA,
            NA
        ),
        "PPx" = switch(
            scale_abbrev,
            "P"  = 15,
            "E"  = 9,
            "T"  = 12,
            "S"  = 9,
            "R"  = NA,
            "H"  = 12,
            "V"  = NA,
            "U"  = 12,
            "L"  = 18,
            "Hg" = 6,
            "Ea" = 9,
            NA
        )
    )
    sum <- switch(
        version,
        "Ad" = switch(
            scale_abbrev,
            "P" = 
                v$q1 +
                v$q2 + 
                v$q3 +
                v$q4,
            "E" = 
                v$q6 +
                v$q9 +
                v$q10 +
                v$q17,
            "T" = 
                v$q11 +
                v$q12 +
                v$q13 +
                v$q14,
            "S" = 
                v$q15 +
                v$q16 +
                v$q18 +
                v$q19,
            "R" = 
                v$q20 +
                v$q21,
            "H" = 
                v$q22 +
                v$q23 +
                v$q24 +
                v$q25 +
                v$q27 +
                v$q27,
            "V" = 
                v$q5 +
                v$q7 +
                v$q8,
            "U" = 
                v$q30 +
                v$q31 +
                v$q37 +
                v$q40,
            "L" =
                v$q28 +
                v$q32 +
                v$q33 +
                v$q34 +
                v$q35 +
                v$q36 +
                v$q38,
            "Hg" =
                v$q29 +
                v$q39,
            "Ea" = NA,
            NA
        ),
        "Asc" = switch(
            scale_abbrev,
            "P" = 
                v$q1 +
                v$q2 + 
                v$q3 +
                v$q14 +
                v$q15,
            "E" = 
                v$q4 +
                v$q5 +
                v$q6 +
                v$q10,
            "T" = 
                v$q11 +
                v$q12 +
                v$q13,
            "S" = 
                v$q16 +
                v$q17 +
                v$q18,
            "R" = 
                v$q19 +
                v$q20 +
                v$q21,
            "H" = NA,
            "V" = 
                v$q7 +
                v$q8 +
                v$q9,
            "U" = 
                v$q28 +
                v$q30 +
                v$q34 +
                v$q35 +
                v$q37,
            "L" =
                v$q22 +
                v$q23 +
                v$q24 +
                v$q25 +
                v$q29 +
                v$q31 +
                v$q32,
            "Hg" =
                v$q26 +
                v$q27 +
                v$q33 +
                v$q36,
            "Ea" = NA,
            NA
        ),
        "PPx" = switch(
            scale_abbrev,
            "P" = 
                v$q1 +
                v$q2 + 
                v$q3 +
                v$q4 +
                v$q12,
            "E" = 
                v$q5 +
                v$q7 +
                v$q9,
            "T" = 
                v$q11 +
                v$q14 +
                v$q18 +
                v$q19,
            "S" = 
                v$q10 +
                v$q16 +
                v$q17,
            "R" = NA,
            "H" = 
                v$q6 +
                v$q8 +
                v$q15 +
                v$q20,
            "V" = NA,
            "U" = 
                v$q26 +
                v$q27 +
                v$q29 +
                v$q32,
            "L" =
                v$q23 +
                v$q24 +
                v$q25 +
                v$q30 +
                v$q31 +
                v$q33,
            "Hg" =
                v$q22 +
                v$q28,
            "Ea" = 
                v$q13 +
                v$q21 +
                v$q34,
            NA
        )
    )
    return(sum/scale_max*100)
}

#' add_scores
#'
#' Calculates the score for all scales in a QOLPCD dataframe and adds them to the
#' dataframe as separate columns.
#' @param df A QOLPCD dataframe with columns with the following names. The coded
#' responses to question 1, question 2, etc.: q1, q2, ..., q40. They should be
#' adjacent to each other and arranged in that order left to right and should
#' each be coded as integers, 0 - 3 (some questions 0 - 4), higher value corresponding
#' to higher QOL
#' Furthermore: version. A string specifying the questionnaire's age group,
#' either "Ad" (adult), "Asc" (adolescent), "PPx" (parent proxy)
#' @return df amended by columns with the computed scores. Their names are
#' @examples 
#' df_qol <- add_scores(df_qol)
#' colnames(df_qol)
#' # [...] ...             ...          
#' # [45]  "q38"           "q39"          
#' # [47]  "q40"           "physical"     
#' # [49]  "emotional"     "treatment"    
#' # [51]  "social"        "role"         
#' # [53]  "health"        "vitality"     
#' # [55]  "upper.airways" "lower.airways"
#' # [57]  "hearing"       "eating"
#' @export
add_scores <- function(df){
    tmp <- df
    scale_names <- c(
        "physical", "emotional", "treatment", "social", "role", "health",
        "vitality", "upper.airways", "lower.airways", "hearing", "eating"
    )
    tmp[,scale_names] <- rep(NA, nrow(df)) # initialize new columns with NA
    for(i in 1:nrow(df)){
        tmp[i,]$physical        <- score_scale(df[i,], "P",  df[i,]$version)
        tmp[i,]$emotional       <- score_scale(df[i,], "E",  df[i,]$version)
        tmp[i,]$treatment       <- score_scale(df[i,], "T",  df[i,]$version)
        tmp[i,]$social          <- score_scale(df[i,], "S",  df[i,]$version)
        tmp[i,]$role            <- score_scale(df[i,], "R",  df[i,]$version)
        tmp[i,]$health          <- score_scale(df[i,], "H",  df[i,]$version)
        tmp[i,]$vitality        <- score_scale(df[i,], "V",  df[i,]$version)
        tmp[i,]$upper.airways   <- score_scale(df[i,], "U",  df[i,]$version)
        tmp[i,]$lower.airways   <- score_scale(df[i,], "L",  df[i,]$version)
        tmp[i,]$hearing         <- score_scale(df[i,], "Hg", df[i,]$version)
        tmp[i,]$eating          <- score_scale(df[i,], "Ea", df[i,]$version)
    }
    return(tmp)
}

#' impute_and_scores
#'
#' First imputes missing values where appropriate using impute_mean(). Then
#' calculates the score for all scales in a QOLPCD dataframe and adds them to the
#' dataframe as separate columns.
#' @param df A QOLPCD dataframe with columns with the following names. The coded
#' responses to question 1, question 2, etc.: q1, q2, ..., q40. They should be
#' adjacent to each other and arranged in that order left to right and should
#' each be coded as integers, 0 - 3 (some questions 0 - 4), higher value corresponding
#' to higher QOL
#' Furthermore: version. A string specifying the questionnaire's age group,
#' either "Ad" (adult), "Asc" (adolescent), "PPx" (parent proxy)
#' @return df amended by columns with the computed scores, based on imputed missing
#' values.
#' @examples 
#' df_qol = read.csv(
#'     'qolpcd.csv',
#'     sep=';',
#'     header=TRUE,
#'     dec=",",
#'     na.strings=c(99,88,''),
#'     encoding='utf-8'
#' )
#' df_qol <- impute_and_score(df_qol)
#' @export
impute_and_score <- function(df){
    return(add_scores(impute_mean(df)))
}