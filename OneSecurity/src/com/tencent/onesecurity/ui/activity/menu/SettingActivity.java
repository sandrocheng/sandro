
package com.tencent.onesecurity.ui.activity.menu;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.RelativeLayout;
import android.widget.CompoundButton.OnCheckedChangeListener;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.manager.notification.StatusBarManager;
import com.tencent.onesecurity.manager.viewnotify.MainViewNotify;
import com.tencent.onesecurity.safebox.manager.AuthorityManager;
import com.tencent.onesecurity.safebox.manager.PopStackManager;
import com.tencent.onesecurity.safebox.ui.SetPwdActivity;
import com.tencent.onesecurity.safebox.util.SdCardNotExistException;
import com.tencent.onesecurity.service.SecureService;
import com.tencent.onesecurity.ui.activity.MainActivity;
import com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity;
import com.tencent.onesecurity.ui.activity.virus.VirusWhiteListActivity;
import com.tencent.onesecurity.ui.customview.layout.SettingItemLayout;
import com.tencent.onesecurity.ui.customview.layout.VaultLayout;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.qq.ActionStatsManager;
import com.tencent.onesecurity.usage.qq.EModelID;
import com.tencent.onesecurity.util.DeviceUtil;
import com.tencent.onesecurity.util.StringUtil;

/**
 * Settings 需存储SharedPreference，初始化Setting的各种状态，以及选项改变后的操作 UI需要自定义
 * 
 * @description Settings Activity
 * @version 1.0
 * @author LionLiu
 */
public class SettingActivity extends BaseActivity implements OnCheckedChangeListener {

    // 小火箭窗口开关
    private CheckBox _rocketDeskCheckbox;

    // 火箭音乐开关
    private CheckBox _rocketMusicCheckbox;

    // 火箭音乐Layout
    private SettingItemLayout _rocketMusicLayout;

    // 状态栏开关
    private CheckBox _statusBarCheckbox;

//    // 首页用户教学动画开关 delete by jackwang 20130325
//    private CheckBox _aminMainCheckbox;
    /**
     * 滚动新闻
     */
    private CheckBox _rollingNews;

    // 操作SharedPreference
    private ConfigDao _dao;

    // 私密空间密码管理器
    private AuthorityManager authorityManager = AuthorityManager.getInstance();

//    // 安全答案设置按钮
//    private RelativeLayout changeQuestion;
    /**
     * 病毒播报布局，低分辨率不显示
     */
    private SettingItemLayout mRollingNewsLayout ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        View view = LayoutInflater.from(SettingActivity.this).inflate(R.layout.layout_menu_setting,
                null);
        setContentView(view);
        mRollingNewsLayout = (SettingItemLayout) findViewById(R.id.setting_viurs_rolling_news) ;
        // 低分辨率不显示RollingNews
        if(DeviceUtil.isLowDensity()){
        	mRollingNewsLayout.setVisibility(View.GONE) ;
        }
        updateSubTitleBar(this, view, getString(R.string.menu_title_setting), -1, null, -1, null,
                true);

        _dao = DaoCreator.createConfigDao();

