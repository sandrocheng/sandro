package com.tencent.onesecurity.service;

import com.tencent.onesecurity.widget.shortcut.ShortcutWindowController;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public class WidgetService extends Service{
	
	public static final String SHORT_CUT_WINDOW_SHOW = "SHORT_CUT_WINDOW_SHOW";
	public static final String SHORT_CUT_WINDOW_HIDE = "SHORT_CUT_WINDOW_HIDE";

	private ShortcutWindowController mShortcutWindowController;
	
	@Override
	public void onStart(Intent intent, int startId) {
		if (intent == null || intent.getAction() == null) {
			return ;
		}
		String action = intent.getAction();
		if (SHORT_CUT_WINDOW_SHOW.equals(action)) {
			showShortcutWindow();
		} else if (SHORT_CUT_WINDOW_HIDE.equals(action)) {
			hideShortcutWindow();
		}
	}
	
	private ShortcutWindowController getController() {
		if(mShortcutWindowController==null){
			mShortcutWindowController = new ShortcutWindowController(getApplicationContext());	
		}
		return mShortcutWindowController;
	}
	
	private void showShortcutWindow() {
		getController().showWindow();
	}
	
	private void hideShortcutWindow() {
		getController().removeWindow();
	}
	
	

	@Override
	public void onDestroy() {
		super.onDestroy();
	}

	@Override
	public IBinder onBind(Intent intent) {
		return null;
	}
	
}
