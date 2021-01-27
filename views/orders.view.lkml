view: orders {
  sql_table_name: demo_db.orders ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: created_year_string {
    type: string
    sql: ${created_year} ;;
  }

  dimension_group: created_2 {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  measure: status_list {
    type: list
    list_field: status
  }


  ### Duration bug

#   dimension_group: sarah_test {
#     type: duration
#     timeframes: [date, week, month, time]
#     sql_start: ${created_date} ;;
#     sql_end: ${created_2_date} ;;
#   }
#
#   measure: will_error_in_explore {
#     type: average
#     sql: ${dates_sarah_test} ;;
#     #gives "unknown or inaccessible field" error in explore field picker
#   }
#
#   dimension: also_errors_in_explore {
#     type: string
#     sql: ${dates_sarah_test} ;;
#     #gives "unknown or inaccessible field" error in explore field picker
#   }
#
#   measure: also_errors_in_explore_2 {
#     type: average
#     sql: ${times_sarah_test} ;;
#     #gives "unknown or inaccessible field" error in explore field picker
#   }
#
#   measure: works_fine {
#     type: average
#     sql: ${weeks_sarah_test} ;;
#     #this works because it's not referencing the time or date duration timeframe
#   }
#
#   measure: for_some_reason_this_works {
#     type: average
#     sql: ${days_sarah_test} ;;
#     #this gives an error in the view file but not in the explore
#   }

  ###

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.last_name, users.id, users.first_name, order_items.count, created_date, created_time, created_month, created_quarter, created_year, created_week, status, user_id, id, users.age, users.state, users.country, users.city, users.long_field]
  }


}
