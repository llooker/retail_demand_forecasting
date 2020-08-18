view: metrics {
  sql_table_name: `camus-demandforecasting.iowa_liquor_dataset.metrics`
    ;;

  dimension: pk {
    hidden: yes
    type: string
    primary_key: yes
    sql: CONCAT(${term},${measurement_raw},${dma_code}) ;;
  }

  dimension: has_been_measured {
    type: yesno
    sql: ${measurement_date} < CURRENT_DATE ;;
  }

  dimension: anomalies_52w {
    hidden: yes
    type: string
    sql: ${TABLE}.anomalies_52w ;;
  }

  dimension: anomalies_historical {
    hidden: yes
    type: string
    sql: ${TABLE}.anomalies_historical ;;
  }

  dimension: average_household_size {
    hidden: yes
    type: number
    sql: ${TABLE}.Average_Household_Size ;;
  }

  dimension: dma {
    type: string
    sql: ${TABLE}.dma ;;
    map_layer_name: dma
  }

  dimension: is_iowa {
    type: yesno
    sql: ${dma} LIKE '% IA%' ;;
  }

  dimension: dma_code {
    type: number
    sql: ${TABLE}.dma_code ;;
    map_layer_name: dma
  }

  dimension: dma_index {
    hidden: yes
    type: number
    sql: ${TABLE}.dma_index ;;
  }

  dimension: education_bachelors_degree_or_higher {
    hidden: yes
    type: number
    sql: ${TABLE}.Education_Bachelors_Degree_Or_Higher ;;
  }

  dimension: households_with_income_less_than_35000_pct {
    hidden: yes
    type: number
    sql: ${TABLE}.Households_With_Income_Less_Than_35000_Pct ;;
  }

  dimension: index {
    hidden: yes
    type: number
    sql: ${TABLE}.index ;;
  }

  measure: max_index {
    group_label: "Per DMA"
    label: "Index"
    type: max
    sql: ${index} ;;
  }

  dimension: index_mo_m {
    hidden: yes
    type: number
    sql: ${TABLE}.index_MoM ;;
  }

  measure: max_mom_index {
    group_label: "Per DMA"
    label: "Index MoM"
    type: max
    sql: ${index_mo_m} ;;
  }

  dimension: index_qo_q {
    hidden: yes
    type: number
    sql: ${TABLE}.index_QoQ ;;
  }

  measure: max_qoq_index {
    group_label: "Per DMA"
    label: "Index QoQ"
    type: max
    sql: ${index_qo_q} ;;
  }

  dimension: index_wo_w {
    hidden: yes
    type: number
    sql: ${TABLE}.index_WoW ;;
  }

  dimension: weighted_index_wo_w {
    hidden: yes
    type: number
    sql: ${index_wo_w}*${dma_weight_facts.dma_weight} ;;
  }

  measure: total_weighted_wow_index{
    group_label: "Per DMA"
    hidden: yes
    label: "Weighted Index WoW"
    type: sum
    sql: ${weighted_index_wo_w} ;;
  }

  measure: max_wow_index {
    group_label: "Per DMA"
    label: "Index WoW"
    type: max
    sql: ${index_wo_w} ;;
  }

  measure: average_wow_index {
    hidden: yes
    label: "Average Index WoW"
    type: average
    sql: ${index_wo_w} ;;
    value_format_name: decimal_2
  }

  dimension: index_yo2_y {
    hidden: yes
    type: number
    sql: ${TABLE}.index_Yo2Y ;;
  }

  measure: max_yo2y_index {
    group_label: "Per DMA"
    label: "Index Yo2Y"
    type: max
    sql: ${index_yo2_y} ;;
  }

  dimension: index_yo3_y {
    hidden: yes
    type: number
    sql: ${TABLE}.index_Yo3Y ;;
  }

  measure: max_yo3y_index {
    group_label: "Per DMA"
    label: "Index Yo3Y"
    type: max
    sql: ${index_yo3_y} ;;
  }

  dimension: index_yo_y {
    hidden: yes
    type: number
    sql: ${TABLE}.index_YoY ;;
  }

  measure: max_yoy_index {
    group_label: "Per DMA"
    label: "Index YoY"
    type: max
    sql: ${index_yo_y} ;;
  }

  dimension: mean_household_income_dollars {
    hidden: yes
    type: number
    sql: ${TABLE}.Mean_Household_Income_Dollars ;;
  }

  measure: mean_household_income {
    group_label: "Demographics"
    type: median
    sql: ${mean_household_income_dollars} ;;
    value_format_name: usd_0
  }

  dimension: month_index_health {
    hidden: yes
    type: number
    sql: ${TABLE}.month_index_health ;;
  }

  dimension: outliers_52w {
    hidden: yes
    type: string
    sql: ${TABLE}.outliers_52w ;;
  }

  dimension: population_65_and_over_pct {
    hidden: yes
    type: number
    sql: ${TABLE}.Population_65_And_Over_Pct ;;
  }

  dimension: population_adjusted_score {
    hidden: yes
    type: number
    sql: ${TABLE}.population_adjusted_score ;;
  }

  dimension: population_adjusted_score_mo_m {
    hidden: yes
    type: number
    sql: ${TABLE}.population_adjusted_score_MoM ;;
  }

  measure: adjusted_score_mom {
    group_label: "Adjusted"
    label: "Index MoM"
    description: "This field can be aggregated across DMA but NOT across search term."
    type: sum
    sql: ${population_adjusted_score_mo_m} ;;
  }

  dimension: population_adjusted_score_qo_q {
    hidden: yes
    type: number
    sql: ${TABLE}.population_adjusted_score_QoQ ;;
  }

  measure: adjusted_score_qoq {
    group_label: "Adjusted"
    label: "Index QoQ"
    description: "This field can be aggregated across DMA but NOT across search term."
    type: sum
    sql: ${population_adjusted_score_qo_q} ;;
  }

  dimension: population_adjusted_score_wo_w {
    hidden: yes
    type: number
    sql: ${TABLE}.population_adjusted_score_WoW ;;
  }

  measure: adjusted_score_wow {
    group_label: "Adjusted"
    label: "Index WoW"
    description: "This field can be aggregated across DMA but NOT across search term."
    type: sum
    sql: ${population_adjusted_score_wo_w} ;;
#     link: {
#       label: "Google Trends for {{ liquor_sales_predicted.brand._value }}"
#       url: "https://trends.google.com/trends/explore?q={{ liquor_sales_predicted.brand._value | encode uri }}&geo=US"
#       icon_url: "https://www.google.com/favicon.ico"
#     }
    link: {
      label: "Google News for {{ liquor_sales_predicted.brand._value }}"
      url: "https://news.google.com/search?q={{ liquor_sales_predicted.brand._value | encode uri }}&hl=en-US&gl=US&ceid=US%3Aen"
      icon_url: "https://www.google.com/favicon.ico"
    }

  }

  dimension: population_adjusted_score_yo2_y {
    hidden: yes
    type: number
    sql: ${TABLE}.population_adjusted_score_Yo2Y ;;
  }

  measure: adjusted_score_yo2y {
    group_label: "Adjusted"
    label: "Index Yo2Y"
    description: "This field can be aggregated across DMA but NOT across search term."
    type: sum
    sql: ${population_adjusted_score_yo2_y} ;;
  }

  dimension: population_adjusted_score_yo3_y {
    hidden: yes
    type: number
    sql: ${TABLE}.population_adjusted_score_Yo3Y ;;
  }

  measure: adjusted_score_yo3y {
    group_label: "Adjusted"
    label: "Index Yo3Y"
    description: "This field can be aggregated across DMA but NOT across search term."
    type: sum
    sql: ${population_adjusted_score_yo3_y} ;;
  }

  dimension: population_adjusted_score_yo_y {
    hidden: yes
    type: number
    sql: ${TABLE}.population_adjusted_score_YoY ;;
  }
  measure: adjusted_score_yoy {
    group_label: "Adjusted"
    label: "Index YoY"
    description: "This field can be aggregated across DMA but NOT across search term."
    type: sum
    sql: ${population_adjusted_score_yo_y} ;;
  }

  dimension: population_in_labor_force_pct {
    hidden: yes
    type: number
    sql: ${TABLE}.Population_In_Labor_Force_Pct ;;
  }

  dimension: population_total {
    hidden: yes
    type: number
    sql: ${TABLE}.Population_Total ;;
  }

  measure: population {
    group_label: "Demographics"
    type: sum
    sql: ${population_total} ;;
  }

  dimension: population_under_18_pct {
    hidden: yes
    type: number
    sql: ${TABLE}.Population_Under_18_Pct ;;
  }

  dimension: school_enrolled_total {
    hidden: yes
    type: number
    sql: ${TABLE}.School_Enrolled_Total ;;
  }

  dimension: term {
    label: "Search Term"
    type: string
    sql: ${TABLE}.term ;;
#     link: {
#       label: "See Google Trends for {{ value }}"
#       url: "https://trends.google.com/trends/explore?q={{ value | encode uri }}&geo=US"
#       icon_url: "https://www.google.com/favicon.ico"
#     }
  }

#   dimension: brand {
#     label: "Brand"
#     type: string
#     sql: SPLIT(${term},' ')[SAFE_ORDINAL(1)] ;;
#   }

  dimension_group: measurement {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: DATE_SUB(${TABLE}.week, INTERVAL 45 DAY) ;;
  }

  dimension: week_index_health {
    hidden: yes
    type: number
    sql: ${TABLE}.week_index_health ;;
  }


}
