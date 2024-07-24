
policy_name          = "My Alert Policy"
alert_conditions = {
  condition1 = {
    query="SELECT average(duration) FROM Transaction where appName = 'FoodMe-mine'"
    type                         = "static"
    condition_name               = "Condition 1"
    violation_time_limit_seconds = 600
    fill_option                  = "none"
    fill_value                   = 0
    aggregation_window           = 60
    aggregation_method           = "EVENT_FLOW"
    aggregation_delay            = 0
    expiration_duration          = 86400
    slide_by                     = 30
    thresholdCritical            = 2.0
  
    thresholdWarning = 5

    
    duration_minutes             = 10
  },
  condition2 = {
    type                         = "static"
    query                        = "SELECT average(diskUsedPercent) FROM StorageSample WHERE hostname = 'DESKTOP-PNVDQC8' AND device = 'C:'"
    condition_name               = "Condition 2"
    violation_time_limit_seconds = 600
    fill_option                  = "none"
    fill_value                   = 0
    aggregation_window           = 60
    aggregation_method           = "EVENT_FLOW"
    aggregation_delay            = 0
    expiration_duration          = 86400
    slide_by                     = 30
    thresholdCritical            = 60
     thresholdWarning             = 55
  
    duration_minutes             = 5
    
  }
    condition3 = {
    type                         = "static"
    query                        = "SELECT average(duration) FROM PageView WHERE appName = 'myapp'"

    condition_name               = "Condition 3"
    violation_time_limit_seconds = 600
    fill_option                  = "none"
    fill_value                   = 0
    aggregation_window           = 60
    aggregation_method           = "EVENT_FLOW"
    aggregation_delay            = 0
    expiration_duration          = 86400
    slide_by                     = 30
    thresholdCritical                   = 60
    thresholdWarning = 54
    duration_minutes             = 5

}
  condition4 = {
    type                         = "static"
    query                        = "SELECT max(memoryUsedBytes) FROM SystemSample WHERE hostname = 'DESKTOP-PNVDQC8'"
    condition_name               = "Condition 4"
    violation_time_limit_seconds = 600
    fill_option                  = "none"
    fill_value                   = 0
    aggregation_window           = 60
    aggregation_method           = "EVENT_FLOW"
    aggregation_delay            = 0
    expiration_duration          = 86400
    slide_by                     = 30
     thresholdCritical                  = 7100000000
     thresholdWarning = 7000000000
    duration_minutes             = 5
  }
    condition5 = {
    type                         = "static"
    query                        = "SELECT apdex(duration, t: 0.5) FROM Transaction WHERE appName = 'blog-test'"
    condition_name               = "Condition 5"
    violation_time_limit_seconds = 600
    fill_option                  = "none"
    fill_value                   = 0
    aggregation_window           = 60
    aggregation_method           = "EVENT_FLOW"
    aggregation_delay            = 0
    expiration_duration          = 86400
    slide_by                     = 30
    thresholdCritical            = 0.95
    thresholdWarning = 0.7
    duration_minutes             = 5
    }
}

