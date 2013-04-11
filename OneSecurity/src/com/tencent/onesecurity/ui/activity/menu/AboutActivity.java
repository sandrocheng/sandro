
package com.tencent.onesecurity.ui.activity.menu;

import java.io.File;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.CoreConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.manager.notification.StatusBarManager;
import com.tencent.onesecurity.manager.update.CheckUpdateUtil;
import com.tencent.onesecurity.manager.update.LcUtil;
import com.tencent.onesecurity.ui.activity.UserGuidActivity;
import com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity;
import com.tencent.onesecurity.ui.customview.dialog.CustomDialog;
import com.tencent.onesecurity.ui.customview.dialog.CustomLoadingDialog;
import com.tencent.onesecurity.ui.helper.UIConstants;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.util.IntentUtil;
import com.tencent.onesecurity.util.Log;
import com.tencent.onesecurity.util.PackageUtil;
import com.tencent.onesecurity.util.ToastUtil;

/**
 * About页面
 * 
 * @version 1.0
 * @author LionLiu
 */
public class AboutActivity extends BaseActivity implements OnClickListener {

    /**
     * Update页面传值
     */
    public final static String NEW_VERSION = "new_version";

    public final static String NEW_TIP = "new_tip";

    public final static String NEW_URL = "new_url";

    // 检查更新工具类
    private CheckUpdateUtil _updateUtil;

    // 提交时 等待提示框
    private CustomLoadingDialog mProgressDialog;

    private String mVersionName;
    
    private Dialog updateDialog;

