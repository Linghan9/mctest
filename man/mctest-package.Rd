\name{mctest-package}
\alias{mctest-package}

\docType{package}

\title{Overall and Individual Multicollinearity Diagnostic Measures}

\description{R package for computing popular and widely used multicollinearity diagnostic measures.}

\details{
This package contains functions for computing overall and individual multicollinearity diagnostic measures. The overall multicollinearity diagnostic measures are Determinant of correlation matrix, R-squared from regression of all \eqn{x}{x}'s on \eqn{y}{y}, Farrar and Glauber chi-square test for detecting the strength of collinearity over the complete set of regressors, Condition Index, Sum of reciprocal of Eigenvalues, Theil's and Red indicator. The individual multicollinearity diagnostic measures are Klein's rule, variance inflation factor (VIF), Tolerance (TOL), Corrected VIF (CVIF), Leamer's method, F & \eqn{R^2}{R^2} relation and Farrar & Glauber F-test. The package also indicates which regressors may be the reason of collinearity among regressors. The VIF values and eigenvalues can also be plotted. Some other statistics such as correlation matrix, Eigenvalues and condition indexes are also available in the package.

For a complete list of functions, use \code{library(help="mctest")}.
}

\author{Muhammad Imdad Ullah, Dr. Muhammad Aslam}

\keyword{ package }
