view: cdf_badge_master {
  sql_table_name: dbo.CDF_Badge_MASTER ;;

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: datetime {
    type: string
    sql: ${TABLE}.datetime ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: ids_source_id {
    type: number
    sql: ${TABLE}.IDS_SourceID ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: personid {
    type: string
    sql: ${TABLE}.personid ;;
  }

  dimension: predictedusername {
    type: string
    sql: ${TABLE}.predictedusername ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: who {
    type: string
    sql: ${TABLE}.who ;;
  }

  measure: count {
    type: count
    drill_fields: [predictedusername]
  }
}
