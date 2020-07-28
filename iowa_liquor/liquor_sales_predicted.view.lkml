view: liquor_sales_predicted {
  derived_table: {
    sql: SELECT ROW_NUMBER() OVER(ORDER BY store_number,item_number) as pk
      ,store_number
      ,city
      ,zip_code
      ,county_number
      ,category
      ,vendor_number
      ,item_number
      ,DATE(date) as date
      ,pack
      ,tsi
      ,item_description
      , SPLIT(TRIM(replace(replace(store_location,'POINT (',''),')','')),' ')[safe_ordinal(1)] as store_longitude
      , SPLIT(TRIM(replace(replace(store_location,'POINT (',''),')','')),' ')[safe_ordinal(2)] as store_latitude
      ,CASE WHEN lower(item_description) LIKE '%titos%' THEN 'Titos'
            WHEN lower(item_description) LIKE '%smirnoff%' THEN 'Smirnoff'
            WHEN lower(item_description) LIKE '%jack daniels%' THEN 'Jack Daniels'
            WHEN lower(item_description) LIKE '%hennessy%' THEN 'Hennessy'
            WHEN lower(item_description) LIKE '%hawkeye%' THEN 'Hawkeye'
            WHEN lower(item_description) LIKE '%fireball%' THEN 'Fireball'
            WHEN lower(item_description) LIKE '%crown royal%' THEN 'Crown Royal'
            WHEN lower(item_description) LIKE '%captain morgan%' THEN 'Captain Morgan'
            WHEN lower(item_description) LIKE '%black velvet%' THEN 'Fireball'
            ELSE 'All Other Brands'
          END  AS brand
      ,SUM(bottle_volume_ml) as bottle_volume_ml
      ,SUM(state_bottle_cost) as state_bottle_cost
      ,SUM(state_bottle_retail) as state_bottle_retail
      ,SUM(bottles_sold) as bottles_sold
      ,SUM(sale_dollars) as sale_dollars
      ,SUM(volume_sold_liters) as volume_sold_liters
      ,SUM(bottles_sold) as total_bottles_sold
      ,SUM(predicted_bottles_sold.tables.value) as predicted_total_bottles_sold
FROM `camus-demandforecasting.prediction_training_validation_2weeks_v1_2020_07_08T06_43_16_117Z.predictions`

LEFT JOIN UNNEST(predicted_bottles_sold) as predicted_bottles_sold
GROUP BY 2,3,4,5,6,7,8,9,10,11,12,13,14,15
 ;;
#FROM `camus-demandforecasting.prediction_training_validation_2weeks_v1_2020_07_08T06_43_16_117Z.predictions`
sql_trigger_value: SELECT CURRENT_DATE ;;
  }


  dimension: pk {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.pk ;;
  }

  dimension: is_forecasted {
    type: yesno
    sql: ${calendar_date} < CURRENT_DATE ;;
  }

  dimension: type {
    label: "Forecasted"
    type: yesno
    sql: ${calendar_date} >= '2020-05-31'  ;;
  }

  dimension: store_number {
    view_label: "Store"
    type: string
    sql: ${TABLE}.store_number ;;
  }

  dimension: store_location {
    view_label: "Store"
    type: location
    sql_latitude: ${TABLE}.store_latitude ;;
    sql_longitude: ${TABLE}.store_longitude ;;
  }

  dimension: city {
    view_label: "Store"
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: zip_code {
    view_label: "Store"
    type: string
    sql: ${TABLE}.zip_code ;;
    map_layer_name: us_zipcode_tabulation_areas
  }

  dimension: county_number {
    view_label: "Store"
    label: "County Fips"
    type: string
    sql: CONCAT('190',${TABLE}.county_number) ;;
    map_layer_name: us_counties_fips
  }

  dimension: category {
    view_label: "Item"
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: vendor_number {
    view_label: "Vendor"
    type: string
    sql: ${TABLE}.vendor_number ;;
  }

  dimension: item_number {
    view_label: "Item"
    type: string
    sql: ${TABLE}.item_number ;;
  }

  dimension_group: calendar {
    datatype: date
    type: time
    sql: ${TABLE}.date ;;
  }

  dimension: pack {
    view_label: "Item"
    hidden: yes
    type: number
    sql: ${TABLE}.pack ;;
  }

  dimension: tsi {
    hidden: yes
    type: string
    sql: ${TABLE}.tsi ;;
  }

  dimension: item_description {
    view_label: "Item"
    type: string
    sql: ${TABLE}.item_description ;;
  }

  dimension: brand {
    view_label: "Item"
    type: string
    sql: ${TABLE}.brand ;;
#     sql:
#      CASE WHEN lower(${item_description}) LIKE '%titos%' THEN 'Titos'
#      WHEN lower(${item_description}) LIKE '%smirnoff%' THEN 'Smirnoff'
#      WHEN lower(${item_description}) LIKE '%jack daniels%' THEN 'Jack Daniels'
#      WHEN lower(${item_description}) LIKE '%hennessy%' THEN 'Hennessy'
#      WHEN lower(${item_description}) LIKE '%hawkeye%' THEN 'Hawkeye'
#      WHEN lower(${item_description}) LIKE '%fireball%' THEN 'Fireball'
#      WHEN lower(${item_description}) LIKE '%crown royal%' THEN 'Crown Royal'
#      WHEN lower(${item_description}) LIKE '%captain morgan%' THEN 'Captain Morgan'
#      WHEN lower(${item_description}) LIKE '%black velvet%' THEN 'Fireball'
#      ELSE 'All Other Brands'
#      END ;;
  }

  dimension: bottle_volume_ml {
    view_label: "Item"
    label: "Size (ml)"
    hidden: yes
    type: number
    sql: ${TABLE}.bottle_volume_ml ;;
  }

    #### ACTUAL ####


  dimension: state_bottle_cost {
    hidden: yes
    type: number
    sql: ${TABLE}.state_bottle_cost ;;
  }

  measure: total_cost {
    group_label: "Actual"
    type: sum
    sql: ${state_bottle_cost}*${bottles_sold} ;;
    value_format_name: usd
  }

  dimension: state_bottle_retail {
    view_label: "Item"
    label: "Retail Price"
    type: number
    sql: ${TABLE}.state_bottle_retail ;;
  }

#   measure: total_retail_price {
#     group_label: "Actual"
#     type: sum
#     sql: ${state_bottle_retail} ;;
#     value_format_name: usd
#   }

  dimension: gross_margin {
    type: number
    hidden: yes
    sql: ${state_bottle_retail}-${state_bottle_cost} ;;
    value_format_name: usd
  }

  measure: total_gross_margin {
    group_label: "Actual"
    type: sum
    sql: ${gross_margin}*${bottles_sold} ;;
    value_format_name: usd
  }

#   dimension: bottles_sold {
#     hidden: yes
#     type: number
#     sql: ${TABLE}.bottles_sold ;;
#   }

  dimension: bottles_sold {
    hidden: yes
    type: number
    sql: ${sale_dollars}/${state_bottle_retail} ;;
  }

  measure: total_bottles_sold {
    group_label: "Actual"
    type: sum
    sql: ${bottles_sold} ;;
  }

  dimension: sale_dollars {
    hidden: yes
    type: number
    sql: ${TABLE}.sale_dollars ;;
  }

  measure: total_revenue {
    group_label: "Actual"
    type: sum
    sql: ${state_bottle_retail}*${bottles_sold} ;;
    value_format_name: usd
  }

  dimension: volume_sold_liters {
    hidden: yes
    type: number
    sql: ${TABLE}.volume_sold_liters ;;
  }

  measure: total_volume_sold_liters {
    group_label: "Actual"
    label: "Total Volume Sold (L)"
    type: sum
    sql: ${volume_sold_liters} ;;
  }

  measure: aur {
    label: "AUR"
    group_label: "Actual"
    type: number
    sql: ${total_revenue}/${total_bottles_sold} ;;
    value_format_name: usd
  }

  #### PREDICTED ####

  dimension: predicted_total_bottles_sold {
    hidden: yes
    type: number
    sql: ${TABLE}.predicted_total_bottles_sold ;;
  }

  measure: total_predicted_bottles_sold {
    group_label: "Predicted"
    type: sum
    sql: ${predicted_total_bottles_sold} ;;
    value_format_name: decimal_0
  }

  dimension: predicted_volume_sold {
    hidden: yes
    type: number
    sql: 1.0*(${predicted_total_bottles_sold}*${bottle_volume_ml})/1000 ;;
    value_format_name: decimal_0
  }

  measure: total_predicted_volume_sold {
    group_label: "Predicted"
    label: "Total Predicted Volume Sold (L)"
    type: sum
    sql: ${predicted_volume_sold} ;;
  }

  dimension: predicted_revenue {
    hidden: yes
    type: number
    sql: ${state_bottle_retail}*${predicted_total_bottles_sold} ;;
    value_format_name: usd
  }

  measure: total_predicted_revenue {
    group_label: "Predicted"
    type: sum
    sql: ${predicted_revenue} ;;
    value_format_name: usd
  }

  dimension: predicted_cost {
    hidden: yes
    type: number
    sql: ${state_bottle_cost}*${predicted_total_bottles_sold} ;;
    value_format_name: usd
  }

  measure: total_predicted_cost {
    group_label: "Predicted"
    type: sum
    sql: ${predicted_cost} ;;
    value_format_name: usd
  }

  measure: total_predicted_gross_margin {
    group_label: "Predicted"
    type: sum
    sql: ${gross_margin}*${predicted_total_bottles_sold} ;;
    value_format_name: usd
  }

  measure: predicted_aur {
    type: number
    label: "AUR"
    group_label: "Predicted"
    sql: ${total_predicted_revenue}/${total_predicted_bottles_sold} ;;
    value_format_name: usd
  }

  #### APPLIED PROMOTION ####

  parameter: promotion {
    label: "Apply Promotion (Yes/No)"
    type: string
    allowed_value: {label: "Yes" value: "yes"}
    allowed_value: {label: "No" value: "no"}
  }

  filter: promotion_date {
    type: date
  }

  parameter: frequency {
    type: string
    allowed_value: {label: "Peak Days" value:"Peak Days"}
    allowed_value: {label: "Normal Days" value:"Normal Days"}
    allowed_value: {label: "Slow Days" value:"Slow Days"}
    allowed_value: {label: "Holidays" value:"Holidays"}
  }

  parameter: promotion_amount {
    type: number
    allowed_value: {label: "5%" value:"0.05"}
    allowed_value: {label: "10%" value:"0.10"}
    allowed_value: {label: "15%" value:"0.15"}
    allowed_value: {label: "20%" value:"0.20"}
  }

  dimension: boost {
    type: number
    hidden: yes
    sql: CASE WHEN {{ promotion_amount._parameter_value }} = 0.05 THEN 0.10
              WHEN {{ promotion_amount._parameter_value }} = 0.10 THEN 0.15
              WHEN {{ promotion_amount._parameter_value }} = 0.15 THEN 0.30
              WHEN {{ promotion_amount._parameter_value }} = 0.20 THEN 0.40
            ELSE 0
         END
    ;;
  }

  dimension: promotion_boost {
    type: number
    sql: {% if promotion._parameter_value == "'yes'" %}

                CASE WHEN ${calendar_raw} >= DATE({% date_start promotion_date %}) AND ${calendar_raw} <= DATE({% date_end promotion_date %}) THEN

                CASE WHEN {{ frequency._parameter_value }} = 'Peak Days' AND ${calendar_day_of_week_index} IN (1,0) THEN 1+${boost}
                     WHEN {{ frequency._parameter_value }} = 'Normal Days' AND ${calendar_day_of_week_index} IN (0,4,2) THEN  1+${boost}
                     WHEN {{ frequency._parameter_value }} = 'Slow Days' AND ${calendar_day_of_week_index} IN (2,3) THEN  1+${boost}
                     ELSE 1
                     END

                    ELSE 1
                    END

                {% else %} 1 {% endif %} ;;
    value_format_name: decimal_2
  }

  dimension: predicted_total_bottles_sold_promotion {
    hidden: yes
    type: number
    sql: ${predicted_total_bottles_sold}*${promotion_boost} ;;
  }

  measure: total_predicted_bottles_sold_promotion {
    group_label: "Applied Promotion"
    label: "Total Predicted Bottles Sold (Promotion)"
    type: sum
    sql: ${predicted_total_bottles_sold_promotion} ;;
    value_format_name: decimal_0
  }

  dimension: predicted_volume_sold_promotion {
    hidden: yes
    type: number
    sql: 1.0*(${predicted_total_bottles_sold_promotion}*${bottle_volume_ml})/1000 ;;
    value_format_name: decimal_0
  }

  measure: total_predicted_volume_sold_promotion {
    group_label: "Applied Promotion"
    label: "Total Predicted Volume Sold (L) (Promotion)"
    type: sum
    sql: ${predicted_volume_sold_promotion} ;;
  }

  dimension: predicted_revenue_promotion {
    hidden: yes
    type: number
    sql: (${state_bottle_retail}*(1-

    CASE WHEN ${promotion_boost} > 1 THEN {{ promotion_amount._parameter_value }} ELSE 0 END

    ))*${predicted_total_bottles_sold_promotion} ;;
    value_format_name: usd
  }

  measure: total_predicted_revenue_promotion {
    group_label: "Applied Promotion"
    label: "Total Predicted Revenue (Promotion)"
    type: sum
    sql: ${predicted_revenue_promotion} ;;
    value_format_name: usd
  }

  dimension: predicted_cost_promotion {
    hidden: yes
    type: number
    sql: ${state_bottle_cost}*${predicted_total_bottles_sold_promotion} ;;
    value_format_name: usd
  }

  measure: total_predicted_cost_promotion {
    group_label: "Applied Promotion"
    label: "Total Predicted Cost (Promotion)"
    type: sum
    sql: ${predicted_cost_promotion} ;;
    value_format_name: usd
  }

  dimension: gross_margin_promotion {
    type: number
    hidden: yes
    sql:  (${state_bottle_retail}*(1-

    CASE WHEN ${promotion_boost} > 1 THEN {{ promotion_amount._parameter_value }} ELSE 0 END

    ))-${state_bottle_cost} ;;
    value_format_name: usd
  }

  measure: total_predicted_gross_margin_promotion {
    group_label: "Applied Promotion"
    label: "Total Predicted Gross Margin (Promotion)"
    type: sum
    sql: ${gross_margin_promotion}*${predicted_total_bottles_sold_promotion} ;;
    value_format_name: usd
  }

  measure: predicted_aur_promotion {
    type: number
    label: "AUR (Promotion)"
    group_label: "Applied Promotion"
    sql: ${total_predicted_revenue_promotion}/${total_predicted_bottles_sold_promotion} ;;
    value_format_name: usd
  }

  set: detail {
    fields: [
      pk,
      store_number,
      city,
      zip_code,
      county_number,
      category,
      vendor_number,
      item_number,
      calendar_date,
      pack,
      tsi,
      item_description,
      bottle_volume_ml,
      state_bottle_cost,
      state_bottle_retail,
      bottles_sold,
      sale_dollars,
      volume_sold_liters,
      total_bottles_sold,
      predicted_total_bottles_sold
    ]
  }
}