    private Handler mHandler = new Handler() {

        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                // 检查更新消息提示
                case CheckUpdateUtil.CHECK_VERSION_NOTICE:
                    dismissLoadDialog();
                    handleUpdate(msg);
                    GoogleAnalyticsTracker.getInstance().trackView("升级提示");
                    break;
                default:
                    break;
            }

        }

    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        View view = LayoutInflater.from(AboutActivity.this).inflate(R.layout.layout_menu_about,
                null);
        setContentView(view);

        updateSubTitleBar(this, view, getString(R.string.menu_title_about), -1, null, -1, null,
                true);

        // update工具类
        _updateUtil = new CheckUpdateUtil(mHandler);

        // 初始化View
        init();
        //add by tony
        update(getIntent());
    }

    @Override
    protected void onResume() {
        super.onResume();
        // add by tony google analytics
        GoogleAnalyticsTracker.getInstance().trackView("关于我们");
    }

    @Override
    protected void onDestroy() {
        if (null != mProgressDialog && mProgressDialog.isShowing()) {
            mProgressDialog.dismiss();
        }
        super.onDestroy();
    }
    
    /**
     * 初始化操作
     * 
     * @version 1.0
     * @author LionLiu
     */
    private void init() {
        // 版本号TextView
        TextView txtVersion = (TextView)findViewById(R.id.txtVersion);
        mVersionName = PackageUtil.getVersionName();
        txtVersion.setText(mVersionName);
        // About按钮
        RelativeLayout btnAbout = (RelativeLayout)findViewById(R.id.btn_about);
        btnAbout.setOnClickListener(this);

        // help按钮
        RelativeLayout btnHelp = (RelativeLayout)findViewById(R.id.btn_help);
        btnHelp.setOnClickListener(this);

        // Update按钮
        RelativeLayout btnUpdate = (RelativeLayout)findViewById(R.id.btn_update);
        btnUpdate.setOnClickListener(this);
        // 设置new标志是否显示
        checkUpdateIconShown();

        // Twitter
        ImageView ivTwitter = (ImageView)findViewById(R.id.iv_twitter);
        ivTwitter.setOnClickListener(this);

        // Facebook
        ImageView ivFacebook = (ImageView)findViewById(R.id.iv_facebook);
        ivFacebook.setOnClickListener(this);

        // Forum
        ImageView ivForum = (ImageView)findViewById(R.id.iv_forum);
        ivForum.setOnClickListener(this);

        // Website
        ImageView ivWebsite = (ImageView)findViewById(R.id.iv_website);
        ivWebsite.setOnClickListener(this);

        // License and Agreement
        TextView tvLicense = (TextView)findViewById(R.id.tv_license);
        tvLicense.setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {
        String jumpUrl = null;
        switch (v.getId()) {
            // about
            case R.id.btn_about:
                startActivity(new Intent(AboutActivity.this, UserGuidActivity.class));
                break;
            // help
            case R.id.btn_help:
                startActivity(new Intent(AboutActivity.this, HelpActivity.class));

                GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "点击帮助", "帮助", 1l);
                break;
            // update
            case R.id.btn_update:
                GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "点击升级", "升级", 1l);

                _updateUtil.checkSoftwareVesrion();

                // 弹出等待提示框
                if (mProgressDialog == null || !mProgressDialog.isShowing()) {
                    mProgressDialog = new CustomLoadingDialog(this, true);
                    showLoadDlg();
                }
                break;
            // 图片超链 begin
            case R.id.iv_twitter:
            	// add by kevin 20130312
    			GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "点击TWITTER", "TWITTER", 1l);
    			
                // 通过SmartConfig 参数配置
                jumpUrl = CoreConfigDao.getInstance()
                        .getStringValue(CoreConfigDao.TWITTER_SITE_URL); // _res.getString(R.string.site_twitter);
                IntentUtil.jumpToUrl(AboutActivity.this, jumpUrl);
                break;
            case R.id.iv_facebook:
            	// add by kevin 20130312
    			GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "点击Facebook", "Facebook", 1l);
                // 通过SmartConfig 参数配置
                jumpUrl = CoreConfigDao.getInstance().getStringValue(
                        CoreConfigDao.FACEBOOK_SITE_URL); // _res.getString(R.string.site_facebook);
                IntentUtil.jumpToUrl(AboutActivity.this, jumpUrl);
                break;
            case R.id.iv_forum:
            	// add by kevin 20130312
    			GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "点击论坛", "论坛", 1l);
    			
                // 通过SmartConfig 参数配置
                jumpUrl = CoreConfigDao.getInstance().getStringValue(CoreConfigDao.FORUM_SITE_URL); // _res.getString(R.string.site_forum);
                IntentUtil.jumpToUrl(AboutActivity.this, jumpUrl);
                break;
            case R.id.iv_website:
            	// add by kevin 20130312
    			GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "点击官网", "点击官网", 1l);
    			
                // 通过SmartConfig 参数配置
                jumpUrl = CoreConfigDao.getInstance().getStringValue(
                        CoreConfigDao.OFFICIAL_SITE_URL); // _res.getString(R.string.site_website);
                IntentUtil.jumpToUrl(AboutActivity.this, jumpUrl);
                break;
            // 图片超链 end
            // license
            case R.id.tv_license:
                Intent intent = new Intent();
                intent.putExtra(LicenseActivity.BUTTON_DISPLAY, false);
                intent.setClass(AboutActivity.this, LicenseActivity.class);
                startActivity(intent);
                break;
            default:
                break;
        }
    }

    /**
     * @Description 设置有更新版本Icon的是否显示
     * @version 1.0
     * @author LionLiu
     */
    private void setUpdateIconShown(boolean hasNewUpdate) {
        View updateIcon = findViewById(R.id.icon_update);
        if (hasNewUpdate) {
            DaoCreator.createConfigDao().setVersionBeforeUpdate(PackageUtil.getVersionName());
            updateIcon.setVisibility(View.VISIBLE);
        } else {
            DaoCreator.createConfigDao().setVersionBeforeUpdate("0");
            updateIcon.setVisibility(View.GONE);
        }
    }

    /**
     * @Description 检测更新版本Icon的是否显示
     * @version 1.0
     * @author LionLiu
     */
    private void checkUpdateIconShown() {
        findViewById(R.id.icon_update).setVisibility(
                DaoCreator.createConfigDao().hasNewUpdate() ? View.VISIBLE : View.GONE);
    }

    /**
     * 升级逻辑 1)ERROR 2)不需要升级 3)选择升级，强制升级(目前一起处理)
     * 
     * @param activity
     * @param msg
     */
    public void handleUpdate(Message msg) {
        Bundle data = msg.getData();
        int updateType = data.getInt(CheckUpdateUtil.UPDATE_TYPE);
        String mTip = data.getString(CheckUpdateUtil.UPDATE_MSG);
        String mUrl = data.getString(CheckUpdateUtil.DOWNLOAD_URL);
        switch (updateType) {
            // 网络错误
            case LcUtil.ERROR:
                ToastUtil.ShowSimpleTextLongToast2(R.string.connect_failure_tip,R.layout.custom_toast);

                break;
            // 不需要升级
            case LcUtil.NONEED:
                ToastUtil.ShowSimpleTextLongToast2(R.string.no_update_tip,R.layout.custom_toast);
                setUpdateIconShown(false);
                break;
            // 强制升级
            case LcUtil.MUSTUPDATE:
                // 选择升级
            case LcUtil.SHOULDUPDATE:
                setUpdateIconShown(true);

                // 跳转update页面
                final String split = UIConstants.UPDATE_VERSION_SPLIT;
                if (mTip.indexOf(split) != -1) {
                    String[] arrays = mTip.split(split);
                    String newVersion = arrays[0];
                    String newTip = arrays[1];

                    Intent intent = new Intent();
                    intent.setClass(AboutActivity.this, UpdateActivity.class);
                    intent.putExtra(NEW_VERSION, newVersion);
                    intent.putExtra(NEW_TIP, newTip);
                    intent.putExtra(NEW_URL, mUrl);
                    startActivity(intent);
                }

                break;
        }
    }

    /**
     * 关闭菊花
     */
    private void dismissLoadDialog() {
        if (mProgressDialog != null && mProgressDialog.isShowing()) {
            mProgressDialog.dismiss();
        }
    }

    /**
     * 开菊花
     */
    private void showLoadDlg() {
        if (mProgressDialog != null && !mProgressDialog.isShowing()) {
            mProgressDialog.show();
        }
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
	/**
	 * 软件内下载新包并安装
	 */
	private void update(Intent intent) {
		String fromWhere = intent.getStringExtra("FROM_WHERE");
		if("NOTIFICATION_INSTALL".equals(fromWhere)){
    		if(UpdateActivity.downLoadState == 2){
    			if(UpdateActivity.updateFile != null){
    				openFile(UpdateActivity.updateFile);
    			}else{
                	ToastUtil.ShowSimpleTextShortToast(getString(R.string.update_error),R.layout.custom_toast);
                	UpdateActivity.downLoadState = 3;
                	StatusBarManager.getInstance().showUpdataNotification(-1);
    			}
    		}
		}else if("NOTIFICATION".equals(fromWhere)){
        	if(UpdateActivity.downLoadState == 1){
    			if(updateDialog == null){
            		updateDialog = CustomDialog.createCustomDialogCommonBlack(this, 
            				getString(R.string.update_cancel_tips), 
            				getString(R.string.update_cancel_update), 
            				getString(R.string.update_cancel_minimize), 
                			new DialogInterface.OnClickListener() {
        				
        				@Override
        				public void onClick(DialogInterface dialog, int which) {
        					switch (which) {
                            case CustomDialog.LEFT_BUTTON_CLICK:
                                // Cancel
                            	if( UpdateActivity.downLoadState != 2){
                            		ToastUtil.ShowSimpleTextShortToast(getString(R.string.update_download_canceled),R.layout.custom_toast);
                                	StatusBarManager.getInstance().showUpdataNotification(-1);
                                	UpdateActivity.downLoadState = 3;
                            	}
                                dialog.dismiss();
                                break;
                            case CustomDialog.RIGHT_BUTTON_CLICK:
                                // hide
                        		dialog.dismiss();
                                break;
                            }
        					
        				}
        			});
            	}
            	if(!updateDialog.isShowing()){
            		updateDialog.show();
            	}
    		}
        	return;
        }
	}
}
