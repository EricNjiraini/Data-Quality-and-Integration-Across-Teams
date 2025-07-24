
# Validation Rules in R
# These rules check data types, ranges, and missing values.

validate_data <- function(df) {
  print("Summary of Dataset:")
  print(summary(df))

  print("Missing Values by Column:")
  print(colSums(is.na(df)))

  print("Data Types:")
  print(sapply(df, class))
}
