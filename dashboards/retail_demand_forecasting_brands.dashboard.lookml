- dashboard: retail_demand_forecasting_brand_compare
  title: 'Retail Demand Forecasting: Brand Compare'
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Bottles Sold 1
    name: Bottles Sold 1
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_column
    fields: [liquor_sales_predicted.type, liquor_sales_predicted.calendar_week, liquor_sales_predicted.actual_plus_forecasted_bottles,
      liquor_sales_predicted.total_predicted_bottles_sold]
    filters:
      liquor_sales_predicted.promotion: 'yes'
      brand_rank.rank: '1'
    sorts: [liquor_sales_predicted.calendar_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: lift, label: Lift, expression: 'if(${liquor_sales_predicted.type},${liquor_sales_predicted.actual_plus_forecasted_bottles}-${liquor_sales_predicted.total_predicted_bottles_sold},0)',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: forecasted, label: Forecasted, expression: 'if(${liquor_sales_predicted.type},${liquor_sales_predicted.actual_plus_forecasted_bottles},0)',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: actual, label: Actual, expression: 'if(${liquor_sales_predicted.type}=
          no,${liquor_sales_predicted.actual_plus_forecasted_bottles},0)', value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, _type_hint: number}]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: desc
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: forecasted, id: forecasted,
            name: Forecasted}, {axisId: actual, id: actual, name: Actual}, {axisId: lift,
            id: lift, name: Lift}], showLabels: false, showValues: false, valueFormat: '0,"K"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: 75%
    label_value_format: 0,"k"
    series_types: {}
    series_colors:
      actual: "#4285F4"
      forecasted: "#BDC1C6"
      lift: "#EA4335"
    series_labels:
      lift: Promo Lift
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [liquor_sales_predicted.type, liquor_sales_predicted.actual_plus_forecasted_bottles,
      liquor_sales_predicted.total_predicted_bottles_sold]
    title_hidden: true
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 2
    col: 6
    width: 6
    height: 4
  - title: Bottles Sold 2
    name: Bottles Sold 2
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_column
    fields: [liquor_sales_predicted.type, liquor_sales_predicted.calendar_week, liquor_sales_predicted.actual_plus_forecasted_bottles,
      liquor_sales_predicted.total_predicted_bottles_sold]
    filters:
      liquor_sales_predicted.promotion: 'yes'
      brand_rank.rank: '2'
    sorts: [liquor_sales_predicted.calendar_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: lift, label: Lift, expression: 'if(${liquor_sales_predicted.type},${liquor_sales_predicted.actual_plus_forecasted_bottles}-${liquor_sales_predicted.total_predicted_bottles_sold},0)',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: forecasted, label: Forecasted, expression: 'if(${liquor_sales_predicted.type},${liquor_sales_predicted.actual_plus_forecasted_bottles},0)',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: actual, label: Actual, expression: 'if(${liquor_sales_predicted.type}=
          no,${liquor_sales_predicted.actual_plus_forecasted_bottles},0)', value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, _type_hint: number}]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: desc
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: forecasted, id: forecasted,
            name: Forecasted}, {axisId: actual, id: actual, name: Actual}, {axisId: lift,
            id: lift, name: Lift}], showLabels: false, showValues: false, valueFormat: '0,"K"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: 75%
    label_value_format: 0,"k"
    series_types: {}
    series_colors:
      actual: "#4285F4"
      forecasted: "#BDC1C6"
      lift: "#EA4335"
    series_labels:
      lift: Promo Lift
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [liquor_sales_predicted.type, liquor_sales_predicted.actual_plus_forecasted_bottles,
      liquor_sales_predicted.total_predicted_bottles_sold]
    title_hidden: true
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 6
    col: 6
    width: 6
    height: 4
  - title: Brand 1
    name: Brand 1
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: single_value
    fields: [liquor_sales_predicted.brand_display]
    filters:
      brand_rank.rank: '1'
    sorts: [liquor_sales_predicted.brand_display]
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    defaults_version: 1
    series_types: {}
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 2
    col: 0
    width: 3
    height: 4
  - title: Brand 2
    name: Brand 2
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: single_value
    fields: [liquor_sales_predicted.brand_display]
    filters:
      brand_rank.rank: '2'
    sorts: [liquor_sales_predicted.brand_display]
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    defaults_version: 1
    series_types: {}
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 6
    col: 0
    width: 3
    height: 4
  - title: Brand 3
    name: Brand 3
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: single_value
    fields: [liquor_sales_predicted.brand_display]
    filters:
      brand_rank.rank: '3'
    sorts: [liquor_sales_predicted.brand_display]
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    defaults_version: 1
    series_types: {}
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 10
    col: 0
    width: 3
    height: 4
  - title: Brand 4
    name: Brand 4
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: single_value
    fields: [liquor_sales_predicted.brand_display]
    filters:
      brand_rank.rank: '4'
    sorts: [liquor_sales_predicted.brand_display]
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    defaults_version: 1
    series_types: {}
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 14
    col: 0
    width: 3
    height: 4
  - title: Brand 5
    name: Brand 5
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: single_value
    fields: [liquor_sales_predicted.brand_display]
    filters:
      brand_rank.rank: '5'
    sorts: [liquor_sales_predicted.brand_display]
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    defaults_version: 1
    series_types: {}
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 18
    col: 0
    width: 3
    height: 4
  - title: Bottles Sold 3
    name: Bottles Sold 3
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_column
    fields: [liquor_sales_predicted.type, liquor_sales_predicted.calendar_week, liquor_sales_predicted.actual_plus_forecasted_bottles,
      liquor_sales_predicted.total_predicted_bottles_sold]
    filters:
      liquor_sales_predicted.promotion: 'yes'
      brand_rank.rank: '3'
    sorts: [liquor_sales_predicted.calendar_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: lift, label: Lift, expression: 'if(${liquor_sales_predicted.type},${liquor_sales_predicted.actual_plus_forecasted_bottles}-${liquor_sales_predicted.total_predicted_bottles_sold},0)',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: forecasted, label: Forecasted, expression: 'if(${liquor_sales_predicted.type},${liquor_sales_predicted.actual_plus_forecasted_bottles},0)',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: actual, label: Actual, expression: 'if(${liquor_sales_predicted.type}=
          no,${liquor_sales_predicted.actual_plus_forecasted_bottles},0)', value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, _type_hint: number}]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: desc
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: forecasted, id: forecasted,
            name: Forecasted}, {axisId: actual, id: actual, name: Actual}, {axisId: lift,
            id: lift, name: Lift}], showLabels: false, showValues: false, valueFormat: '0,"K"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: 75%
    label_value_format: 0,"k"
    series_types: {}
    series_colors:
      actual: "#4285F4"
      forecasted: "#BDC1C6"
      lift: "#EA4335"
    series_labels:
      lift: Promo Lift
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [liquor_sales_predicted.type, liquor_sales_predicted.actual_plus_forecasted_bottles,
      liquor_sales_predicted.total_predicted_bottles_sold]
    title_hidden: true
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 10
    col: 6
    width: 6
    height: 4
  - title: Bottles Sold 4
    name: Bottles Sold 4
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_column
    fields: [liquor_sales_predicted.type, liquor_sales_predicted.calendar_week, liquor_sales_predicted.actual_plus_forecasted_bottles,
      liquor_sales_predicted.total_predicted_bottles_sold]
    filters:
      liquor_sales_predicted.promotion: 'yes'
      brand_rank.rank: '4'
    sorts: [liquor_sales_predicted.calendar_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: lift, label: Lift, expression: 'if(${liquor_sales_predicted.type},${liquor_sales_predicted.actual_plus_forecasted_bottles}-${liquor_sales_predicted.total_predicted_bottles_sold},0)',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: forecasted, label: Forecasted, expression: 'if(${liquor_sales_predicted.type},${liquor_sales_predicted.actual_plus_forecasted_bottles},0)',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: actual, label: Actual, expression: 'if(${liquor_sales_predicted.type}=
          no,${liquor_sales_predicted.actual_plus_forecasted_bottles},0)', value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, _type_hint: number}]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: desc
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: forecasted, id: forecasted,
            name: Forecasted}, {axisId: actual, id: actual, name: Actual}, {axisId: lift,
            id: lift, name: Lift}], showLabels: false, showValues: false, valueFormat: '0,"K"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: 75%
    label_value_format: 0,"k"
    series_types: {}
    series_colors:
      actual: "#4285F4"
      forecasted: "#BDC1C6"
      lift: "#EA4335"
    series_labels:
      lift: Promo Lift
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [liquor_sales_predicted.type, liquor_sales_predicted.actual_plus_forecasted_bottles,
      liquor_sales_predicted.total_predicted_bottles_sold]
    title_hidden: true
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 14
    col: 6
    width: 6
    height: 4
  - title: Bottles Sold 5
    name: Bottles Sold 5
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_column
    fields: [liquor_sales_predicted.type, liquor_sales_predicted.calendar_week, liquor_sales_predicted.actual_plus_forecasted_bottles,
      liquor_sales_predicted.total_predicted_bottles_sold]
    filters:
      liquor_sales_predicted.promotion: 'yes'
      brand_rank.rank: '5'
    sorts: [liquor_sales_predicted.calendar_week desc]
    limit: 500
    dynamic_fields: [{table_calculation: lift, label: Lift, expression: 'if(${liquor_sales_predicted.type},${liquor_sales_predicted.actual_plus_forecasted_bottles}-${liquor_sales_predicted.total_predicted_bottles_sold},0)',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: forecasted, label: Forecasted, expression: 'if(${liquor_sales_predicted.type},${liquor_sales_predicted.actual_plus_forecasted_bottles},0)',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: actual, label: Actual, expression: 'if(${liquor_sales_predicted.type}=
          no,${liquor_sales_predicted.actual_plus_forecasted_bottles},0)', value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, _type_hint: number}]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: desc
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: forecasted, id: forecasted,
            name: Forecasted}, {axisId: actual, id: actual, name: Actual}, {axisId: lift,
            id: lift, name: Lift}], showLabels: false, showValues: false, valueFormat: '0,"K"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: 75%
    label_value_format: 0,"k"
    series_types: {}
    series_colors:
      actual: "#4285F4"
      forecasted: "#BDC1C6"
      lift: "#EA4335"
    series_labels:
      lift: Promo Lift
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [liquor_sales_predicted.type, liquor_sales_predicted.actual_plus_forecasted_bottles,
      liquor_sales_predicted.total_predicted_bottles_sold]
    title_hidden: true
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 18
    col: 6
    width: 6
    height: 4
  - title: Signals 1
    name: Signals 1
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_column
    fields: [metrics.adjusted_score_wow, metrics.measurement_week]
    filters:
      metrics.is_iowa: 'Yes'
      brand_rank.rank: '1'
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
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 2
    col: 18
    width: 6
    height: 4
  - title: Signals 2
    name: Signals 2
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_column
    fields: [metrics.adjusted_score_wow, metrics.measurement_week]
    filters:
      metrics.is_iowa: 'Yes'
      brand_rank.rank: '2'
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
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 6
    col: 18
    width: 6
    height: 4
  - title: Signals 3
    name: Signals 3
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_column
    fields: [metrics.adjusted_score_wow, metrics.measurement_week]
    filters:
      metrics.is_iowa: 'Yes'
      brand_rank.rank: '3'
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
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 10
    col: 18
    width: 6
    height: 4
  - title: Signals 4
    name: Signals 4
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_column
    fields: [metrics.adjusted_score_wow, metrics.measurement_week]
    filters:
      metrics.is_iowa: 'Yes'
      brand_rank.rank: '4'
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
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 14
    col: 18
    width: 6
    height: 4
  - title: Signals 5
    name: Signals 5
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_column
    fields: [metrics.adjusted_score_wow, metrics.measurement_week]
    filters:
      metrics.is_iowa: 'Yes'
      brand_rank.rank: '5'
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
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 18
    col: 18
    width: 6
    height: 4
  - title: Revenue 1
    name: Revenue 1
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_line
    fields: [liquor_sales_predicted.total_predicted_revenue_promotion, liquor_sales_predicted.total_revenue,
      liquor_sales_predicted.calendar_date]
    fill_fields: [liquor_sales_predicted.calendar_date]
    filters:
      liquor_sales_predicted.promotion: 'yes'
      brand_rank.rank: '1'
    sorts: [liquor_sales_predicted.calendar_date desc]
    limit: 500
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
    y_axes: [{label: '', orientation: left, series: [{axisId: liquor_sales_predicted.total_predicted_revenue_promotion,
            id: liquor_sales_predicted.total_predicted_revenue_promotion, name: Total
              Predicted Revenue (Promotion)}, {axisId: liquor_sales_predicted.total_revenue,
            id: liquor_sales_predicted.total_revenue, name: Total Revenue}], showLabels: false,
        showValues: false, valueFormat: '0,"K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    font_size: 65%
    label_value_format: 0,"k"
    series_types:
      liquor_sales_predicted.total_revenue: area
    series_colors:
      actual: "#4285F4"
      forecasted: "#BDC1C6"
      lift: "#EA4335"
      liquor_sales_predicted.total_revenue: "#BDC1C6"
    series_labels:
      lift: Promo Lift
      liquor_sales_predicted.total_revenue: Actual
      liquor_sales_predicted.total_predicted_revenue_promotion: Forecasted
    label_color: [black, transparent]
    ordering: desc
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [lift, forecasted, actual]
    hidden_points_if_no: []
    title_hidden: true
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 2
    col: 12
    width: 6
    height: 4
  - title: Revenue 2
    name: Revenue 2
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_line
    fields: [liquor_sales_predicted.total_predicted_revenue_promotion, liquor_sales_predicted.total_revenue,
      liquor_sales_predicted.calendar_date]
    fill_fields: [liquor_sales_predicted.calendar_date]
    filters:
      liquor_sales_predicted.promotion: 'yes'
      brand_rank.rank: '2'
    sorts: [liquor_sales_predicted.calendar_date desc]
    limit: 500
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
    y_axes: [{label: '', orientation: left, series: [{axisId: liquor_sales_predicted.total_predicted_revenue_promotion,
            id: liquor_sales_predicted.total_predicted_revenue_promotion, name: Total
              Predicted Revenue (Promotion)}, {axisId: liquor_sales_predicted.total_revenue,
            id: liquor_sales_predicted.total_revenue, name: Total Revenue}], showLabels: false,
        showValues: false, valueFormat: '0,"K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    font_size: 75%
    label_value_format: 0,"k"
    series_types:
      liquor_sales_predicted.total_revenue: area
    series_colors:
      actual: "#4285F4"
      forecasted: "#BDC1C6"
      lift: "#EA4335"
      liquor_sales_predicted.total_revenue: "#BDC1C6"
    series_labels:
      lift: Promo Lift
      liquor_sales_predicted.total_revenue: Actual
      liquor_sales_predicted.total_predicted_revenue_promotion: Forecasted
    ordering: desc
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [lift, forecasted, actual]
    hidden_points_if_no: []
    title_hidden: true
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 6
    col: 12
    width: 6
    height: 4
  - title: Revenue 3
    name: Revenue 3
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_line
    fields: [liquor_sales_predicted.total_predicted_revenue_promotion, liquor_sales_predicted.total_revenue,
      liquor_sales_predicted.calendar_date]
    fill_fields: [liquor_sales_predicted.calendar_date]
    filters:
      liquor_sales_predicted.promotion: 'yes'
      brand_rank.rank: '3'
    sorts: [liquor_sales_predicted.calendar_date desc]
    limit: 500
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
    y_axes: [{label: '', orientation: left, series: [{axisId: liquor_sales_predicted.total_predicted_revenue_promotion,
            id: liquor_sales_predicted.total_predicted_revenue_promotion, name: Total
              Predicted Revenue (Promotion)}, {axisId: liquor_sales_predicted.total_revenue,
            id: liquor_sales_predicted.total_revenue, name: Total Revenue}], showLabels: false,
        showValues: false, valueFormat: '0,"K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    font_size: 75%
    label_value_format: 0,"k"
    series_types:
      liquor_sales_predicted.total_revenue: area
    series_colors:
      actual: "#4285F4"
      forecasted: "#BDC1C6"
      lift: "#EA4335"
      liquor_sales_predicted.total_revenue: "#BDC1C6"
    series_labels:
      lift: Promo Lift
      liquor_sales_predicted.total_revenue: Actual
      liquor_sales_predicted.total_predicted_revenue_promotion: Forecasted
    ordering: desc
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [lift, forecasted, actual]
    hidden_points_if_no: []
    title_hidden: true
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 10
    col: 12
    width: 6
    height: 4
  - title: Revenue 4
    name: Revenue 4
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_line
    fields: [liquor_sales_predicted.total_predicted_revenue_promotion, liquor_sales_predicted.total_revenue,
      liquor_sales_predicted.calendar_date]
    fill_fields: [liquor_sales_predicted.calendar_date]
    filters:
      liquor_sales_predicted.promotion: 'yes'
      brand_rank.rank: '1'
    sorts: [liquor_sales_predicted.calendar_date desc]
    limit: 500
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
    y_axes: [{label: '', orientation: left, series: [{axisId: liquor_sales_predicted.total_predicted_revenue_promotion,
            id: liquor_sales_predicted.total_predicted_revenue_promotion, name: Total
              Predicted Revenue (Promotion)}, {axisId: liquor_sales_predicted.total_revenue,
            id: liquor_sales_predicted.total_revenue, name: Total Revenue}], showLabels: false,
        showValues: false, valueFormat: '0,"K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    font_size: 75%
    label_value_format: 0,"k"
    series_types:
      liquor_sales_predicted.total_revenue: area
    series_colors:
      actual: "#4285F4"
      forecasted: "#BDC1C6"
      lift: "#EA4335"
      liquor_sales_predicted.total_revenue: "#BDC1C6"
    series_labels:
      lift: Promo Lift
      liquor_sales_predicted.total_revenue: Actual
      liquor_sales_predicted.total_predicted_revenue_promotion: Forecasted
    ordering: desc
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [lift, forecasted, actual]
    hidden_points_if_no: []
    title_hidden: true
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 14
    col: 12
    width: 6
    height: 4
  - title: Revenue 5
    name: Revenue 5
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_line
    fields: [liquor_sales_predicted.total_predicted_revenue_promotion, liquor_sales_predicted.total_revenue,
      liquor_sales_predicted.calendar_date]
    fill_fields: [liquor_sales_predicted.calendar_date]
    filters:
      liquor_sales_predicted.promotion: 'yes'
      brand_rank.rank: '1'
    sorts: [liquor_sales_predicted.calendar_date desc]
    limit: 500
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
    y_axes: [{label: '', orientation: left, series: [{axisId: liquor_sales_predicted.total_predicted_revenue_promotion,
            id: liquor_sales_predicted.total_predicted_revenue_promotion, name: Total
              Predicted Revenue (Promotion)}, {axisId: liquor_sales_predicted.total_revenue,
            id: liquor_sales_predicted.total_revenue, name: Total Revenue}], showLabels: false,
        showValues: false, valueFormat: '0,"K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    font_size: 75%
    label_value_format: 0,"k"
    series_types:
      liquor_sales_predicted.total_revenue: area
    series_colors:
      actual: "#4285F4"
      forecasted: "#BDC1C6"
      lift: "#EA4335"
      liquor_sales_predicted.total_revenue: "#BDC1C6"
    series_labels:
      lift: Promo Lift
      liquor_sales_predicted.total_revenue: Actual
      liquor_sales_predicted.total_predicted_revenue_promotion: Forecasted
    ordering: desc
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [lift, forecasted, actual]
    hidden_points_if_no: []
    title_hidden: true
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 18
    col: 12
    width: 6
    height: 4
  - title: Metric 1
    name: Metric 1
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: single_value
    fields: [brand_rank.metric]
    filters:
      brand_rank.rank: '1'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4285F4"
    single_value_title: Rank By
    defaults_version: 1
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 2
    col: 3
    width: 3
    height: 2
  - title: Map 1
    name: Map 1
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_geo_coordinates
    fields: [liquor_sales_predicted.actual_plus_forecasted_bottles, liquor_sales_predicted.store_location]
    filters:
      liquor_sales_predicted.promotion: 'yes'
      liquor_sales_predicted.store_location: "-NULL"
      liquor_sales_predicted.city: ''
      liquor_sales_predicted.category: ''
      brand_rank.rank: '1'
    sorts: [liquor_sales_predicted.actual_plus_forecasted_bottles desc]
    limit: 500
    column_limit: 50
    map: topojson
    map_projection: ''
    show_view_names: false
    map_url: https://raw.githubusercontent.com/deldersveld/topojson/master/countries/us-states/IA-19-iowa-counties.json
    point_color: "#34A853"
    map_color: ''
    point_radius: 1.5
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
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 4
    col: 3
    width: 3
    height: 2
  - title: Map 2
    name: Map 2
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_geo_coordinates
    fields: [liquor_sales_predicted.actual_plus_forecasted_bottles, liquor_sales_predicted.store_location]
    filters:
      liquor_sales_predicted.promotion: 'yes'
      liquor_sales_predicted.store_location: "-NULL"
      liquor_sales_predicted.city: ''
      liquor_sales_predicted.category: ''
      brand_rank.rank: '2'
    sorts: [liquor_sales_predicted.actual_plus_forecasted_bottles desc]
    limit: 500
    column_limit: 50
    map: topojson
    map_projection: ''
    show_view_names: false
    map_url: https://raw.githubusercontent.com/deldersveld/topojson/master/countries/us-states/IA-19-iowa-counties.json
    point_color: "#34A853"
    map_color: ''
    point_radius: 1.5
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
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 8
    col: 3
    width: 3
    height: 2
  - title: Metric 2
    name: Metric 2
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: single_value
    fields: [brand_rank.metric]
    filters:
      brand_rank.rank: '2'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4285F4"
    single_value_title: Rank By
    defaults_version: 1
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 6
    col: 3
    width: 3
    height: 2
  - title: Map 3
    name: Map 3
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_geo_coordinates
    fields: [liquor_sales_predicted.actual_plus_forecasted_bottles, liquor_sales_predicted.store_location]
    filters:
      liquor_sales_predicted.promotion: 'yes'
      liquor_sales_predicted.store_location: "-NULL"
      liquor_sales_predicted.city: ''
      liquor_sales_predicted.category: ''
      brand_rank.rank: '3'
    sorts: [liquor_sales_predicted.actual_plus_forecasted_bottles desc]
    limit: 500
    column_limit: 50
    map: topojson
    map_projection: ''
    show_view_names: false
    map_url: https://raw.githubusercontent.com/deldersveld/topojson/master/countries/us-states/IA-19-iowa-counties.json
    point_color: "#34A853"
    map_color: ''
    point_radius: 1.5
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
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 12
    col: 3
    width: 3
    height: 2
  - title: Metric 3
    name: Metric 3
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: single_value
    fields: [brand_rank.metric]
    filters:
      brand_rank.rank: '3'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4285F4"
    single_value_title: Rank By
    defaults_version: 1
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 10
    col: 3
    width: 3
    height: 2
  - title: Metric 4
    name: Metric 4
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: single_value
    fields: [brand_rank.metric]
    filters:
      brand_rank.rank: '4'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4285F4"
    single_value_title: Rank By
    defaults_version: 1
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 14
    col: 3
    width: 3
    height: 2
  - title: Map 4
    name: Map 4
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_geo_coordinates
    fields: [liquor_sales_predicted.actual_plus_forecasted_bottles, liquor_sales_predicted.store_location]
    filters:
      liquor_sales_predicted.promotion: 'yes'
      liquor_sales_predicted.store_location: "-NULL"
      liquor_sales_predicted.city: ''
      liquor_sales_predicted.category: ''
      brand_rank.rank: '4'
    sorts: [liquor_sales_predicted.actual_plus_forecasted_bottles desc]
    limit: 500
    column_limit: 50
    map: topojson
    map_projection: ''
    show_view_names: false
    map_url: https://raw.githubusercontent.com/deldersveld/topojson/master/countries/us-states/IA-19-iowa-counties.json
    point_color: "#34A853"
    map_color: ''
    point_radius: 1.5
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
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 16
    col: 3
    width: 3
    height: 2
  - title: Map 5
    name: Map 5
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: looker_geo_coordinates
    fields: [liquor_sales_predicted.actual_plus_forecasted_bottles, liquor_sales_predicted.store_location]
    filters:
      liquor_sales_predicted.promotion: 'yes'
      liquor_sales_predicted.store_location: "-NULL"
      liquor_sales_predicted.city: ''
      liquor_sales_predicted.category: ''
      brand_rank.rank: '5'
    sorts: [liquor_sales_predicted.actual_plus_forecasted_bottles desc]
    limit: 500
    column_limit: 50
    map: topojson
    map_projection: ''
    show_view_names: false
    map_url: https://raw.githubusercontent.com/deldersveld/topojson/master/countries/us-states/IA-19-iowa-counties.json
    point_color: "#34A853"
    map_color: ''
    point_radius: 1.5
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
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 20
    col: 3
    width: 3
    height: 2
  - title: Metric 5
    name: Metric 5
    model: demand_forecasting
    explore: liquor_sales_predicted
    type: single_value
    fields: [brand_rank.metric]
    filters:
      brand_rank.rank: '5'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4285F4"
    single_value_title: Rank By
    defaults_version: 1
    listen:
      Calendar Date: liquor_sales_predicted.calendar_date
      Frequency: liquor_sales_predicted.frequency
      Scenario: liquor_sales_predicted.promotion_amount
      Promotion Date: liquor_sales_predicted.promotion_date
      Rank By: brand_rank.rank_metric
    row: 18
    col: 3
    width: 3
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: Bottles Sold
    body_text: ''
    row: 0
    col: 6
    width: 6
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: Revenue
    body_text: ''
    row: 0
    col: 12
    width: 6
    height: 2
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: DEMAND Signals
    body_text: ''
    row: 0
    col: 18
    width: 6
    height: 2
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"border: solid 1px #4285F4; border-radius: 5px; padding:\
      \ 5px 10px;  background: #FFF; height: 60px\">\n<nav style=\"font-size: 18px;\
      \ color: #4285F4\">\n  <a style=\"padding: 5px; float: left; line-height: 40px;\
      \ margin-left: 8px;\" href=\"/embed/dashboards-next/598?theme=GoogleWhite\"\
      >☰  \n Overview</a>\n  <a style=\"padding: 5px; float: left; line-height: 40px;\
      \ font-weight: bold\" href=\"/embed/dashboards-next/600?theme=GoogleWhite\"\
      >Brands</a>\n<a style=\"padding: 5px; float: left; line-height: 40px;\" href=\"\
      #categories\">Categories</a>\n</nav>\n</div>"
    row: 0
    col: 0
    width: 6
    height: 2
  filters:
  - name: Rank By
    title: Rank Metric
    type: field_filter
    default_value: revenue
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
      options:
      - revenue
      - gross^_margin
      - aur
    model: demand_forecasting
    explore: liquor_sales_predicted
    listens_to_filters: []
    field: brand_rank.rank_metric
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
  - name: Apply Scenario (Yes/No)
    title: Apply Scenario (Yes/No)
    type: field_filter
    default_value: ''
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
      - Peak Days
      - Normal Days
      - Slow Days
      - Holidays
    model: demand_forecasting
    explore: liquor_sales_predicted
    listens_to_filters: []
    field: liquor_sales_predicted.frequency
  - name: Scenario
    title: Scenario
    type: field_filter
    default_value: '0.20'
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: overflow
      options:
      - '0.05'
      - '0.10'
      - '0.15'
      - '0.20'
    model: demand_forecasting
    explore: liquor_sales_predicted
    listens_to_filters: []
    field: liquor_sales_predicted.promotion_amount
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
  - name: Brands Included
    title: Brands Included
    type: field_filter
    default_value: "[0,5]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
      options:
        min: 0
        max: 10
    model: demand_forecasting
    explore: liquor_sales_predicted
    listens_to_filters: []
    field: brand_rank.rank
