view: dma_weight_facts {
  derived_table: {
    sql: SELECT   dma
       , dma_code
       , week
       , term
       , index_wow
       , Population_Total as population
       , SUM(Population_Total) OVER(partition by week, term) as total_population
       , Population_Total/SUM(Population_Total) OVER(partition by week, term) as dma_weight
FROM `camus-demandforecasting.iowa_liquor_dataset.metrics`
 ;;
sql_trigger_value: SELECT CURRENT_DATE ;;
  }

  dimension: pk {
    hidden: yes
    type: string
    primary_key: yes
    sql: CONCAT(${term},${measurement_raw},${dma_code}) ;;
  }


  dimension: dma {
    hidden: yes
    type: string
    sql: ${TABLE}.dma ;;
  }

  dimension: dma_code {
    hidden: yes
    type: number
    sql: ${TABLE}.dma_code ;;
  }

  dimension_group: measurement {
    hidden: yes
    type: time
    sql: TIMESTAMP(${TABLE}.week) ;;
  }

  dimension: term {
    hidden: yes
    type: string
    sql: ${TABLE}.term ;;
  }

  dimension: index_wow {
    hidden: yes
    type: number
    sql: ${TABLE}.index_wow ;;
  }

  dimension: population {
    hidden: yes
    type: number
    sql: ${TABLE}.population ;;
  }

  dimension: total_population {
    hidden: yes
    type: number
    sql: ${TABLE}.total_population ;;
  }

  dimension: dma_weight {
    hidden: yes
    type: number
    sql: ${TABLE}.dma_weight ;;
  }

}
