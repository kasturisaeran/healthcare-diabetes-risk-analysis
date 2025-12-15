dir.create("data")
dir.create("scripts")
dir.create("outputs")

list.files()
list.files("data")
df <- read.csv("data/ckd_raw.csv", stringsAsFactors = FALSE)
dim(df)
head(df)
df_clean <- df[, c(
  "age",
  "gender",
  "bmi",
  "glucose_fasting",
  "hba1c",
  "systolic_bp",
  "diastolic_bp",
  "cholesterol_total",
  "diabetes_stage",
  "diagnosed_diabetes"
)]
df_clean <- df_clean[
  !is.na(df_clean$bmi) &
    !is.na(df_clean$glucose_fasting),
]
dim(df_clean)
df_clean$risk_category <- ifelse(
  df_clean$glucose_fasting >= 126, "High Risk",
  ifelse(
    df_clean$glucose_fasting >= 100, "Pre-Diabetic",
    "Normal"
  )
)

table(df_clean$risk_category)
write.csv(df_clean, "outputs/ckd_clean.csv", row.names = FALSE)
