view: cdf_salesforce_master {
  sql_table_name: dbo.CDF_Salesforce_MASTER ;;

  dimension: created_date {
    type: string
    sql: ${TABLE}.created_date ;;
  }

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: ids_source_id {
    type: number
    sql: ${TABLE}.IDS_SourceID ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  measure: count {
    type: count
    drill_fields: [username]
  }
}
