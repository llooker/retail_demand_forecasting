view: predictions {
  sql_table_name: `camus-demandforecasting.prediction_training_validation_2weeks_v1_2020_07_08T06_43_16_117Z.predictions`
    ;;

  dimension: address {
    view_label: "Store"
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: bottle_volume_ml {
    hidden: yes
    type: number
    sql: ${TABLE}.bottle_volume_ml ;;
  }

  measure: total_volume {
    label: "Total Volume (ml)"
    group_label: "Volume"
    type: sum
    sql: ${bottle_volume_ml} ;;
  }

  dimension: bottles_sold {
    hidden: yes
    type: number
    sql: ${TABLE}.bottles_sold ;;
  }

  measure: total_bottles_sold {
    group_label: "Sales"
    type: sum
    sql: ${bottles_sold} ;;
  }

  dimension: category {
    view_label: "Product"
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: category_name {
    view_label: "Product"
    type: string
    sql: ${TABLE}.category_name ;;
  }

  dimension: city {
    view_label: "Store"
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: county {
    view_label: "Store"
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: county_number {
    view_label: "Store"
    label: "County Fips"
    type: string
    sql: ${TABLE}.county_number ;;
    map_layer_name: us_counties_fips
  }

  dimension_group: calendar {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      day_of_week,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: day_of_week {
    hidden: yes
    type: number
    sql: ${TABLE}.day_of_week ;;
  }

  dimension: invoice_and_item_number {
    hidden: yes
    type: string
    sql: ${TABLE}.invoice_and_item_number ;;
  }

  dimension: item_description {
    view_label: "Product"
    type: string
    sql: ${TABLE}.item_description ;;
  }

  dimension: item_number {
    view_label: "Product"
    type: string
    sql: ${TABLE}.item_number ;;
  }

  dimension: pack {
    view_label: "Product"
    type: number
    sql: ${TABLE}.pack ;;
  }

  dimension: sale_dollars {
    hidden: yes
    type: number
    sql: ${TABLE}.sale_dollars ;;
  }

  measure: total_sales_dollars {
    label: "Total Sales (USD)"
    group_label: "Sales"
    type: sum
    sql: ${sale_dollars} ;;
    value_format_name: usd
  }

  dimension: state_bottle_cost {
    hidden: yes
    type: number
    sql: ${TABLE}.state_bottle_cost ;;
  }

  measure: total_bottle_cost {
    label: "Total Bottle Cost (USD)"
    group_label: "Cost"
    type: sum
    sql: ${state_bottle_cost} ;;
    value_format_name: usd
  }

  dimension: state_bottle_retail {
    hidden: yes
    type: number
    sql: ${TABLE}.state_bottle_retail ;;
  }

  measure: total_bottle_retail {
    label: "Total Bottle Retail"
    group_label: "Sales"
    type: sum
    sql: ${state_bottle_retail} ;;
    value_format_name: decimal_0
  }

  dimension: store_location {
    view_label: "Store"
    type: string
    sql: ${TABLE}.store_location ;;
  }

  dimension: store_name {
    view_label: "Store"
    type: string
    sql: ${TABLE}.store_name ;;
  }

  dimension: store_number {
    view_label: "Store"
    type: string
    sql: ${TABLE}.store_number ;;
  }

  dimension: tsi {
    hidden: yes
    type: string
    sql: ${TABLE}.tsi ;;
  }

  dimension: vendor_name {
    view_label: "Vendor"
    type: string
    sql: ${TABLE}.vendor_name ;;
  }

  dimension: vendor_number {
    view_label: "Vendor"
    type: string
    sql: ${TABLE}.vendor_number ;;
  }

  dimension: volume_sold_gallons {
    hidden: yes
    type: number
    sql: ${TABLE}.volume_sold_gallons ;;
  }

  measure: total_volume_sold_gallons {
    label: "Total Volume Sold (gal)"
    group_label: "Volume"
    type: sum
    sql: ${volume_sold_gallons} ;;
    value_format_name: decimal_0
  }

  dimension: volume_sold_liters {
    hidden: yes
    type: number
    sql: ${TABLE}.volume_sold_liters ;;
  }

  measure: total_volume_sold_liters {
    label: "Total Volume Sold (L)"
    group_label: "Volume"
    type: sum
    sql: ${volume_sold_liters} ;;
    value_format_name: decimal_0
  }

  dimension: zip_code {
    view_label: "Store"
    type: zipcode
    sql: ${TABLE}.zip_code ;;
    map_layer_name: us_zipcode_tabulation_areas
  }

  dimension: bottles_sold_original {
    hidden: yes
    type: string
    sql: ${TABLE}.bottles_sold_original ;;
  }

  measure: total_bottles_sold_original {
    group_label: "Sales"
    type: sum
    sql: ${bottles_sold_original} ;;
  }

  dimension: predicted_bottles_sold {
#     hidden: yes
    sql: ${TABLE}.predicted_bottles_sold ;;
  }


  }

view: predicted_bottles_sold_tables {
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: predicted_bottles_sold {
  dimension: tables {
    hidden: yes
    sql: ${TABLE}.tables ;;
  }
}
