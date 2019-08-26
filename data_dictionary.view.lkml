view: data_dictionary {
  sql_table_name: dbo.DATA_DICTIONARY ;;

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: dictionary_id {
    type: number
    sql: ${TABLE}.DictionaryID ;;
  }

  dimension_group: dt_created {
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
    sql: ${TABLE}.DT_CREATED ;;
  }

  dimension_group: dt_lastmodified {
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
    sql: ${TABLE}.DT_LASTMODIFIED ;;
  }

  dimension: field_name {
    type: string
    sql: ${TABLE}.FieldName ;;
  }

  dimension: scmst_id {
    type: string
    sql: ${TABLE}.SCMST_ID ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TableName ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name, field_name]
  }
}
