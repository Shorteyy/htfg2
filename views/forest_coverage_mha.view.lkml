view: forest_coverage_mha {
  sql_table_name: `sustainability.forest_coverage_mha`;;

  dimension: country_id {
    type: number
    sql: ${TABLE}.country_id ;;
  }

  dimension: disturbed {
    type: number
    sql: ${TABLE}.disturbed ;;
  }

  dimension: gain {
    type: number
    sql: ${TABLE}.gain ;;
  }

  dimension: loss {
    type: number
    sql: ${TABLE}.loss ;;
  }

  dimension: stable_forest {
    type: number
    sql: ${TABLE}.stable_forest ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: sumStableForest {
    type: sum
    sql: ${stable_forest} ;;
    }

  measure: sumLoss {
    type: sum
    sql: ${loss} ;;
  }

  measure: sumGain {
    type: sum
    sql: ${gain} ;;
  }

  measure: total_gain_or_loss {
    type: sum
    sql: ${gain} - ${loss} ;;
  }


  measure: sumDisturbed {
    type: sum
    sql: ${disturbed} ;;
  }
}
