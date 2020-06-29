view: events {
  sql_table_name: demo_db.events ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }


  dimension: sljsalk {
    type: string
    sql: "testing" ;;
    #testy
  }

  dimension_group: created {
    convert_tz: no
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

  dimension: type_id {
    type: number
    sql: ${TABLE}.type_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.first_name, users.last_name, users.id]
  }

  measure: subtotals_test1 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test2 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test3 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test4 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test5 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test6 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test7 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test8 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test9 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test10 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test11 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test12 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test13 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test14 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test15 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test16 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test17 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test18 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test19 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test20 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test21 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test22 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test23 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test24 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test25 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test26 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test27 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test28 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test29 {
    type: number
    sql: ${count}+1 ;;
  }

  measure: subtotals_test30 {
    type: number
    sql: ${count}+1 ;;
  }








}
