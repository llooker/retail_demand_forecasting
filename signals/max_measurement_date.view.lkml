view: max_measurement_date {
  derived_table: {
    sql: SELECT term
                ,MAX(week) as max_week
          FROM `camus-demandforecasting.iowa_liquor_dataset.metrics`
          GROUP BY 1
      ;;
  }

  dimension_group: max {
    hidden: yes
    type: time
    sql: TIMESTAMP(${TABLE}.max_week) ;;
  }

  dimension: term {
    hidden: yes
  }


  dimension: is_max_week {
    type: yesno
    sql: ${metrics.measurement_week} = ${max_week} ;;
  }

}
