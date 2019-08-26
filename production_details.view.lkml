view: production_details {
  sql_table_name: dbo.ProductionDetails ;;

  dimension: control_number {
    type: string
    sql: ${TABLE}.controlNumber ;;
  }

  dimension: prod_details {
    type: string
    sql: ${TABLE}.prodDetails ;;
  }

  dimension: prod_id {
    type: number
    sql: ${TABLE}.prodId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
