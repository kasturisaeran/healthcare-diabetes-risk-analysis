# Healthcare Diabetes Risk Analysis (R)

## Objective
To clean and prepare a healthcare dataset and derive diabetes risk categories
using fasting glucose levels for analytical reporting and decision support.

## Dataset
- Healthcare diabetes dataset
- 100,000 patient records
- Variables include demographics, BMI, fasting glucose, HbA1c, and diagnosis

## Tools Used
- R (base R)
- RStudio

## Data Cleaning Process
- Selected clinically relevant demographic and health variables
- Removed records with missing BMI or fasting glucose values
- Verified data structure and consistency

## Feature Engineering
- Created diabetes risk categories based on fasting glucose thresholds:
  - Normal (<100 mg/dL)
  - Pre-Diabetic (100–125 mg/dL)
  - High Risk (≥126 mg/dL)

## Outputs
- Cleaned dataset: `outputs/ckd_clean.csv`
- R script: `scripts/01_data_cleaning.R`

## Key Takeaway
The cleaned dataset enables reliable downstream analysis and visualization
of diabetes risk patterns in a healthcare population.

## Business Relevance
This analysis supports early identification of diabetes risk categories,
enabling healthcare stakeholders to prioritize preventive interventions
and improve population health outcomes.
