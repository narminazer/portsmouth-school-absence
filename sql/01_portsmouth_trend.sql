-- Question: Is persistent absence in Portsmouth getting better or worse?
-- Data: DfE, Pupil absence in schools in England (1_Absence_3term_nat_reg_la.csv)
-- Persistent absence = pupils missing 10% or more of possible sessions
-- education_phase = 'Total' combines primary, secondary and special schools

SELECT time_period,
       la_name,
       education_phase,
       enrolments_pa_10_exact_percent
FROM absence
WHERE la_name = 'Portsmouth'
  AND education_phase = 'Total'
ORDER BY time_period;
