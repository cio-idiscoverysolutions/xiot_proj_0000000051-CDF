view: cdf_acd_master {
  sql_table_name: dbo.CDF_ACD_MASTER ;;

  dimension: acduniqueid {
    type: string
    sql: ${TABLE}.acduniqueid ;;
  }

  dimension: badgeuniqueid {
    type: string
    sql: ${TABLE}.badgeuniqueid ;;
  }

  dimension: csvrowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSVROWID ;;
  }

  dimension: datetime {
    type: string
    sql: ${TABLE}.datetime ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}.duration ;;
  }

  dimension: emailuniqueid {
    type: string
    sql: ${TABLE}.emailuniqueid ;;
  }

  dimension: ids_source_id {
    type: number
    sql: ${TABLE}.IDS_SourceID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
