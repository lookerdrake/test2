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
      users.gender: "{{ _localization['gender_key_male']}}"
    sorts: [users.count desc]
    limit: 500
    query_timezone: UTC
    series_types: {}
    listen: {}
    row: 6
    col: 0
    width: 11
    height: 6
  - title: db_filter_test
    name: db_filter_test
    model: dw_localization
    explore: users
    type: looker_column
    fields: [users.gender, users.count]
    sorts: [users.count desc]
    limit: 500
    query_timezone: UTC
    series_types: {}
    listen:
      filter_title: users.gender
    row: 6
    col: 11
    width: 13
    height: 6
  - title: liquid_variable_field
    name: liquid_variable_field
    model: dw_localization
    explore: users
    type: looker_column
    fields: [users.test_label, users.count]
    filters:
      users.test_label: "{{ _localization['state_key_ca']}}"
    sorts: [users.count desc]
    limit: 500
    query_timezone: UTC
    listen: {}
    row: 12
    col: 0
    width: 13
    height: 6

  filters:
  - name: filter_title
    title: filter_title
    type: string_filter
    default_value: "{{ _localization['gender_key_male']}}"
    allow_multiple_values: true
    required: false
  - name: usecase_2
    title: usecase_2
    type: string_filter
    default_value: "{{ _localization['state_key_ca']}}"
    allow_multiple_values: true
    required: false
