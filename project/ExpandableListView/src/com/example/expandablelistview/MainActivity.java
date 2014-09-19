package com.example.expandablelistview;

import com.tencent.adapter.BuddyListAdapter;
import com.tencent.widget.PinnedHeaderExpandableListView;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.app.Activity;

public class MainActivity extends Activity implements OnClickListener{

	PinnedHeaderExpandableListView listview;
	
	BuddyListAdapter listAdapter;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.contact_group_listview);
		
		listview = (PinnedHeaderExpandableListView) findViewById(R.id.elv_buddies);
		listview.setGroupIndicator(getResources().getDrawable(
                R.drawable.contact_buddy_list_group_indicator));
		
		listAdapter = new BuddyListAdapter(this, listview, this);
		listview.setAdapter(listAdapter);
		listview.setOnScrollListener(listAdapter);
	}

	@Override
	public void onClick(View v) {
		
	}

}