        // init View
        initView();
    }

    @Override
    protected void onResume() {
        super.onResume();
        // add by tony google analytics
        GoogleAnalyticsTracker.getInstance().trackView("设置");
    }

    /**
     * 初始化view变量以及事件
     * 
     * @version 1.0
     * @author LionLiu
     */
    private void initView() {

        // 桌面助手
        boolean isDeskAssitOpen = _dao.isDeskAssisWindowOpen();
        _rocketDeskCheckbox = (CheckBox)findViewById(R.id.check_rocket_homepage);
        _rocketDeskCheckbox.setChecked(isDeskAssitOpen);
        _rocketDeskCheckbox.setOnCheckedChangeListener(this);

        // 小火箭音乐
        _rocketMusicCheckbox = (CheckBox)findViewById(R.id.check_rocket_music);
        _rocketMusicCheckbox.setChecked(_dao.isRocketSoundOpen());
        _rocketMusicCheckbox.setOnCheckedChangeListener(this);
        _rocketMusicLayout = (SettingItemLayout)findViewById(R.id.rocket_music_layout);
        _rocketMusicLayout.setEnabled(isDeskAssitOpen);

        // 状态栏
        _statusBarCheckbox = (CheckBox)findViewById(R.id.check_statusbar);
        _statusBarCheckbox.setChecked(_dao.getIsServiceShowIcon());
        _statusBarCheckbox.setOnCheckedChangeListener(this);

//        // 首页用户教学 delete by jackwang 20130325
//        _aminMainCheckbox = (CheckBox)findViewById(R.id.check_anim_mainpage);
//        _aminMainCheckbox.setChecked(_dao.isHomepageAnimOpen());
//        _aminMainCheckbox.setOnCheckedChangeListener(this);
        // 滚动新闻
        _rollingNews = (CheckBox)findViewById(R.id.check_rolling_news);
        _rollingNews.setChecked(_dao.isRollingNewsOpen());
        _rollingNews.setOnCheckedChangeListener(this) ;

        // 修改私密箱密码,安全问题
        initVaultSetting();
		// white list 灰度第二版 lee
		findViewById(R.id.btn_white_list).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {

				GoogleAnalyticsTracker.getInstance().ClickButton("Menu",
						"进入白名单", "", 1l);
				Intent intent = new Intent();
				intent.setClass(SettingActivity.this, VirusWhiteListActivity.class);
				startActivity(intent);
			}
		});
    }

    /**
     * 初始化私密箱密码修改按钮，安全问题修改
     * 
     * @Description 1. 如果密码未设置过，则二者都不可用 2. 如果密码设置过，则密码修改可用 3.
     *              在密码设置过的情况下，如果安全问题未设置过，则安全问题修改可用
     * @version 1.0
     * @author LionLiu
     */
    private void initVaultSetting() {
        RelativeLayout changePass = (RelativeLayout)findViewById(R.id.btn_change_pass);
//        changeQuestion = (RelativeLayout)findViewById(R.id.btn_change_secure_question);

        // 获取私密箱密码，安全问题
        try {
            authorityManager.createAuthorityEntity();
        } catch (SdCardNotExistException e) {
            changePass.setEnabled(false);
//            changeQuestion.setVisibility(View.GONE);
            return;
        }

        String password = authorityManager.getPassword();
        // 如果密码未设置，则修改密码和安全问题都不可用
        if (StringUtil.isEmpty(password)) {
            changePass.setEnabled(false);
//            changeQuestion.setVisibility(View.GONE);
            return;
        } else {
            // 如果密码设置过，则修改密码可用
            changePass.setOnClickListener(new OnClickListener() {
                @Override
                public void onClick(View v) {
                    Intent intent = new Intent();
                    intent.setClass(SettingActivity.this, SetPwdActivity.class);
                    intent.putExtra(SetPwdActivity.EXTRAS_VALUME_STATUS,
                            SetPwdActivity.RESET_PWD_FIRST_STEP);
//                    startActivity(intent);
                    startActivityForResult(intent, PopStackManager.POPSTACK_PASSWORD_Question_ADD);
                    ActionStatsManager.getInstance().saveActionData(
                            EModelID._EMID_Secure_PRIVATE_PROTECT_password_setting);// 数据上报buck：进入私密设置

                    GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "点击修改私密箱密码", "设置", 1l);
                   
                }
            });
        }

//        String answer = authorityManager.getAnswer();
        // 如果未设置过安全问题，则安全问题可用
