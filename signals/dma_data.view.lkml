view: dma_data {
  sql_table_name: `camus-demandforecasting.iowa_liquor_dataset.dma_data`
    ;;

  dimension: average_family_size {
    type: number
    sql: ${TABLE}.Average_Family_Size ;;
  }

  dimension: average_household_size {
    type: number
    sql: ${TABLE}.Average_Household_Size ;;
  }

  dimension: civilian_employed_government_workers_pct {
    type: number
    sql: ${TABLE}.Civilian_Employed_Government_Workers_Pct ;;
  }

  dimension: civilian_employed_private_wage_and_salary_workers_pct {
    type: number
    sql: ${TABLE}.Civilian_Employed_Private_Wage_and_Salary_Workers_Pct ;;
  }

  dimension: civilian_employed_self_employed_pct {
    type: number
    sql: ${TABLE}.Civilian_Employed_Self_Employed_Pct ;;
  }

  dimension: civilian_employed_unpaid_family_workers_pct {
    type: number
    sql: ${TABLE}.Civilian_Employed_Unpaid_Family_Workers_Pct ;;
  }

  dimension: dma {
    type: string
    sql: ${TABLE}.dma ;;
  }

  dimension: dma_code {
    type: string
    sql: ${TABLE}.dma_code ;;
  }

  dimension: education_9th_to_12th_grade_no_diploma_pct {
    type: number
    sql: ${TABLE}.Education_9th_to_12th_Grade_No_Diploma_Pct ;;
  }

  dimension: education_associate_degree_pct {
    type: number
    sql: ${TABLE}.Education_Associate_Degree_Pct ;;
  }

  dimension: education_bachelors_degree_pct {
    type: number
    sql: ${TABLE}.Education_Bachelors_Degree_Pct ;;
  }

  dimension: education_graduate_or_professional_degree_pct {
    type: number
    sql: ${TABLE}.Education_Graduate_or_Professional_Degree_Pct ;;
  }

  dimension: education_high_school_graduate_includes_equivalency_pct {
    type: number
    sql: ${TABLE}.Education_High_School_Graduate_Includes_Equivalency_Pct ;;
  }

  dimension: education_population_25_years_and_over {
    type: number
    sql: ${TABLE}.Education_Population_25_years_and_over ;;
  }

  dimension: education_population_less_than_9th_grade_pct {
    type: number
    sql: ${TABLE}.Education_Population_Less_Than_9th_Grade_Pct ;;
  }

  dimension: education_some_college_no_degree_pct {
    type: number
    sql: ${TABLE}.Education_Some_College_No_Degree_Pct ;;
  }

  dimension: household_with_earnings_pct {
    type: number
    sql: ${TABLE}.Household_With_Earnings_Pct ;;
  }

  dimension: households_total {
    type: number
    sql: ${TABLE}.Households_Total ;;
  }

  dimension: households_with_broadband_internet_pct {
    type: number
    sql: ${TABLE}.Households_With_Broadband_Internet_Pct ;;
  }

  dimension: households_with_computer_pct {
    type: number
    sql: ${TABLE}.Households_With_Computer_Pct ;;
  }

  dimension: households_with_income_100000_to_149999_pct {
    type: number
    sql: ${TABLE}.Households_With_Income_100000_to_149999_Pct ;;
  }

  dimension: households_with_income_10000_to_14999_pct {
    type: number
    sql: ${TABLE}.Households_With_Income_10000_to_14999_Pct ;;
  }

  dimension: households_with_income_150000_to_199999_pct {
    type: number
    sql: ${TABLE}.Households_With_Income_150000_to_199999_Pct ;;
  }

  dimension: households_with_income_15000_to_24999_pct {
    type: number
    sql: ${TABLE}.Households_With_Income_15000_to_24999_Pct ;;
  }

  dimension: households_with_income_200000_or_more_pct {
    type: number
    sql: ${TABLE}.Households_With_Income_200000_or_More_Pct ;;
  }

  dimension: households_with_income_25000_to_34999_pct {
    type: number
    sql: ${TABLE}.Households_With_Income_25000_to_34999_Pct ;;
  }

  dimension: households_with_income_35000_to_49999_pct {
    type: number
    sql: ${TABLE}.Households_With_Income_35000_to_49999_Pct ;;
  }

  dimension: households_with_income_50000_to_74999_pct {
    type: number
    sql: ${TABLE}.Households_With_Income_50000_to_74999_Pct ;;
  }

  dimension: households_with_income_75000_to_99999_pct {
    type: number
    sql: ${TABLE}.Households_With_Income_75000_to_99999_Pct ;;
  }

  dimension: households_with_income_less_than_10000_pct {
    type: number
    sql: ${TABLE}.Households_With_Income_Less_Than_10000_Pct ;;
  }

  dimension: housing_units_occupied_pct {
    type: number
    sql: ${TABLE}.Housing_Units_Occupied_Pct ;;
  }

  dimension: housing_units_total {
    type: number
    sql: ${TABLE}.Housing_Units_Total ;;
  }

  dimension: industry_agriculture_forestry_fishing_and_hunting_and_mining_pct {
    type: number
    sql: ${TABLE}.Industry_Agriculture_Forestry_Fishing_and_Hunting_and_Mining_Pct ;;
  }

  dimension: industry_arts_entertainment_recreation_accommodation_food_services_pct {
    type: number
    sql: ${TABLE}.Industry_Arts_Entertainment_Recreation_Accommodation_Food_Services_Pct ;;
  }

  dimension: industry_construction_pct {
    type: number
    sql: ${TABLE}.Industry_Construction_Pct ;;
  }

  dimension: industry_educational_services_health_care_social_assistance_pct {
    type: number
    sql: ${TABLE}.Industry_Educational_Services_Health_Care_Social_Assistance_Pct ;;
  }

  dimension: industry_finance_insurance_real_estate_rental_leasing_pct {
    type: number
    sql: ${TABLE}.Industry_Finance_Insurance_Real_Estate_Rental_Leasing_Pct ;;
  }

  dimension: industry_information_pct {
    type: number
    sql: ${TABLE}.Industry_Information_Pct ;;
  }

  dimension: industry_manufacturing_pct {
    type: number
    sql: ${TABLE}.Industry_Manufacturing_Pct ;;
  }

  dimension: industry_other_services_except_public_administration_pct {
    type: number
    sql: ${TABLE}.Industry_Other_Services_Except_Public_Administration_Pct ;;
  }

  dimension: industry_professional_scientific_management_administrative_waste_management_services_pct {
    type: number
    sql: ${TABLE}.Industry_Professional_Scientific_Management_Administrative_Waste_Management_Services_Pct ;;
  }

  dimension: industry_public_administration_pct {
    type: number
    sql: ${TABLE}.Industry_Public_Administration_Pct ;;
  }

  dimension: industry_retail_trade_pct {
    type: number
    sql: ${TABLE}.Industry_Retail_Trade_Pct ;;
  }

  dimension: industry_transportation_warehousing_utilities_pct {
    type: number
    sql: ${TABLE}.Industry_Transportation_Warehousing_Utilities_Pct ;;
  }

  dimension: industry_wholesale_trade_pct {
    type: number
    sql: ${TABLE}.Industry_Wholesale_Trade_Pct ;;
  }

  dimension: mean_household_income_dollars {
    type: number
    sql: ${TABLE}.Mean_Household_Income_Dollars ;;
  }

  dimension: occupation_management_business_science_and_arts_pct {
    type: number
    sql: ${TABLE}.Occupation_Management_Business_Science_and_Arts_Pct ;;
  }

  dimension: occupation_natural_resources_counstruction_and_maintenance_pct {
    type: number
    sql: ${TABLE}.Occupation_Natural_Resources_Counstruction_and_Maintenance_Pct ;;
  }

  dimension: occupation_sales_and_office_pct {
    type: number
    sql: ${TABLE}.Occupation_Sales_and_Office_Pct ;;
  }

  dimension: occupation_service_pct {
    type: number
    sql: ${TABLE}.Occupation_Service_Pct ;;
  }

  dimension: occupation_transportation_and_material_moving_pct {
    type: number
    sql: ${TABLE}.Occupation_Transportation_and_Material_Moving_Pct ;;
  }

  dimension: population_10_to_14_pct {
    type: number
    sql: ${TABLE}.Population_10_to_14_Pct ;;
  }

  dimension: population_15_to_19_pct {
    type: number
    sql: ${TABLE}.Population_15_to_19_Pct ;;
  }

  dimension: population_16_and_over_pct {
    type: number
    sql: ${TABLE}.Population_16_And_Over_Pct ;;
  }

  dimension: population_18_and_over_pct {
    type: number
    sql: ${TABLE}.Population_18_And_Over_Pct ;;
  }

  dimension: population_20_to_24_pct {
    type: number
    sql: ${TABLE}.Population_20_to_24_Pct ;;
  }

  dimension: population_21_and_over_pct {
    type: number
    sql: ${TABLE}.Population_21_And_Over_Pct ;;
  }

  dimension: population_25_to_34_pct {
    type: number
    sql: ${TABLE}.Population_25_to_34_Pct ;;
  }

  dimension: population_35_to_44_pct {
    type: number
    sql: ${TABLE}.Population_35_to_44_Pct ;;
  }

  dimension: population_45_to_54_pct {
    type: number
    sql: ${TABLE}.Population_45_to_54_Pct ;;
  }

  dimension: population_55_to_59_pct {
    type: number
    sql: ${TABLE}.Population_55_to_59_Pct ;;
  }

  dimension: population_5_to_9_pct {
    type: number
    sql: ${TABLE}.Population_5_to_9_Pct ;;
  }

  dimension: population_60_to_64_pct {
    type: number
    sql: ${TABLE}.Population_60_to_64_Pct ;;
  }

  dimension: population_62_and_over_pct {
    type: number
    sql: ${TABLE}.Population_62_And_Over_Pct ;;
  }

  dimension: population_65_and_over_pct {
    type: number
    sql: ${TABLE}.Population_65_And_Over_Pct ;;
  }

  dimension: population_65_to_74_pct {
    type: number
    sql: ${TABLE}.Population_65_to_74_Pct ;;
  }

  dimension: population_75_to_84_pct {
    type: number
    sql: ${TABLE}.Population_75_to_84_Pct ;;
  }

  dimension: population_85_and_over_pct {
    type: number
    sql: ${TABLE}.Population_85_And_Over_Pct ;;
  }

  dimension: population_female_pct {
    type: number
    sql: ${TABLE}.Population_Female_Pct ;;
  }

  dimension: population_in_labor_force_pct {
    type: number
    sql: ${TABLE}.Population_In_Labor_Force_Pct ;;
  }

  dimension: population_male_pct {
    type: number
    sql: ${TABLE}.Population_Male_Pct ;;
  }

  dimension: population_not_in_labor_force_pct {
    type: number
    sql: ${TABLE}.Population_Not_In_Labor_Force_Pct ;;
  }

  dimension: population_total {
    type: number
    sql: ${TABLE}.Population_Total ;;
  }

  dimension: population_under_18_pct {
    type: number
    sql: ${TABLE}.Population_Under_18_Pct ;;
  }

  dimension: population_under_5_pct {
    type: number
    sql: ${TABLE}.Population_Under_5_Pct ;;
  }

  dimension: school_enrolled_college_or_graduate {
    type: number
    sql: ${TABLE}.School_Enrolled_College_or_Graduate ;;
  }

  dimension: school_enrolled_elemantary_school_1_8 {
    type: number
    sql: ${TABLE}.School_Enrolled_Elemantary_school_1_8 ;;
  }

  dimension: school_enrolled_high_school_9_12 {
    type: number
    sql: ${TABLE}.School_Enrolled_High_school_9_12 ;;
  }

  dimension: school_enrolled_kindergarten {
    type: number
    sql: ${TABLE}.School_Enrolled_Kindergarten ;;
  }

  dimension: school_enrolled_nursery_preschool {
    type: number
    sql: ${TABLE}.School_Enrolled_Nursery_Preschool ;;
  }

  dimension: school_enrolled_total {
    type: number
    sql: ${TABLE}.School_Enrolled_Total ;;
  }

  dimension: vehicles_0_pct {
    type: number
    sql: ${TABLE}.Vehicles_0_Pct ;;
  }

  dimension: vehicles_1_pct {
    type: number
    sql: ${TABLE}.Vehicles_1_Pct ;;
  }

  dimension: vehicles_2_pct {
    type: number
    sql: ${TABLE}.Vehicles_2_Pct ;;
  }

  dimension: vehicles_3_or_more_pct {
    type: number
    sql: ${TABLE}.Vehicles_3_or_more_Pct ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
