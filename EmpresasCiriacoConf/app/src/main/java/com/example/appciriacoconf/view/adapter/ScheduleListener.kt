package com.example.appciriacoconf.view.adapter

import com.example.appciriacoconf.model.Conference

interface ScheduleListener {
    fun onConferenceClicked(conference: Conference, position: Int)
}
