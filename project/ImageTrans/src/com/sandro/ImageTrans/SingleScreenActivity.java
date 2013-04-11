package com.sandro.ImageTrans;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

public class SingleScreenActivity extends Activity implements OnClickListener{

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.single_layout);
        findViewById(R.id.main_view).setOnClickListener(this);
    }

	@Override
	public void onClick(View v) {
		this.finish();
	}
}
