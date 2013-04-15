package com.tinyscreen.quteWatcher.log;

import java.util.Date;

import android.content.Context;
import android.content.Intent;

import com.tinyscreen.quteWatcher.service.WatcherService;


public class Log implements WatcherService {

	private long index = 0;
	
	private final String ACTION_INTENT_TEST = "com.tinyscreen.quterWatcher.broadcast";
	
	public static final String DATA_INFO = "data_info";

	private Context context;
	
	@Override
	public void d(String tag, Object data) {
		addTraceLine(tag,data,InfoObj.DEBUG_TYPE);
	}

	@Override
	public void e(String tag, Object data) {
		addTraceLine(tag,data,InfoObj.ERROR_TYPE);
	}

	@Override
	public void i(String tag, Object data) {
		addTraceLine(tag,data,InfoObj.INFO_TYPE);
	}

	@Override
	public void w(String tag, Object data) {
		addTraceLine(tag,data,InfoObj.WARNING_TYPE);
	}

	@Override
	public void writeFile(String filename, String content) {

	}

	

	@Override
	public void checkMemory(String tag, Object data) {
		addTraceLine(tag,data,InfoObj.INFO_TYPE);
		
	}

	/**
	 * 
	 * @param tag
	 * @param data
	 * @param type 0:info 
	 *             1:debug
	 *             2:warning
	 *             3:error 
	 * @return 
	 */
	private synchronized void addTraceLine(String tag, Object data,int type) {
		index++;
	    String dateString = Util.getDate(new Date());
	    if(data==null){
	    	data = new String("null");
	    }
		InfoObj info = new InfoObj("[" + index + "]-" + dateString + " " + tag,data.toString(), type);
	    Intent intent = new Intent(ACTION_INTENT_TEST);
	    intent.putExtra(DATA_INFO, info);
	    this.context.sendBroadcast(intent);
//		android.util.Log.i("WatcherServiceLog", "addTraceLine " + tag + " : " + data.toString());    
	}

	@Override
	public void setContext(Context context) {
		this.context = context;
	}

	
}
