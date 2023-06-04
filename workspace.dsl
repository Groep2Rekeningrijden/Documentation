workspace "Rekeningrijden" {
    !adrs decisions
    !docs docs

    !constant "NO "NO"
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
        rs_intro = softwareSystem "Research 1: Introduction"{
            !docs docs/research
        }
        rs_routing = softwareSystem "Research 2: Routing"{
            !docs docs/research/simulating_and_routing
        }

        !include dsl/shared_models.dsl
        !include dsl/old_group_2_model.dsl



    }
    views {
        !include dsl/old_group_2_views.dsl
        !include dsl/styles.dsl
    }
}
