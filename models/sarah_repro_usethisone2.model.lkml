connection: "thelook"


#TEST FOR NEW BRANCH

# include all the views
include: "/views/**/*.view"
include: "*.dashboard"

datagroup: sarah_repro_usethisone_default_datagroup {
  sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sarah_repro_usethisone_default_datagroup

explore: connection_reg_r3 {}

explore: dt_triggered {}

explore: events {
  join: users {
    type: left_outer
    sql_on: ${events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: inventory_items {
  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: order_items {
  join: orders {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: products {}

explore: schema_migrations {}

explore: user_data {
  join: users {
    type: left_outer
    sql_on: ${user_data.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: users {
  access_filter: {
    field: first_name
    user_attribute: mark_bug_repro
  }
  # access_filter: {
  #   field: id
  #   user_attribute: mark_bug_repro_number
  # }

  # aggregate_table: test {}


    aggregate_table: rollup__gender__id {
      query: {
        dimensions: [
          # "users.first_name" is automatically filtered on in an access_filter.
          # Uncomment to allow all possible filters to work with aggregate awareness.
          # users.first_name,
          gender,
          id
        ]
        filters: [
          # "users.first_name" is automatically filtered on in an access_filter in this query.
          # Remove this filter to allow all possible filters to work with aggregate awareness.
          users.first_name: "%, NULL"
        ]
        timezone: "America/Los_Angeles"
      }

      materialization: {
        datagroup_trigger: sarah_repro_usethisone_default_datagroup
      }
  }



}

explore: xin_test_for_bug2 {}
