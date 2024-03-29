% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/decor.R
\name{cpp_files}
\alias{cpp_files}
\title{`C++` files from a package}
\usage{
cpp_files(pkg = ".")
}
\arguments{
\item{pkg}{The path to a package's root directory.}
}
\value{
A character vector of `C++` files found in the package, ordered
  according to the C locale, for stability across different sessions and
  platforms.
}
\description{
`C++` files from a package
}
\examples{
# Setup
pkg <- tempfile()
dir.create(file.path(pkg, "src"), recursive = TRUE)
file.create(file.path(pkg, "src", "code.c"))
file.create(file.path(pkg, "src", "code.cpp"))

# List the files, only the C++ file will be listed
cpp_files(pkg)

# Cleanup
unlink(pkg, recursive = TRUE)
}
