view: src_dlvry {
  sql_table_name: dbo.SRC_DLVRY ;;

  dimension: data_refresh {
    type: string
    sql: ${TABLE}.DATA_REFRESH ;;
  }

  dimension_group: ddate {
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
    sql: ${TABLE}.DDATE ;;
  }

  dimension: descr {
    type: string
    sql: ${TABLE}.DESCR ;;
  }

  dimension: dlvry_id {
    type: number
    sql: ${TABLE}.DLVRY_ID ;;
  }

  dimension_group: qry_dt {
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
    sql: ${TABLE}.QRY_DT ;;
  }

  dimension: qry_src {
    type: string
    sql: ${TABLE}.QRY_SRC ;;
  }

  dimension: qry_text {
    type: string
    sql: ${TABLE}.QRY_TEXT ;;
  }

  dimension: rdf_count_lines {
    type: string
    sql: ${TABLE}.RDF_COUNT_LINES ;;
  }

  dimension: rdf_dir {
    type: string
    sql: ${TABLE}.RDF_DIR ;;
  }

  dimension: rdf_filetype {
    type: string
    sql: ${TABLE}.RDF_FILETYPE ;;
  }

  dimension: rdf_hash_md5 {
    type: string
    sql: ${TABLE}.RDF_HASH_MD5 ;;
  }

  dimension: rdf_header_rows {
    type: number
    sql: ${TABLE}.RDF_HEADER_ROWS ;;
  }

  dimension: rdf_recurse {
    type: string
    sql: ${TABLE}.RDF_RECURSE ;;
  }

  dimension: recipient {
    type: string
    sql: ${TABLE}.RECIPIENT ;;
  }

  dimension: scmst_id {
    type: string
    sql: ${TABLE}.SCMST_ID ;;
  }

  dimension: sender {
    type: string
    sql: ${TABLE}.SENDER ;;
  }

  dimension: senderemail {
    type: string
    sql: ${TABLE}.SENDEREMAIL ;;
  }

  dimension: via {
    type: string
    sql: ${TABLE}.VIA ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
