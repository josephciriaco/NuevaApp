package com.example.appciriacoconf.view.ui.fragments

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.core.os.bundleOf
import androidx.fragment.app.Fragment
import androidx.lifecycle.Observer
import androidx.lifecycle.ViewModelProvider
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.LinearLayoutManager
import com.example.appciriacoconf.R
import com.example.appciriacoconf.model.Conference
import com.example.appciriacoconf.view.adapter.ScheduleAdapter
import com.example.appciriacoconf.view.adapter.ScheduleListener
import com.example.appciriacoconf.viewmodel.ScheduleViewModel
import kotlinx.android.synthetic.main.fragment_schedule.*

/**
 * A simple [Fragment] subclass.
 */
class ScheduleFragment : Fragment(), ScheduleListener {

    private lateinit var scheduleAdapter: ScheduleAdapter
    private lateinit var viewModel: ScheduleViewModel

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.fragment_schedule, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        viewModel = ViewModelProvider(this).get(ScheduleViewModel::class.java)
        viewModel.refresh()

        scheduleAdapter = ScheduleAdapter(this)

        rvSchedule.also {
            it.layoutManager = LinearLayoutManager(view.context, LinearLayoutManager.VERTICAL, true)
            it.adapter = scheduleAdapter
        }
        observeViewModel()
    }

    private fun observeViewModel() {
        viewModel.run {
            listSchedule.observe(viewLifecycleOwner, Observer { schedule ->
                scheduleAdapter.updateData(schedule)
            })

            isLoading.observe(viewLifecycleOwner, Observer {
                if(it != null)
                    rlBaseSchedule.visibility = View.INVISIBLE
            })
        }
    }

    override fun onConferenceClicked(conference: Conference, position: Int) {
        val bundle = bundleOf("conference" to conference)
        this.findNavController().navigate(R.id.scheduleDetailFragmentDialog, bundle)
    }

}




