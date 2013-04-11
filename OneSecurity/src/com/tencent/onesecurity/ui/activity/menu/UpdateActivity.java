
package com.tencent.onesecurity.ui.activity.menu;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.manager.notification.StatusBarManager;
import com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity;
import com.tencent.onesecurity.ui.helper.UIConstants;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.util.Log;
import com.tencent.onesecurity.util.ToastUtil;

/**
 * Update页面
 * 
 * @version 1.0
 * @author LionLiu
 */
public class UpdateActivity extends BaseActivity {

    public static final int DOWN_LOAD_START = 0;

    public static final int DOWN_LOAD_CHANGE = 1;

    public static final int DOWN_LOAD_OVER = 2;
    
    public static final int DOWN_LOAD_ERROR = 3;
    /**
     * UPDATE 链接
     */
    private String updateUrl;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        View view = LayoutInflater.from(UpdateActivity.this).inflate(R.layout.layout_menu_update,
                null);
        setContentView(view);

        updateSubTitleBar(this, view, getString(R.string.menu_title_update), -1, null, -1, null,
                true);

        Bundle bundle = getIntent().getExtras();
        // 初始化Version
        TextView tvVersion = (TextView)findViewById(R.id.tv_version);
        tvVersion.setText(getString(R.string.application_name) + " "
                + bundle.getString(AboutActivity.NEW_VERSION));

        // 初始化ListView
        String tip = bundle.getString(AboutActivity.NEW_TIP);
        String[] tips = tip.split(UIConstants.UPDATE_TIP_SPLIT);
        ListView tipList = (ListView)findViewById(R.id.list_tip);
        tipList.setAdapter(new ArrayAdapter<String>(UpdateActivity.this,
                R.layout.layout_menu_update_item, R.id.tv_update_tip, tips));

        // Update Button
        updateUrl = bundle.getString(AboutActivity.NEW_URL);
        findViewById(R.id.btn_update).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "点击下载", "升级", 1l);
                if(downLoadState == 1){
                	ToastUtil.ShowSimpleTextShortToast(getString(R.string.update_cancel_tips),R.layout.custom_toast);
                }else if(downLoadState == 2 && updateFile != null && updateFile.exists() ){
                	openFile(updateFile);
                }else{
                	new Thread(new Runnable() {
            			@Override
            			public void run() {
            				openFile(downLoadFile(updateUrl));
            			}
            		}, "downLoadFile").start();
                	ToastUtil.ShowSimpleTextShortToast(getString(R.string.update_cancel_tips),R.layout.custom_toast);
                	finish();
                }
            }
        });
    }

    @Override
    protected void onResume() {
        super.onResume();
        GoogleAnalyticsTracker.getInstance().trackView("升级提示");
    }


    private Handler mHandler = new Handler() {

        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case DOWN_LOAD_START:
                	StatusBarManager.getInstance().showUpdataNotification(0);
                    break;
                case DOWN_LOAD_CHANGE:
                	StatusBarManager.getInstance().showUpdataNotification(msg.arg1);
                    break;
                case DOWN_LOAD_OVER:
                	StatusBarManager.getInstance().showUpdataNotification(100);
                    break;
                case DOWN_LOAD_ERROR:
                	StatusBarManager.getInstance().showUpdataNotification(-2);
                    break;
                default:
                    break;
            }

        }

    };
    public static File updateFile = null;
    public static byte downLoadState = 0;//0未下载，1下载中，2已下载，3下载撤销, 4下载error
	protected File downLoadFile(String httpUrl) {
		downLoadState = 1;
	    updateFile = null;
		final File file = new File(Environment.getExternalStorageDirectory() + "/oneSecurity.apk");
		int fileLength = 100;
	    int downLoadLength = 0;
	    int oldPercent = 0;
	    mHandler.sendEmptyMessage(DOWN_LOAD_START);
		try {
			URL url = new URL(httpUrl);
			try {
				HttpURLConnection conn = (HttpURLConnection) url
				.openConnection();
				conn.setReadTimeout(30000);
				fileLength  = conn.getContentLength(); 
				InputStream is = conn.getInputStream();
				FileOutputStream fos = new FileOutputStream(file);
				byte[] buf = new byte[256];
				conn.connect();
				if (conn.getResponseCode() != 200) {
				    mHandler.sendEmptyMessage(DOWN_LOAD_ERROR);
				} else {
					while (downLoadState < 3) {
						if (is != null) {
							int numRead = is.read(buf);
							if (numRead <= 0) {
								break;
							} else {
								downLoadLength += numRead;
								fos.write(buf, 0, numRead);
								int percent = downLoadLength * 100 / fileLength;
								if (percent > oldPercent){
									oldPercent = percent;
									Message msg = mHandler.obtainMessage();
									msg.what = DOWN_LOAD_CHANGE;
									msg.arg1 = percent;
									mHandler.sendMessage(msg);
								}
							}
						} else {
							break;
						}
					}
				}
				if(downLoadState < 3){
					mHandler.sendEmptyMessage(DOWN_LOAD_OVER);
				    downLoadState = 2;
				}
				conn.disconnect();
				fos.close();
				is.close();
			} catch (IOException e) {
				e.printStackTrace();
			    downLoadState = 4;
			}
		} catch (MalformedURLException e) {
			e.printStackTrace();
		    downLoadState = 4;
		}
		if(downLoadState == 4){
		    mHandler.sendEmptyMessage(DOWN_LOAD_ERROR);
			return null;
		}else if(downLoadState == 3){
			return null;
		}
		updateFile = file;
		return file;
	}
     //打开APK程序代码  
	private void openFile(File file) {
		if(file != null){
			Log.e("OpenFile", file.getName());
			Intent intent = new Intent();
			intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
			intent.setAction(android.content.Intent.ACTION_VIEW);
			intent.setDataAndType(Uri.fromFile(file),
			"application/vnd.android.package-archive");
			startActivity(intent);
		}
	}
}
