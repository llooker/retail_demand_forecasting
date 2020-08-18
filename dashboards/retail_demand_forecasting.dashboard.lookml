- dashboard: retail_demand_forecasting
  title: Retail Demand Forecasting
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Target
    name: Target
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: single_value
    fields: [liquor_sales_predicted.actual_plus_forecasted_revenue]
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: goal, label: Goal, expression: '120000000+${liquor_sales_predicted.actual_plus_forecasted_revenue}-${liquor_sales_predicted.actual_plus_forecasted_revenue}',
        value_format: '$0,,"M"', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4285F4"
    value_format: '[<1000000]$0.00,"K";[>=1000000]$0.00,,"M"'
    comparison_label: of Goal
    series_types: {}
    defaults_version: 1
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      City: liquor_sales_predicted.city
      Brand: liquor_sales_predicted.brand
      Category: liquor_sales_predicted.category
      Frequency: liquor_sales_predicted.frequency
      Promotion Date: liquor_sales_predicted.promotion_date
      Apply Scenario (Yes/No): liquor_sales_predicted.promotion
      Scenario: liquor_sales_predicted.promotion_amount
    row: 2
    col: 0
    width: 4
    height: 2
  - title: Actual + Forecasted Revenue and Gross Margin
    name: Actual + Forecasted Revenue and Gross Margin
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_line
    fields: [liquor_sales_predicted.calendar_date, liquor_sales_predicted.actual_revenue_filtered,
      liquor_sales_predicted.forecasted_revenue_filtered_with_promotion, liquor_sales_predicted.actual_gross_margin_filtered,
      liquor_sales_predicted.forecasted_gross_margin_filtered_with_promotion, liquor_sales_predicted.total_predicted_revenue,
      liquor_sales_predicted.total_predicted_gross_margin]
    fill_fields: [liquor_sales_predicted.calendar_date]
    filters: {}
    sorts: [liquor_sales_predicted.calendar_date]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: actual_revenue, label: Actual Revenue, expression: 'if(${liquor_sales_predicted.actual_revenue_filtered}>0,${liquor_sales_predicted.actual_revenue_filtered},null)',
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {table_calculation: forecasted_revenue, label: Forecasted Revenue, expression: 'if(${liquor_sales_predicted.forecasted_revenue_filtered_with_promotion}>0,${liquor_sales_predicted.forecasted_revenue_filtered_with_promotion},null)',
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {table_calculation: actual_gross_margin, label: Actual Gross Margin, expression: 'if(${liquor_sales_predicted.actual_gross_margin_filtered}>0,${liquor_sales_predicted.actual_gross_margin_filtered},null)',
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {table_calculation: forecast_no_promotion, label: Forecast No promotion, expression: 'if(${liquor_sales_predicted.forecasted_revenue_filtered_with_promotion}>0,${liquor_sales_predicted.total_predicted_revenue},null)',
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {table_calculation: forecasted_gross_margin, label: Forecasted Gross Margin,
        expression: 'if(${liquor_sales_predicted.forecasted_gross_margin_filtered_with_promotion}>0,${liquor_sales_predicted.forecasted_gross_margin_filtered_with_promotion},null)',
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {table_calculation: forecast_margin_no_promotion, label: Forecast Margin No
          promotion, expression: 'if(${liquor_sales_predicted.forecasted_revenue_filtered_with_promotion}>0,${liquor_sales_predicted.total_predicted_gross_margin},null)',
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: actual_revenue, id: actual_revenue,
            name: Actual Revenue}, {axisId: forecasted_revenue, id: forecasted_revenue,
            name: Forecasted Revenue}, {axisId: actual_gross_margin, id: actual_gross_margin,
            name: Actual Gross Margin}, {axisId: forecasted_gross_margin, id: forecasted_gross_margin,
            name: Forecasted Gross Margin}], showLabels: false, showValues: true,
        valueFormat: '$0.0,,"M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hide_legend: true
    series_types:
      actual_revenue: area
      actual_gross_margin: area
    series_colors:
      forecasted_revenue: "#4285F4"
      forecast_no_promotion: "#BDC1C6"
      forecast_margin_no_promotion: "#BDC1C6"
      forecasted_gross_margin: "#FBBC04"
    reference_lines: []
    trend_lines: []
    discontinuous_nulls: false
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4285F4"
    value_format: $0.0,,"M"
    comparison_label: of Goal
    defaults_version: 1
    hidden_fields: [liquor_sales_predicted.actual_revenue_filtered, liquor_sales_predicted.forecasted_revenue_filtered_with_promotion,
      liquor_sales_predicted.actual_gross_margin_filtered, liquor_sales_predicted.forecasted_gross_margin_filtered_with_promotion,
      liquor_sales_predicted.total_predicted_revenue, liquor_sales_predicted.total_predicted_gross_margin]
    title_hidden: true
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      City: liquor_sales_predicted.city
      Brand: liquor_sales_predicted.brand
      Category: liquor_sales_predicted.category
      Frequency: liquor_sales_predicted.frequency
      Promotion Date: liquor_sales_predicted.promotion_date
      Apply Scenario (Yes/No): liquor_sales_predicted.promotion
      Scenario: liquor_sales_predicted.promotion_amount
    row: 6
    col: 4
    width: 20
    height: 6
  - title: Margin
    name: Margin
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: single_value
    fields: [liquor_sales_predicted.actual_plus_forecasted_gross_margin, liquor_sales_predicted.actual_plus_forecasted_revenue]
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: margin, label: Margin, expression: "${liquor_sales_predicted.actual_plus_forecasted_gross_margin}/${liquor_sales_predicted.actual_plus_forecasted_revenue}",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#FBBC04"
    value_format: '[<1000000]$0.0,"K";[>=1000000]$0.00,,"M"'
    comparison_label: Gross Margin
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    hidden_fields: [liquor_sales_predicted.actual_plus_forecasted_revenue]
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      City: liquor_sales_predicted.city
      Brand: liquor_sales_predicted.brand
      Category: liquor_sales_predicted.category
      Frequency: liquor_sales_predicted.frequency
      Promotion Date: liquor_sales_predicted.promotion_date
      Apply Scenario (Yes/No): liquor_sales_predicted.promotion
      Scenario: liquor_sales_predicted.promotion_amount
    row: 4
    col: 0
    width: 4
    height: 2
  - title: Map
    name: Map
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_geo_coordinates
    fields: [liquor_sales_predicted.actual_plus_forecasted_bottles, liquor_sales_predicted.store_location]
    filters:
      liquor_sales_predicted.store_location: "-NULL"
    sorts: [liquor_sales_predicted.actual_plus_forecasted_bottles desc]
    limit: 500
    column_limit: 50
    map: topojson
    map_projection: ''
    show_view_names: false
    map_url: https://raw.githubusercontent.com/deldersveld/topojson/master/countries/us-states/IA-19-iowa-counties.json
    point_color: "#34A853"
    point_radius: 3
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    custom_color: "#FBBC04"
    show_single_value_title: false
    value_format: $0.00,,"M"
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Gross Margin
    enable_conditional_formatting: true
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    title_hidden: true
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      City: liquor_sales_predicted.city
      Brand: liquor_sales_predicted.brand
      Category: liquor_sales_predicted.category
      Frequency: liquor_sales_predicted.frequency
      Promotion Date: liquor_sales_predicted.promotion_date
      Apply Scenario (Yes/No): liquor_sales_predicted.promotion
      Scenario: liquor_sales_predicted.promotion_amount
    row: 8
    col: 0
    width: 4
    height: 4
  - name: ''
    type: text
    title_text: ''
    subtitle_text: Promotions
    body_text: "<center>Bottles Sold by Day (Promotions in Blue)</center>"
    row: 12
    col: 0
    width: 5
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: Holidays
    body_text: "<center>Federal Holidays and Social Observances</center>"
    row: 14
    col: 0
    width: 5
    height: 3
  - title: Signals
    name: Signals
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_column
    fields: [metrics.adjusted_score_wow, metrics.measurement_week]
    fill_fields: [metrics.measurement_week]
    filters:
      metrics.is_iowa: 'Yes'
      metrics.term: jack daniels
    sorts: [metrics.measurement_week]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: metrics.adjusted_score_wow,
            id: metrics.adjusted_score_wow, name: Index WoW}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      metrics.adjusted_score_wow: "#FBBC04"
    trend_lines: [{color: "#9AA0A6", label_position: right, period: 4, regression_type: average,
        series_index: 1, show_label: true, label_type: string, label: 4 Wk. Avg.}]
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    title_hidden: true
    listen:
      Calendar Date: metrics.measurement_date
    row: 16
    col: 5
    width: 19
    height: 4
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: DEMAND Signals
    body_text: "<center>Indexed Search Data from DEMAND</center>"
    row: 17
    col: 0
    width: 5
    height: 3
  - title: AUR
    name: AUR
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: single_value
    fields: [liquor_sales_predicted.predicted_aur_promotion]
    filters: {}
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#EA4335"
    defaults_version: 1
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      City: liquor_sales_predicted.city
      Brand: liquor_sales_predicted.brand
      Category: liquor_sales_predicted.category
      Frequency: liquor_sales_predicted.frequency
      Promotion Date: liquor_sales_predicted.promotion_date
      Apply Scenario (Yes/No): liquor_sales_predicted.promotion
      Scenario: liquor_sales_predicted.promotion_amount
    row: 6
    col: 0
    width: 4
    height: 2
  - title: Bottles Sold + Promotion Days
    name: Bottles Sold + Promotion Days
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_column
    fields: [liquor_sales_predicted.calendar_date, liquor_sales_predicted.actual_plus_forecasted_bottles,
      liquor_sales_predicted.promotion_boost]
    filters: {}
    sorts: [liquor_sales_predicted.calendar_date]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: non_forecast, label: Non Forecast, expression: 'if(${liquor_sales_predicted.promotion_boost}
          > 1,${liquor_sales_predicted.actual_plus_forecasted_bottles},0)', value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, _type_hint: number}, {
        table_calculation: no_promotion, label: No Promotion, expression: 'if(${liquor_sales_predicted.promotion_boost}
          <= 1,${liquor_sales_predicted.actual_plus_forecasted_bottles},0)', value_format: !!null '',
        value_format_name: decimal_0, is_disabled: false, _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: liquor_sales_predicted.actual_plus_forecasted_bottles,
            id: liquor_sales_predicted.actual_plus_forecasted_bottles, name: Total
              Bottles Sold (Actual + Forecasted)}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: true
    series_types: {}
    series_colors:
      no_promotion: "#E8EAED"
    show_null_points: false
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4285F4"
    value_format: $0.0,,"M"
    comparison_label: of Goal
    defaults_version: 1
    hidden_fields: [liquor_sales_predicted.actual_plus_forecasted_bottles]
    title_hidden: true
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      City: liquor_sales_predicted.city
      Brand: liquor_sales_predicted.brand
      Category: liquor_sales_predicted.category
      Frequency: liquor_sales_predicted.frequency
      Promotion Date: liquor_sales_predicted.promotion_date
      Apply Scenario (Yes/No): liquor_sales_predicted.promotion
      Scenario: liquor_sales_predicted.promotion_amount
    row: 12
    col: 5
    width: 19
    height: 2
  - name: Holidays
    title: Holidays
    merged_queries:
    - model: demand_forecasting
      explore: liquor_sales_predicted
      type: looker_column
      fields: [holidays.date_date, count_of_holiday_event]
      fill_fields: [holidays.date_date]
      filters:
        holidays.date_date: last quarter
      sorts: [holidays.date_date]
      limit: 500
      column_limit: 50
      dynamic_fields: [{measure: count_of_promotion_boost, based_on: liquor_sales_predicted.promotion_boost,
          type: count_distinct, label: Count of Promotion Boost, value_format: !!null '',
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number, filter_expression: "${liquor_sales_predicted.promotion_boost}\
            \ > 1"}, {measure: count_of_holiday_event, based_on: holidays.name, expression: '',
          label: Count of Holiday Event, type: count_distinct, _kind_hint: measure,
          _type_hint: number}]
      x_axis_gridlines: false
      y_axis_gridlines: false
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: false
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: normal
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      y_axes: [{label: '', orientation: left, series: [{axisId: count_of_promotion_boost,
              id: count_of_promotion_boost, name: Count of Promotion Boost}], showLabels: false,
          showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
          type: linear}]
      series_types: {}
      series_colors:
        count_of_holiday_event: "#EA4335"
      map: topojson
      map_projection: ''
      map_url: https://raw.githubusercontent.com/deldersveld/topojson/master/countries/us-states/IA-19-iowa-counties.json
      point_color: "#4285F4"
      point_radius: 3
      custom_color_enabled: true
      custom_color: "#FBBC04"
      show_single_value_title: false
      value_format: $0.00,,"M"
      show_comparison: true
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      comparison_label: Gross Margin
      enable_conditional_formatting: true
      conditional_formatting: [{type: equal to, value: !!null '', background_color: "#4285F4",
          font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
          bold: false, italic: false, strikethrough: false, fields: !!null ''}]
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
      hidden_fields: []
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
    - model: demand_forecasting
      explore: liquor_sales_predicted
      type: table
      fields: [liquor_sales_predicted.calendar_date, liquor_sales_predicted.actual_plus_forecasted_bottles]
      fill_fields: [liquor_sales_predicted.calendar_date]
      filters:
        liquor_sales_predicted.calendar_date: last quarter
        liquor_sales_predicted.promotion_date: 7 days
        liquor_sales_predicted.promotion: 'yes'
        liquor_sales_predicted.promotion_amount: '0.05'
        liquor_sales_predicted.frequency: Peak Days
      sorts: [liquor_sales_predicted.calendar_date desc]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: liquor_sales_predicted.calendar_date
        source_field_name: holidays.date_date
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: holiday, id: holiday,
            name: Holiday}, {axisId: no_holiday, id: no_holiday, name: No Holiday}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    hide_legend: true
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      holiday: "#EA4335"
      no_holiday: "#E8EAED"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_column
    hidden_fields: [liquor_sales_predicted.actual_plus_forecasted_bottles, count_of_holiday_event]
    dynamic_fields: [{table_calculation: holiday, label: Holiday, expression: "if(${count_of_holiday_event}>0\
          \ AND is_null(${liquor_sales_predicted.actual_plus_forecasted_bottles})\
          \ AND is_null(offset(${liquor_sales_predicted.actual_plus_forecasted_bottles},-1)),offset(${liquor_sales_predicted.actual_plus_forecasted_bottles},1),\n\
          \nif(${count_of_holiday_event}>0 AND is_null(${liquor_sales_predicted.actual_plus_forecasted_bottles}),offset(${liquor_sales_predicted.actual_plus_forecasted_bottles},-1),if(${count_of_holiday_event}>0,${liquor_sales_predicted.actual_plus_forecasted_bottles},0)))\n\
          \n", value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: no_holiday, label: No Holiday, expression: 'if(${holiday}>0,0,${liquor_sales_predicted.actual_plus_forecasted_bottles})',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}]
    listen:
    - Calendar Date: holidays.date_date
    - Calendar Date: liquor_sales_predicted.calendar_date
      City: liquor_sales_predicted.city
      Brand: liquor_sales_predicted.brand
      Category: liquor_sales_predicted.category
      Frequency: liquor_sales_predicted.frequency
      Promotion Date: liquor_sales_predicted.promotion_date
      Apply Scenario (Yes/No): liquor_sales_predicted.promotion
      Scenario: liquor_sales_predicted.promotion_amount
    row: 14
    col: 5
    width: 19
    height: 2
  - title: Revenue Goals
    name: Revenue Goals
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_column
    fields: [liquor_sales_predicted.calendar_date, liquor_sales_predicted.actual_plus_forecasted_revenue,
      liquor_sales_predicted.type]
    filters: {}
    sorts: [liquor_sales_predicted.calendar_date]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: forecast, label: Forecast, expression: 'if(${liquor_sales_predicted.type},running_total(${liquor_sales_predicted.actual_plus_forecasted_revenue}),0)',
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {table_calculation: goal, label: Goal, expression: "${forecast}+if(extract_months(${liquor_sales_predicted.calendar_date})=4\
          \ AND extract_days(${liquor_sales_predicted.calendar_date})<=15,20000000,if(extract_months(${liquor_sales_predicted.calendar_date})=4\
          \ AND extract_days(${liquor_sales_predicted.calendar_date})<=30,40000000,if(extract_months(${liquor_sales_predicted.calendar_date})=5\
          \ AND extract_days(${liquor_sales_predicted.calendar_date})<=15,60000000,if(extract_months(${liquor_sales_predicted.calendar_date})=5\
          \ AND extract_days(${liquor_sales_predicted.calendar_date})<=31,80000000,if(extract_months(${liquor_sales_predicted.calendar_date})=6\
          \ AND extract_days(${liquor_sales_predicted.calendar_date})<=15,100000000,if(extract_months(${liquor_sales_predicted.calendar_date})=6\
          \ AND extract_days(${liquor_sales_predicted.calendar_date})<=30,125000000,0))))))-${forecast}",
        value_format: !!null '', value_format_name: usd_0, _kind_hint: measure, _type_hint: number},
      {table_calculation: actual, label: Actual, expression: 'if(${liquor_sales_predicted.type}
          = no,running_total(${liquor_sales_predicted.actual_plus_forecasted_revenue}),0)',
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: forecast, id: forecast,
            name: Forecast}, {axisId: goal, id: goal, name: Goal}, {axisId: actual,
            id: actual, name: Actual}], showLabels: true, showValues: true, valueFormat: '$0,,"M"',
        unpinAxis: false, tickDensity: default, type: linear}]
    hide_legend: true
    series_types:
      goal: line
    series_colors:
      revenue: "#9AA0A6"
      goal: "#34A853"
      actual: "#9AA0A6"
      forecast: "#E8EAED"
    reference_lines: [{reference_type: line, line_value: max, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: left,
        color: "#5F6368", value_format: '"Revenue: "$0.0,,"M"'}, {reference_type: line,
        range_start: max, range_end: min, margin_top: deviation, margin_value: mean,
        margin_bottom: deviation, label_position: left, color: "#34A853", line_value: '125000000',
        label: 'Goal: $120M'}]
    show_null_points: true
    interpolation: step
    defaults_version: 1
    hidden_fields: [liquor_sales_predicted.actual_plus_forecasted_revenue]
    title_hidden: true
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      City: liquor_sales_predicted.city
      Brand: liquor_sales_predicted.brand
      Category: liquor_sales_predicted.category
      Frequency: liquor_sales_predicted.frequency
      Promotion Date: liquor_sales_predicted.promotion_date
      Apply Scenario (Yes/No): liquor_sales_predicted.promotion
      Scenario: liquor_sales_predicted.promotion_amount
    row: 2
    col: 4
    width: 20
    height: 4
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"border: solid 1px #4285F4; border-radius: 5px; padding:\
      \ 5px 10px;  background: #FFF; height: 60px\">\n<nav style=\"font-size: 18px;\
      \ color: #4285F4\">\n  <a style=\"padding: 5px; float: left; line-height: 40px;\
      \ margin-left: 8px; font-weight: bold\" href=\"/embed/dashboards-next/598?theme=GoogleWhite\"\
      >☰  \n Overview</a>\n  <a style=\"padding: 5px; float: left; line-height: 40px;\
      \ \" href=\"/embed/dashboards-next/600?theme=GoogleWhite\">Brands</a>\n<a style=\"\
      padding: 5px; float: left; line-height: 40px;\" href=\"#categories\">Categories</a>\n\
      </nav>\n</div>"
    row: 0
    col: 0
    width: 6
    height: 2
  - title: Today
    name: Today
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: single_value
    fields: [liquor_sales_predicted.date_display]
    sorts: [liquor_sales_predicted.date_display]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4285F4"
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 19
    width: 5
    height: 2
  filters:
  - name: Calendar Date
    title: Calendar Date
    type: field_filter
    default_value: last quarter
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: demand_forecasting
    explore: liquor_sales_predicted
    listens_to_filters: []
    field: liquor_sales_predicted.calendar_date
  - name: City
    title: City
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: demand_forecasting
    explore: liquor_sales_predicted
    listens_to_filters: []
    field: liquor_sales_predicted.city
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: demand_forecasting
    explore: liquor_sales_predicted
    listens_to_filters: []
    field: liquor_sales_predicted.brand
  - name: Category
    title: Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: demand_forecasting
    explore: liquor_sales_predicted
    listens_to_filters: []
    field: liquor_sales_predicted.category
  - name: Apply Scenario (Yes/No)
    title: Apply Promotion (Yes/No)
    type: field_filter
    default_value: 'yes'
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: overflow
      options:
      - 'yes'
      - 'no'
    model: demand_forecasting
    explore: liquor_sales_predicted
    listens_to_filters: []
    field: liquor_sales_predicted.promotion
  - name: Scenario
    title: Scenerio
    type: field_filter
    default_value: '0.20'
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: overflow
    model: demand_forecasting
    explore: liquor_sales_predicted
    listens_to_filters: []
    field: liquor_sales_predicted.promotion_amount
  - name: Frequency
    title: Frequency
    type: field_filter
    default_value: Normal Days
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: overflow
      options:
      - Normal Days
      - Peak Days
      - Holidays
      - Slow Days
    model: demand_forecasting
    explore: liquor_sales_predicted
    listens_to_filters: []
    field: liquor_sales_predicted.frequency
  - name: Promotion Date
    title: Promotion Date
    type: field_filter
    default_value: 2020/06/01 to 2020/07/02
    allow_multiple_values: true
    required: false
    ui_config:
      type: day_range_picker
      display: overflow
      options: []
    model: demand_forecasting
    explore: liquor_sales_predicted
    listens_to_filters: []
    field: liquor_sales_predicted.promotion_date
