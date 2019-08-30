view: users {
  sql_table_name: PUBLIC.USERS ;;
  label: "Users"

  dimension: id {
    hidden: yes
    label: "ID"
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: age {
    label: "Age"
    type: number
    sql: ${TABLE}."AGE" ;;
  }

  dimension: city {
    label: "City"
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: country {
    label: "Country"
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: created_date {
    label: "Created Date"
    type: date
    sql: ${TABLE}."CREATED_AT" ;;
  }


  dimension: email {
    label: "Email"
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: first_name {
    label: "First Name"
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }

  dimension: gender {
    label: "Gender"
    type: string
    sql: ${TABLE}."GENDER" ;;
  }

  dimension: last_name {
    label: "Last Name"
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }

  dimension: full_name {
    label: "Full Name"
    type: string
    sql: CONCAT(${first_name}, ' ', ${last_name}) ;;
  }

  dimension: state {
    label: "State"
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  measure: count {
    label: "Count"
    type: count
    drill_fields: [id, first_name, last_name, events.count, order_items.count]
  }
}
