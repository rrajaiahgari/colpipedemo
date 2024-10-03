# The name of this view in Looker is "Carriers"
view: carriers {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `flights.carriers` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: nickname {
    type: string
    sql: ${TABLE}.nickname ;;
  }
  measure: count {
    type: count
    drill_fields: [name, nickname]
  }
}
