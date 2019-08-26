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

  dimension: descr {
    type: string
    sql: ${TABLE}."descr" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."src_master.name" ;;
  }

  dimension: sender {
    type: string
    sql: ${TABLE}."src_dlvry.sender" ;;
  }

  dimension: via {
    type: string
    sql: ${TABLE}."src_dlvry.via" ;;
  }

  dimension: recipient {
    type: string
    sql: ${TABLE}."src_dlvry.recipient" ;;
  }

  dimension: scmst_id {
    type: string
    sql: ${TABLE}."src_master.scmst_id" ;;
  }

  dimension: ddate_date {
    type: string
    sql: ${TABLE}."src_dlvry.ddate_date" ;;
  }

  set: detail {
    fields: [
      descr,
      name,
      sender,
      via,
      recipient,
      scmst_id,
      ddate_date
    ]
  }
}
