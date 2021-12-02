view: financial_status {
  sql_table_name: `datasources.FinancialStatus`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: bruto_income {
    type: number
    sql: ${TABLE}.BrutoIncome ;;
  }

  dimension: debt {
    type: number
    sql: ${TABLE}.Debt ;;
  }

  dimension: net_worth {
    type: number
    sql: ${TABLE}.NetWorth ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: debtSum {
    type: sum
    drill_fields: [debt]
  }

  measure: netSum {
    type: sum
    drill_fields: [net_worth]
  }

  measure: brutoSum {
    type: sum
    drill_fields: [bruto_income]
  }
}
