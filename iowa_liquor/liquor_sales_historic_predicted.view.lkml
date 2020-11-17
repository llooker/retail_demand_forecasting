include: "/iowa_liquor/liquor_sales_predicted.view.lkml"

view: liquor_sales_historic_predicted {
  extends: [liquor_sales_predicted]
  derived_table: {
    sql: SELECT ROW_NUMBER() OVER(ORDER BY store_number,item_number) as pk
      ,'Actual' as type
      ,store_number
      ,CAST(NULL as string) as city
      ,zip_code
      ,county_number
      ,CAST(NULL as string) as category
      ,CAST(vendor_number as INT64) as vendor_number
      ,item_number
      ,DATE_ADD(date, INTERVAL DATE_DIFF('2020-05-31','2018-05-31',DAY) DAY) as date
      ,pack
      ,tsi
      ,item_description
      ,SUM(bottle_volume_ml) as bottle_volume_ml
      ,SUM(state_bottle_cost) as state_bottle_cost
      ,SUM(state_bottle_retail) as state_bottle_retail
      ,SUM(total_bottles_sold) as bottles_sold
      ,SUM(total_bottles_sold*state_bottle_retail) as sale_dollars
      ,SUM(1.0*(total_bottles_sold*bottle_volume_ml)/1000) as volume_sold_liters
      ,SUM(total_bottles_sold) as total_bottles_sold
      ,0 as predicted_total_bottles_sold
FROM  `camus-demandforecasting.iowa_liquor_dataset.train_val_set`
WHERE date > '2016-12-31' AND date < '2018-06-01'
GROUP BY 2,3,4,5,6,7,8,9,10,11,12,13

UNION ALL

SELECT ROW_NUMBER() OVER(ORDER BY store_number,item_number) as pk
      ,'Forecast' as type
      ,store_number
      ,city
      ,zip_code
      ,county_number
      ,category
      ,CAST(vendor_number as INT64) as vendor_number
      ,item_number
      ,DATE(date) as date
      ,pack
      ,tsi
      ,item_description
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
GROUP BY 2,3,4,5,6,7,8,9,10,11,12,13 ;;
sql_trigger_value: SELECT CURRENT_DATE ;;
  }

  dimension: type {
    type: string
  }

 }