//        if (StringUtil.isEmpty(answer)) {
//            changeQuestion.setOnClickListener(new OnClickListener() {
//                @Override
//                public void onClick(View v) {
//                    Intent intent = new Intent();
//                    intent.putExtra(SetPwdActivity.EXTRAS_VALUME_STATUS, SetPwdActivity.RESET_QUESTION);
//                    intent.setClass(SettingActivity.this, SetPwdActivity.class);// 进入密码问题选择画面
//                    startActivityForResult(intent, PopStackManager.POPSTACK_PASSWORD_Question_ADD);
//                }
//            });
//            // 如果设置过安全问题，则按钮不可用
//        } else {
//            changeQuestion.setVisibility(View.GONE);
//        }
    }

    /**
     * Setting on/off 变化后处理
     * 
     * @version 1.0
     * @author LionLiu
     */
    @Override
    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
        switch (buttonView.getId()) {
            case R.id.check_rocket_homepage:
                rocketHomeChangeAction(isChecked);
                break;
            case R.id.check_rocket_music:
                rocketMusicChangeAction(isChecked);
                break;
            case R.id.check_statusbar:
                statusBarChangeAction(isChecked);
                break;
//            case R.id.check_anim_mainpage: // delete by jackwang 20130325
//                animMainpageChangeAction(isChecked);
            case R.id.check_rolling_news:
            	_dao.setRollingNewsOpen(isChecked) ;
            	
				GoogleAnalyticsTracker.getInstance().ClickButton("Menu",
						"Rolling News 开关", "", 1l);
            	
            	break ;
            default:
                break;
        }

    }

    /**
     * 桌面火箭 改变后的操作
     * 
     * @param isChecked
     * @version 1.0
     * @author LionLiu
     */
    private void rocketHomeChangeAction(boolean isChecked) {
        if (isChecked) {
            Intent intent = new Intent();
            intent.setClass(this, SecureService.class);
            intent.setFlags(SecureService.SWITCH_DESK_ASSIS_WINDOW);
            startService(intent);
        }
        _dao.setIsDeskAssisWindowOpen(isChecked);

        _rocketMusicLayout.setEnabled(isChecked);
        GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "点击火箭控件开关", "设置", 1l);
    }

    /**
     * 火箭音乐 改变后的操作
     * 
     * @param isChecked
     * @version 1.0
     * @author LionLiu
     */
    private void rocketMusicChangeAction(boolean isChecked) {
        _dao.setIsRocketSoundOpen(isChecked);
        GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "点击火箭声音开关", "设置", 1l);
    }

    /**
     * 主页动画 改变后的操作
     * 
     * @param isChecked
     * @version 1.0
     * @author LionLiu  -- delete by jackwang 20130325
     */
//    private void animMainpageChangeAction(boolean isChecked) {
//        _dao.setHomepageAnimOpen(isChecked);
//        // GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "点击火箭声音开关", "设置", 1l);
//    }

    /**
     * 状态栏 改变后的操作
     * 
     * @param isChecked
     * @version 1.0
     * @author LionLiu
     */
    private void statusBarChangeAction(boolean isChecked) {
        _dao.setIsServiceShowIcon(isChecked);
        if (isChecked) {
            // 如果选中，则开启状态栏
            StatusBarManager.getInstance().openStatusNotification();
        } else {
            // 否则，关闭状态栏
            StatusBarManager.getInstance().closeStatusNotification();
        }
        GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "点击系统通知开关", "设置", 1l);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        switch (requestCode) {
            case PopStackManager.POPSTACK_PASSWORD_Question_ADD:
                if (resultCode == PopStackManager.POPSTACK_PASSWORD_Question_ADD_RESULT) {
                    // 需要添加新的上报数据
                    // 设置安全答案按钮消失
//                    changeQuestion.setVisibility(View.GONE);
//                	finish();
//                	Intent intent = new Intent(SettingActivity.this,MainActivity.class );
//                	startActivityForResult(intent, PopStackManager.POPSTACK_SETTING_TO_MAIN);
    				AuthorityManager.getInstance().setLock(false);
    				VaultLayout.needUnlockCarton = true;
                	MainViewNotify.notifyChange(MainActivity.VAULT_INDEX,SettingActivity.this,MainActivity.ACTION_NULL_INDEX);
                }
                break;
        }
    }
}
