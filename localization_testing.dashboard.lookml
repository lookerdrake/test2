- dashboard: localization_testing
  title: Localization Testing
  layout: newspaper
  elements:
  - title: with only en_US Filter
    name: with only en_US Filter
    model: dw_localization
    explore: users
    type: looker_column
    fields: [users.gender, users.count]
    filters:
      users.gender: Male
    sorts: [users.count desc]
    limit: 500
    query_timezone: UTC
    series_types: {}
    listen: {}
    row: 0
    col: 0
    width: 11
    height: 6
  - title: with en_US and es_ES filters
    name: with en_US and es_ES filters
    model: dw_localization
    explore: users
    type: looker_column
    fields: [users.gender, users.count]
    filters:
      users.gender: Male,Hombre
    sorts: [users.count desc]
    limit: 500
    query_timezone: UTC
    listen: {}
    row: 0
    col: 11
    width: 13
    height: 6
  - title: liquid_test
    name: liquid_test
    model: dw_localization
    explore: users
    type: looker_column
    fields: [users.gender, users.count]
    filters:
      users.gender: "'{{ _localization[\"gender_key_male\"]}}'"
    sorts: [users.count desc]
    limit: 500
    query_timezone: UTC
    series_types: {}
    row: 6
    col: 0
    width: 11
    height: 6
  filters:
  - name: filter_title
    title: filter_title
    type: string_filter
    default_value: "'{{ _localization[\"gender_key_male\"]}}'"
    allow_multiple_values: true
    required: false
