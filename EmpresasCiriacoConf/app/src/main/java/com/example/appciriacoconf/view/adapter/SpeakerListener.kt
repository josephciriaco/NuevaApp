package com.example.appciriacoconf.view.adapter

import com.example.appciriacoconf.model.Speaker

interface SpeakerListener {
    fun onSpeakerClicked(speaker: Speaker, position: Int)
}