view: src_files {
  sql_table_name: dbo.SRC_FILES ;;

  dimension_group: cdate {
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
    sql: ${TABLE}.CDATE ;;
  }

  dimension: dlvry_id {
    type: number
    sql: ${TABLE}.DLVRY_ID ;;
  }

  dimension: file_id {
    type: number
    sql: ${TABLE}.FILE_ID ;;
  }

  dimension: file_version {
    type: number
    sql: ${TABLE}.FILE_VERSION ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.FILENAME ;;
  }

  dimension: filetype {
    type: string
    sql: ${TABLE}.FILETYPE ;;
  }

  dimension: fsize {
    type: number
    sql: ${TABLE}.FSIZE ;;
  }

  dimension: has_hdrrow {
    type: string
    sql: ${TABLE}.HAS_HDRROW ;;
  }

  dimension: hash_md5 {
    type: string
    sql: ${TABLE}.HASH_MD5 ;;
  }

  dimension: hash_sha {
    type: string
    sql: ${TABLE}.HASH_SHA ;;
  }

  dimension: ingestcnt {
    type: number
    sql: ${TABLE}.INGESTCNT ;;
  }

  dimension: ingested {
    type: string
    sql: ${TABLE}.INGESTED ;;
  }

  dimension: linecnt {
    type: number
    sql: ${TABLE}.LINECNT ;;
  }

  dimension_group: mdate {
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
    sql: ${TABLE}.MDATE ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.PARENT_ID ;;
  }

  dimension_group: rdate {
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
    sql: ${TABLE}.RDATE ;;
  }

  dimension: scmst_id {
    type: string
    sql: ${TABLE}.SCMST_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [filename]
  }
}
