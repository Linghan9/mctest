\name{omcdiag}
\alias{omcdiag}
%\alias{print.omc}
%\alias{print.imc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Overall multicollinearity diagnostics measures}
\description{
Computes different overall measures of multicollinearity diagnostics for matrix of regressors. Overall measures of collinearity detection includes Determinant of the correlation matrix (Cooley and Lohnes, 1971), Farrar test of chi-square for presence of multicollinearity (Garrar and Glauber, 1967), Red Indicator (Kovacs et al., 2015), Sum of lambda inverse (Chatterjee and Price, 1977) values, Theil's indicator (Theil, 1971) and condition number (Belsley et al., 1980) with or without intercept term.
}

\usage{omcdiag(x, y, na.rm = TRUE, Inter = TRUE, detr=0.01, red=0.5,
                     conf=0.95, theil=0.5, cn=30,...) }

\arguments{
  \item{x}{A numeric design matrix and should contain more than one regressor.}
  \item{y}{A numeric vector of response variable.}
  \item{na.rm}{Whether to remove missing observations.}
  \item{Inter}{Whether to include or exclude Intercept term, by default \code{Inter=TRUE}.}
  \item{detr}{Determinant default threshold, \code{detr=0.01}.}
  \item{red}{red indicator default threshold, \code{red=0.5}.}
  \item{conf}{confidence level of Farrar Chi-Square test, \code{conf=0.95}.}
  \item{theil}{Theil's indicator default threshold, \code{theil=0.5}.}
  \item{cn}{condition number default threshold, \code{cn=30}.}
  \item{\dots}{Extra argument(s) if used will be ignored.}
}

\details{
This function detects the existence of multicollinearity by using different available diagnostic measures already available in literature such as Determinant of correlation matrix, Farrar test of chi-square, Red Indicator, Sum of lambda inverse values, Theil's Indicator and Condition Number.

Function also displays diagnostic measures value with the decision of either multicollinearity is detected by the diagnostics or not. The Value of 1 indicate that multicollinearity is detected and 0 indicate measure could not detect by the certain diagnostic measure.  A list object of class "omc" is returned:
}
\value{
  \item{odiags}{Listing of all overall diagnostic measures.}
  \item{Inter}{logical, if \code{TRUE} (the default value) a eigenvalues are returned with intercept term included.}
  \item{x}{matrix of regressors.}
  \item{Eigval}{Eigenvalues for each regressor.}
  \item{call}{The matched call.}
}
\references{
Belsely, D. A. A Guide to Using the Collinearity Diagnostics. \emph{Computer Science in Economics and Management}, \bold{4(1)}: 33--50, 1991.

Belsley, D. A., Kuh, E., and Welsch, R. E. \emph{Regression Diagnostics: Identifying Influential Data and Sources of Collinearity}. John Wiley \& Sons, New York, 1980.

Chatterjee, S. and Hadi, A. S. \emph{Regression Analysis by Example}. John Wiley \& Sons, 4th edition, New York, 2006.

Greene, W. H. \emph{Econometric Analysis}. Prentice--Hall, Upper Saddle River, New Jersey, 4th edition, 2000.

Imdad, M. U. \emph{Addressing Linear Regression Models with Correlated Regressors: Some Package Development in R} (Doctoral Thesis, Department of Statistics, Bahauddin Zakariya University, Multan, Pakistan), 2017.

Imdadullah, M., Aslam, M., and Altaf, S. mctest: An R Package for Detection of Collinearity Among Regressors. \emph{The R Journal}, \bold{8(2)}:499--509, 2016.
}

\author{Muhammad Imdad Ullah, Dr. Muhammad Aslam}

\note{Missing values in data will be removed by default. There is no method for the detection of multicollinearity, if missing values exists in the data set.}

\seealso{
Individual collinearity diagnostic measure  \code{\link{imcdiag}}
}

\examples{
## Hald Cement data
data(Hald)
x<-Hald[,-1]
y<-Hald[,1]

## all oveall diagnostic measures and eigenvalues with intercept
od<-omcdiag(x,y)

## all oveall diagnostic measures and eigenvalues without intercept
omcdiag(x,y, Inter=FALSE)

## all oveall diagnostic measures and eigenvalues with intercept
## with different determinant and confidence level threshold

omcdiag(x,y, detr=0.001, conf=0.99)

## returns the determinant of correlation matrix |X'X|
omcdiag(x,y)[1]
}

\keyword{Farrar Chi-Square }
\keyword{Red Indicator}
\keyword{Condition Number}
\keyword{Theil's Indicator}
\keyword{Determinent of correlation matrix}
\keyword{sum of lambda inverse values}
