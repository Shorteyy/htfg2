view: generated_waste {
  sql_table_name: `sustainability.generated_waste`
    ;;

  dimension: country_id {
    type: number
    sql: ${TABLE}.country_id ;;
  }

  dimension: kg_per_citizen {
    type: number
    sql: ${TABLE}.kg_per_citizen ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: sum_waste {
    type: sum
    sql: ${kg_per_citizen} ;;
  }
}
