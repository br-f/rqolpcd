% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rqolpcd.r
\name{which_scale}
\alias{which_scale}
\title{which_scale}
\usage{
which_scale(q, version = "Ad")
}
\arguments{
\item{q}{The number of the question, an Integer.}

\item{version}{Target age group of the specific questionnaire; "Ad" = adult
(default), "Asc" = adolescent, "PPx" = parent proxy}
}
\value{
Abbrevation of the scale's name: P_hysical, E_motional,
T_reatment, S_ocial, R_ole, H_ealth, V_itality, U_pper airways, L_ower airways,
H_earin_g, Ea_ting
}
\description{
Returns abbreviation of the scale name, a question belongs to in a specific
QOLPCD age group version.
}
\examples{
which_scale(6, "Ad") # returns "E", as the sixth question in the adult version
belongs to the emotional scale
}
