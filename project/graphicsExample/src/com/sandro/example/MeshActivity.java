package com.sandro.example;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.os.Bundle;

public class MeshActivity extends Activity{

	private MeshView meshView;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);//竖屏
		setContentView(R.layout.mesh_activity_main);
		meshView = (MeshView)this.findViewById(R.id.mesh_view);
		
	}

}
