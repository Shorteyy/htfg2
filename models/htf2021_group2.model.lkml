connection: "htf2021"

# include all the views
include: "/views/**/*.view"

datagroup: htf2021_group2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: htf2021_group2_default_datagroup

explore: companies {}

explore: ages {}

explore: event_reviews {
  join: events {
    type: left_outer
    sql_on: ${event_reviews.event_id} = ${events.id} ;;
    relationship: many_to_one
  }
}

explore: bnbcheckins {}

explore: appearance {}

explore: bnbreservations {}

explore: company_employees {}

explore: aib_bnbs_nyc {}

explore: events {}

explore: financial_status {}

explore: locations {}

explore: gender {}

explore: physical_characteristics {}

explore: ride_info {}

explore: people {}

explore: nationalities {}

explore: religions {}

explore: sub_departments {}

explore: taxis {}

explore: ride_passengers {}

explore: roles {}

explore: taxi_rides {
  join: taxis {
    type: left_outer
    sql_on: ${taxi_rides.taxi_id} = ${taxis.id} ;;
    relationship: many_to_one
  }
}
