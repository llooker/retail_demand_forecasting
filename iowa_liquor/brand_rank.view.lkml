view: brand_rank {
 derived_table: {
   sql: SELECT *,
              ROW_NUMBER() OVER(ORDER BY a.metric desc) as rank
        FROM (
        SELECT
        liquor_sales_predicted.brand,
        {% if rank_metric._parameter_value == "'revenue'" %}
        (COALESCE(SUM(CASE WHEN NOT COALESCE((CAST(CAST(liquor_sales_predicted.date  AS TIMESTAMP) AS DATE)) >= '2020-05-31'  , FALSE) THEN (liquor_sales_predicted.state_bottle_retail*(liquor_sales_predicted.sale_dollars/liquor_sales_predicted.state_bottle_retail)) ELSE NULL END), 0))+(COALESCE(SUM(CASE WHEN (CAST(CAST(liquor_sales_predicted.date  AS TIMESTAMP) AS DATE)) >= '2020-05-31'   THEN ((liquor_sales_predicted.state_bottle_retail*(1-
        CASE WHEN 1 > 1 THEN NULL ELSE 0 END))*(liquor_sales_predicted.predicted_total_bottles_sold*1))  ELSE NULL END), 0))
        {% elsif rank_metric._parameter_value == "'gross_margin'" %}
        (COALESCE(SUM(CASE WHEN NOT COALESCE((CAST(CAST(liquor_sales_predicted.date  AS TIMESTAMP) AS DATE)) >= '2020-05-31'  , FALSE) THEN ((liquor_sales_predicted.state_bottle_retail-liquor_sales_predicted.state_bottle_cost)*(liquor_sales_predicted.sale_dollars/liquor_sales_predicted.state_bottle_retail)) ELSE NULL END), 0))+(COALESCE(SUM(CASE WHEN (CAST(CAST(liquor_sales_predicted.date  AS TIMESTAMP) AS DATE)) >= '2020-05-31'   THEN (((liquor_sales_predicted.state_bottle_retail*(1-
        CASE WHEN 1 > 1 THEN NULL ELSE 0 END))-liquor_sales_predicted.state_bottle_cost)*(liquor_sales_predicted.predicted_total_bottles_sold*1))  ELSE NULL END), 0))
        {% elsif rank_metric._parameter_value == "'aur'" %}
        (COALESCE(SUM(((liquor_sales_predicted.state_bottle_retail*(1-
        CASE WHEN 1 > 1 THEN NULL ELSE 0 END))*(liquor_sales_predicted.predicted_total_bottles_sold*1)) ), 0))/(COALESCE(SUM((liquor_sales_predicted.predicted_total_bottles_sold*1) ), 0))
        {% endif %} as metric
        FROM ${liquor_sales_predicted.SQL_TABLE_NAME} as liquor_sales_predicted
        WHERE liquor_sales_predicted.brand IS NOT NULL AND liquor_sales_predicted.brand != 'All Other Brands'
        GROUP BY 1
        ) a
        ORDER BY 2 DESC
        LIMIT 5
        ;;
 }



parameter: rank_metric {
  view_label: "Item"
  type: string
  allowed_value: {label: "Revenue" value: "revenue"}
  allowed_value: {label: "Gross Margin" value: "gross_margin"}
  allowed_value: {label: "AUR" value: "aur"}
}

dimension: brand {
  hidden: yes
}
measure: metric {
  view_label: "Item"
  label_from_parameter: rank_metric
  type: sum
  sql: ${TABLE}.metric ;;
  value_format: "[<100]$0.00;[<1000000]$0.0,,\K;$0.0,,\M"
}
dimension: rank {
  primary_key: yes
  type: number
  view_label: "Item"
  label: "Brand Rank"
  description: "Use with Rank Metric filter."
}

}
