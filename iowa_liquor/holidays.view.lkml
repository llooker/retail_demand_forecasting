view: holidays {
  sql_table_name: `looker-private-demo.brand_sentiment.holidays`
    ;;

  dimension_group: date {
    label: "Holiday"
#     hidden: yes
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
    sql: ${TABLE}.Date ;;
  }

  dimension: has_occured {
    type: yesno
    sql: ${date_date} < CURRENT_DATE ;;
  }


  dimension: day_of_week {
    hidden: yes
    type: string
    sql: ${TABLE}.day_of_week ;;
  }

  dimension: details {
    hidden: yes
    type: string
    sql: ${TABLE}.Details ;;
  }

  dimension: name {
    label: "Holiday Event"
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: type {
    hidden: yes
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [name]
  }
}
