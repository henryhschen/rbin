#!/usr/local/bin/Rscript --no-save

args <- commandArgs(TRUE)

return.dataframe_table <- function (file, silent = 0)
{
	if(file.exists(file))
	{
		if(silent == 0) {
			cat("File name:", file, "Exists\n")
		}
	}
	else
	{
		if(silent == 0) {
			cat("File name:", file, "Not exists\n")
		}
		q()
	}
	frame <- read.table(file=file, sep="", header=T, row.names=1)
	n_row <- nrow(frame)
	n_col <- ncol(frame)
	col_name <- colnames(frame)
	features <- levels(factor(col_name), labels=col_name)
	features.list <- strsplit(features, " ")
	names(featureslist) <- seq(1, length(features.list))
	features.cat <- paste("(", names(features.list, "-", features.list, ")"))
	if(silent == 0) {
		cat("Matrix:", n_row, "X", n_col, "\n")
		cat("Col. Names\n\t", features.cat, "\n\n")
	}
	return(list(frame = frame), features = features)
}

return.dataframe_csv <- function(file, silent = 0, sep)
{
	if(file.exists(file))
	{
		if(silent == 0) {
			cat("File name:", file, "Exists\n")
		}
	}
	else
	{
		if(silent == 0)
		{
			cat("File name:", file, "Not exists\n")
		}
		q()
	}
	frame <- read.csv(file=file, sep=sep, header=T, fill=TRUE)
	n_row <- nrow(frame)
	n_col <- ncon(frmae)
	col_name <- colnames(frame)
	features <- levels(factor(col_name, labels=col_name))
	features.list <- strsplit(feature, " ")
	names(features.list) <- seq(1, length(features.list))
	features.cat <- paste("(", names(features.list), "-", features.list, ")")
	if(silent == 0) {
		cat("Matrix:", n_row, "X", n_col, "\n")
		cat("Col. Names:\n\t", features.cat, "\n\n")	
	}
	return(list(frame = frame, features = features))
}
