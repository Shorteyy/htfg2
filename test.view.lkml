view: test {
  derived_table: {
    sql: SELECT SUM(Debt) AS debtSum, SUM(BrutoIncome) AS brutoSum, SUM(NetWorth) AS netSum, People.FirstName, People.LastName FROM FinancialStatus
      JOIN People on FinancialStatus.ID = People.ID
      WHERE (People.ID ) IN (59,70,51,34,15,67,57,47)
      GROUP BY People.FirstName, People.LastName
      ORDER BY debtSum
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: debt_sum {
    type: number
    sql: ${TABLE}.debtSum ;;
  }

  dimension: bruto_sum {
    type: number
    sql: ${TABLE}.brutoSum ;;
  }

  dimension: net_sum {
    type: number
    sql: ${TABLE}.netSum ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  set: detail {
    fields: [debt_sum, bruto_sum, net_sum, first_name, last_name]
  }
}
