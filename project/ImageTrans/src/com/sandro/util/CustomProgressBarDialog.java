package com.sandro.util;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.sandro.ImageTrans.R;

/**
 * 
* @ClassName: CustomProgressBarDialog
* @Description:自定义进度条对话框
* @author: Sandro
* @date: 2012-11-12 下午08:44:47
*
 */
public class CustomProgressBarDialog  extends ProgressDialog{
	
	private ProgressBar progressHorizontal;
	
	private String title;
	
	private TextView tv_title;
	
	public CustomProgressBarDialog(Context context,String title) {
		super(context);
		this.title = title;
	}
	
	public void setTitle(String title){
		tv_title.setText(title);
	}
	
	public int incrementTo(int progress){
		progressHorizontal.setProgress(progress);
		return progressHorizontal.getProgress();
	}
	
	@Override
	protected void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);
		setContentView(R.layout.lay_progress_bar_dialog);
		
        progressHorizontal = (ProgressBar) findViewById(R.id.progress_horizontal);
        progressHorizontal.setProgress(0);
        setProgress(progressHorizontal.getProgress() * 100);
        
        tv_title = (TextView)findViewById(R.id.tv_title);
        tv_title.setText(title);
	}
}
