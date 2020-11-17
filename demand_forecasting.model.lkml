connection: "looker-private-demo"

include: "/iowa_liquor/*.view.lkml"
include: "/signals/*.view.lkml"
include: "/dashboards/*.dashboard"

persist_for: "24 hours"

explore: liquor_sales_historic_predicted {
  group_label: "Retail Demand Forecasting"
  view_label: "Liquor Sales"
  label: "Iowa Liquor Sales"

}

explore: liquor_sales_predicted {
  group_label: "Retail Demand Forecasting"
  view_label: "Liquor Sales"
  label: "Iowa Liquor Sales (Predicted Only)"

  join: brand_rank {
    type: inner
    relationship: many_to_one
    sql_on: ${liquor_sales_predicted.brand} = ${brand_rank.brand} ;;
  }

  join: metrics {
    view_label: "Signals"
    type: left_outer
    relationship: many_to_many
    sql_on: ${liquor_sales_predicted.calendar_week} = ${metrics.measurement_week}
            AND lower(${liquor_sales_predicted.brand}) = ${metrics.term}
            ;;
  }

  join: dma_weight_facts {
    view_label: "Signals"
    type: left_outer
    relationship: many_to_one
    sql_on: ${metrics.measurement_week} = ${dma_weight_facts.measurement_week}
        AND ${metrics.dma_code} = ${dma_weight_facts.dma_code}
        AND ${metrics.term} = ${dma_weight_facts.term};;
  }

  join: max_measurement_date {
    type: inner
    view_label: "Signals"
    relationship: many_to_one
    sql_on: ${max_measurement_date.is_max_week} AND ${metrics.term} = ${max_measurement_date.term}  ;;
  }

  join: holidays {
    view_label: "Liquor Sales"
    type: full_outer
    relationship: many_to_one
    sql_on: ${liquor_sales_predicted.calendar_date} = ${holidays.date_date} ;;
    sql_where: ((${holidays.type} IN ('Sporting event','Federal Holiday'))
    OR ${holidays.name} IN ("Mother's Day", "Father's Day", "Valentine's Day"))
    ;;
  }


}

# map_layer: dma {
#   feature_key: "dma_code"
#   # url: "https://raw.githubusercontent.com/simzou/nielsen-dma/master/nielsen-mkt-map_simplified.json"
#   file: "/signals/dma_(1).json"
#   format: topojson
#   property_key: "dma_code"
#   projection: airy
# }

map_layer: dma {
  url: "https://raw.githubusercontent.com/simzou/nielsen-dma/master/nielsentopo.json"
  property_key: "id"
}

# map_layer: dma {
#   file: "/signals/dma_max.topojson"
#   property_key: "dma"
# }
