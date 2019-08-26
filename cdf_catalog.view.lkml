view: cdf_catalog {
  sql_table_name: dbo.CDF_CATALOG ;;

  dimension: cdf_table_id {
    type: number
    sql: ${TABLE}.CDF_TABLE_ID ;;
  }

  dimension: delim {
    type: string
    sql: ${TABLE}.DELIM ;;
  }

  dimension_group: dt_earliest {
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
    sql: ${TABLE}.DT_EARLIEST ;;
  }

  dimension: dt_field {
    type: string
    sql: ${TABLE}.DT_FIELD ;;
  }

  dimension_group: dt_latest {
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
    sql: ${TABLE}.DT_LATEST ;;
  }

  dimension_group: dt_stats_updated {
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
    sql: ${TABLE}.DT_STATS_UPDATED ;;
  }

  dimension: header_row {
    type: string
    sql: ${TABLE}.HeaderRow ;;
  }

  dimension: scmst_id {
    type: string
    sql: ${TABLE}.SCMST_ID ;;
  }

  dimension: tbl_cdfname {
    type: string
    sql: ${TABLE}.TBL_CDFNAME ;;
  }

  dimension: tbl_tmpname {
    type: string
    sql: ${TABLE}.TBL_TMPNAME ;;
  }

  dimension: version_id {
    type: number
    sql: ${TABLE}.VersionID ;;
  }

  measure: count {
    type: count
    drill_fields: [tbl_tmpname, tbl_cdfname]
  }
}
