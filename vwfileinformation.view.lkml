view: vwfileinformation {
  derived_table: {
    sql: SELECT
      TOP 500
        src_master.DESCR  AS "descr",
        src_master.NAME  AS "name",
        src_dlvry.SENDER  AS "sender",
        src_dlvry.VIA  AS "via",
        src_dlvry.RECIPIENT  AS "recipient",
        src_master.SCMST_ID  AS "scmst_id",
        CONVERT(VARCHAR(10),src_dlvry.DDATE ,120) AS "ddate_date"
      FROM dbo.SRC_MASTER  AS src_master
      INNER JOIN dbo.SRC_DLVRY  AS src_dlvry ON src_dlvry.SCMST_ID = src_master.SCMST_ID

      GROUP BY src_master.DESCR ,src_master.NAME ,src_dlvry.SENDER ,src_dlvry.VIA ,src_dlvry.RECIPIENT ,src_master.SCMST_ID ,CONVERT(VARCHAR(10),src_dlvry.DDATE ,120)
      ORDER BY 7 DESC
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: src_master_descr {
    type: string
    sql: ${TABLE}."src_master.descr" ;;
  }

  dimension: src_master_name {
    type: string
    sql: ${TABLE}."src_master.name" ;;
  }

  dimension: src_dlvry_sender {
    type: string
    sql: ${TABLE}."src_dlvry.sender" ;;
  }

  dimension: src_dlvry_via {
    type: string
    sql: ${TABLE}."src_dlvry.via" ;;
  }

  dimension: src_dlvry_recipient {
    type: string
    sql: ${TABLE}."src_dlvry.recipient" ;;
  }

  dimension: src_master_scmst_id {
    type: string
    sql: ${TABLE}."src_master.scmst_id" ;;
  }

  dimension: src_dlvry_ddate_date {
    type: string
    sql: ${TABLE}."src_dlvry.ddate_date" ;;
  }

  set: detail {
    fields: [
      src_master_descr,
      src_master_name,
      src_dlvry_sender,
      src_dlvry_via,
      src_dlvry_recipient,
      src_master_scmst_id,
      src_dlvry_ddate_date
    ]
  }
}
