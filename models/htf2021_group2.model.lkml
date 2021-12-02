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

explore: bnbcheckins {
  join: people {
    type: left_outer
    sql_on: ${bnbcheckins.person_id2} = ${people.id};;
    relationship: one_to_one
  }
}

explore: appearance {}

explore: bnbreservations {}

explore: company_employees {}

explore: aib_bnbs_nyc {}

explore: events {}

explore: financial_status {
  join: people {
    type: left_outer
    sql_on: ${financial_status.id} = ${people.id};;
    relationship: one_to_one
  }
}

explore: locations {}

explore: gender {}

explore: physical_characteristics {}

explore: ride_info {
  join: ride_passengers {
    type: left_outer
    sql_on: ${ride_info.ride_id} = ${ride_passengers.ride_id};;
    relationship: one_to_one
  }
  join: people {
    type: left_outer
    sql_on: ${ride_passengers.passenger_id} = ${people.id};;
    relationship: one_to_one
  }
  join: taxis {
    type: left_outer
    sql_on: ${taxis.id} = ${ride_info.ride_id};;
    relationship: one_to_one
  }
  join: locations {
    type: left_outer
    sql_on: ${locations.id} = ${ride_info.dropoff_location};;
    relationship: one_to_one
  }
  join: gender {
    type: left_outer
    sql_on: ${gender.id} = ${people.id};;
    relationship: one_to_one
  }
  join: appearance {
    type: left_outer
    sql_on: ${appearance.id} = ${people.id};;
    relationship: one_to_one
  }
  join: religions {
    type: left_outer
    sql_on: ${religions.id} = ${people.id};;
    relationship: one_to_one
  }
  join: ages {
    type: left_outer
    sql_on: ${ages.id} = ${people.id};;
    relationship: one_to_one
  }
  join: financial_status {
    type: left_outer
    sql_on: ${financial_status.id} = ${people.id};;
    relationship: one_to_one
  }
}

explore: people {
  join: gender {
    type: left_outer
    sql_on: ${gender.id} = ${people.id};;
    relationship: one_to_one
  }
  join: appearance {
    type: left_outer
    sql_on: ${appearance.id} = ${people.id};;
    relationship: one_to_one
  }
  join: religions {
    type: left_outer
    sql_on: ${religions.id} = ${people.id};;
    relationship: one_to_one
  }
  join: ages {
    type: left_outer
    sql_on: ${ages.id} = ${people.id};;
    relationship: one_to_one
  }
  join: financial_status {
    type: left_outer
    sql_on: ${financial_status.id} = ${people.id};;
    relationship: one_to_one
  }
}

explore: nationalities {}

explore: religions {}

explore: sub_departments {}

explore: taxis {}

explore: ride_passengers {
  join: people {
    type: left_outer
    sql_on: ${ride_passengers.passenger_id} = ${people.id};;
    relationship: one_to_one
  }
}

explore: roles {}

explore: taxi_rides {
  join: taxis {
    type: left_outer
    sql_on: ${taxi_rides.taxi_id} = ${taxis.id} ;;
    relationship: many_to_one
  }
}

explore: test {}
