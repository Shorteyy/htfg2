view: energy_sources {
  sql_table_name: `sustainability.energy_sources`
    ;;

  dimension: country_id {
    type: number
    sql: ${TABLE}.country_id ;;
  }

  dimension: fossil_fuels {
    type: number
    sql: ${TABLE}.fossil_fuels ;;
  }

  dimension: nuclear {
    type: number
    sql: ${TABLE}.nuclear ;;
  }

  dimension: renewable {
    type: number
    sql: ${TABLE}.renewable ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }


  measure: energy_prod_by_fossil {
    type: sum
    sql: ${fossil_fuels} ;;
  }
  measure: energy_prod_by_renewable {
    type: sum
    sql: ${renewable} ;;
  }
  measure: energy_prod_by_nuclear {
    type: sum
    sql: ${nuclear} ;;
  }

  measure: total_gain_or_loss_renewable_energy {
    type: sum
    sql: ${renewable} - ${fossil_fuels} ;;
  }

}
