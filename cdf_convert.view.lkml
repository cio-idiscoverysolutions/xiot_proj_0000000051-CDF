view: cdf_convert {
  sql_table_name: dbo.CDF_CONVERT ;;

  dimension: datatype {
    type: string
    sql: ${TABLE}.Datatype ;;
  }

  dimension: dest_fieldname {
    type: string
    sql: ${TABLE}.DestFieldname ;;
  }

  dimension: field_name {
    type: string
    sql: ${TABLE}.FieldName ;;
  }

  dimension: padding {
    type: number
    sql: ${TABLE}.PADDING ;;
  }

  dimension: scmst_id {
    type: string
    sql: ${TABLE}.SCMST_ID ;;
  }

  dimension: tbl_cdfname {
    type: string
    sql: ${TABLE}.TBL_CDFNAME ;;
  }

  measure: count {
    type: count
    drill_fields: [field_name, dest_fieldname, tbl_cdfname]
  }
}
