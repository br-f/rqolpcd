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

get_scale <- function(v, scale_abbrev){
    # as input: requires row of dataframe as values ("v")
    if(scale_abbrev == "P"){  return(get_physical(v))}
    if(scale_abbrev == "E"){  return(get_emotional(v))}
    if(scale_abbrev == "T"){  return(get_treatment(v))}
    if(scale_abbrev == "S"){  return(get_social(v))}
    if(scale_abbrev == "R"){  return(get_role(v))}
    if(scale_abbrev == "H"){  return(get_health(v))}
    if(scale_abbrev == "V"){  return(get_vitality(v))}
    if(scale_abbrev == "U"){  return(get_upper_respiratory(v))}
    if(scale_abbrev == "L"){  return(get_lower_respiratory(v))}
    if(scale_abbrev == "Hg"){ return(get_hearing(v))}
    if(scale_abbrev == "Ea"){ return(get_eating(v))}
    return(c())
}

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

get_scale_mean <- function(v, scale_abbrev){
    # as input: requires row of dataframe as values ("v")
    # calculate mean of all valid answers, i.e. dont count NAs into calculation
    m <- NA
    scale_vals <- get_scale(v, scale_abbrev)
    if(include_scale(scale_vals)){
        # it at least half the items have been answered validly: calculate mean
        m <- mean(
            scale_vals,
            na.rm = TRUE)
    }
    # otherwise return NA (to flag item and therefore scale to not be included later)
    return(m)
}

impute_mean <- function(df){
  # imputation by replacing all missing values (NA)
  # as input: requires row of dataframe as values ("v")
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

include_scale <- function(scale){
    # returns Bool: false if at least half the items on the scale are
    # missing values
    return(sum(is.na(scale)) < length(scale)/2)
}

score_scale <- function(v, scale_abbrev, version="Ad"){
    # as input: requires row of dataframe as values ("v")
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

impute_and_score <- function(df){
    return(add_scores(impute_mean(df)))
}