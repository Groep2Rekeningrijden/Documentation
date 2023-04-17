workspace "Kwetter" {
    !adrs decisions
    !docs docs

    !constant "WEB" "React 18" 
    !constant "PYTHON" "Python 3.11" 
    !constant "NET" ".NET Core 7.0" 
    !constant "SQL" "MySQL"
    !constant "NOSQL" "noSQL"
    !constant "TIME" "Time Series Database"
    !constant "TBD" "TBD"
    !constant "MSG_HTTPS" "HTTPS"
    !constant "MSG_JSON" "HTTPS"


    model {
        !include dsl/shared_models.dsl
        !include dsl/old_group_2_model.dsl



    }
    views {
        !include dsl/old_group_2_views.dsl
        !include dsl/styles.dsl
    }
}
