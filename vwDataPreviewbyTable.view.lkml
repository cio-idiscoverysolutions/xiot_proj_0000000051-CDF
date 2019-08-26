view: vwtablefields {
  derived_table: {
    sql: SELECT
      TOP 700
        cdf_table_stats.TableName  AS "cdf_table_stats.table_name",
        cdf_table_stats.ColumnName  AS "cdf_table_stats.column_name",
        cdf_table_stats.DataType  AS "cdf_table_stats.data_type",
        cdf_table_stats.MinValue  AS "cdf_table_stats.min_value",
        cdf_table_stats.MaxValue  AS "cdf_table_stats.max_value",
        cdf_table_stats.UniqueValues  AS "cdf_table_stats.unique_values",
        cdf_table_stats.BlankOrNullValues  AS "cdf_table_stats.blank_or_null_values",
        cdf_table_stats.MinLen  AS "cdf_table_stats.min_len",
        cdf_table_stats.MaxLen  AS "cdf_table_stats.max_len",
        CONVERT(VARCHAR(19), CAST(cdf_table_stats.datelogged  AS DATETIME), 120) AS "cdf_table_stats.datelogged_time",
        cdf_table_stats.CountRows  AS "cdf_table_stats.count_rows",
        cdf_table_stats.ProbableDataType  AS "cdf_table_stats.probable_data_type",
        CONVERT(VARCHAR(19), CAST(cdf_table_stats.MinDate  AS DATETIME), 120) AS "cdf_table_stats.min_time",
        CONVERT(VARCHAR(19), CAST(cdf_table_stats.MaxDate  AS DATETIME), 120) AS "cdf_table_stats.max_time"
      FROM dbo.CDF_TABLE_STATS  AS cdf_table_stats

      GROUP BY cdf_table_stats.TableName ,cdf_table_stats.ColumnName ,cdf_table_stats.DataType ,cdf_table_stats.MinValue ,cdf_table_stats.MaxValue ,cdf_table_stats.UniqueValues ,cdf_table_stats.BlankOrNullValues ,cdf_table_stats.MinLen ,cdf_table_stats.MaxLen ,CONVERT(VARCHAR(19), CAST(cdf_table_stats.datelogged  AS DATETIME), 120),cdf_table_stats.CountRows ,cdf_table_stats.ProbableDataType ,CONVERT(VARCHAR(19), CAST(cdf_table_stats.MinDate  AS DATETIME), 120),CONVERT(VARCHAR(19), CAST(cdf_table_stats.MaxDate  AS DATETIME), 120)
      ORDER BY 10 DESC
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: cdf_table_stats_table_name {
    type: string
    sql: ${TABLE}."cdf_table_stats.table_name" ;;
  }

  dimension: cdf_table_stats_column_name {
    type: string
    sql: ${TABLE}."cdf_table_stats.column_name" ;;
  }

  dimension: cdf_table_stats_data_type {
    type: string
    sql: ${TABLE}."cdf_table_stats.data_type" ;;
  }

  dimension: cdf_table_stats_min_value {
    type: string
    sql: ${TABLE}."cdf_table_stats.min_value" ;;
  }

  dimension: cdf_table_stats_max_value {
    type: string
    sql: ${TABLE}."cdf_table_stats.max_value" ;;
  }

  dimension: cdf_table_stats_unique_values {
    type: number
    sql: ${TABLE}."cdf_table_stats.unique_values" ;;
  }

  dimension: cdf_table_stats_blank_or_null_values {
    type: number
    sql: ${TABLE}."cdf_table_stats.blank_or_null_values" ;;
  }

  dimension: cdf_table_stats_min_len {
    type: number
    sql: ${TABLE}."cdf_table_stats.min_len" ;;
  }

  dimension: cdf_table_stats_max_len {
    type: number
    sql: ${TABLE}."cdf_table_stats.max_len" ;;
  }

  dimension: cdf_table_stats_datelogged_time {
    type: string
    sql: ${TABLE}."cdf_table_stats.datelogged_time" ;;
  }

  dimension: cdf_table_stats_count_rows {
    type: number
    sql: ${TABLE}."cdf_table_stats.count_rows" ;;
  }

  dimension: cdf_table_stats_probable_data_type {
    type: string
    sql: ${TABLE}."cdf_table_stats.probable_data_type" ;;
  }

  dimension: cdf_table_stats_min_time {
    type: string
    sql: ${TABLE}."cdf_table_stats.min_time" ;;
  }

  dimension: cdf_table_stats_max_time {
    type: string
    sql: ${TABLE}."cdf_table_stats.max_time" ;;
  }

  set: detail {
    fields: [
      cdf_table_stats_table_name,
      cdf_table_stats_column_name,
      cdf_table_stats_data_type,
      cdf_table_stats_min_value,
      cdf_table_stats_max_value,
      cdf_table_stats_unique_values,
      cdf_table_stats_blank_or_null_values,
      cdf_table_stats_min_len,
      cdf_table_stats_max_len,
      cdf_table_stats_datelogged_time,
      cdf_table_stats_count_rows,
      cdf_table_stats_probable_data_type,
      cdf_table_stats_min_time,
      cdf_table_stats_max_time
    ]
  }
}
