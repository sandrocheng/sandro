
package com.tencent.onesecurity.ui.activity;

import java.util.ArrayList;
import java.util.List;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.DialogInterface.OnCancelListener;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.CoreConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.dao.SplashDao;
import com.tencent.onesecurity.dao.UserInfoDao;
import com.tencent.onesecurity.manager.battery.BatteryManagerImpl;
import com.tencent.onesecurity.manager.battery.BatteryManagerImpl.BatteryMonitorListener;
import com.tencent.onesecurity.manager.notification.MessageManager;
import com.tencent.onesecurity.manager.notification.StatusBarManager;
import com.tencent.onesecurity.manager.notification.MessageManager.MsgUnreadNotify;
import com.tencent.onesecurity.manager.update.CheckUpdateUtil;
import com.tencent.onesecurity.manager.update.LcUtil;
import com.tencent.onesecurity.manager.viewnotify.MainViewNotify;
import com.tencent.onesecurity.manager.viewnotify.MainViewNotify.MainviewListener;
import com.tencent.onesecurity.manager.vip.VipInfomationConst;
import com.tencent.onesecurity.model.SplashEntity;
import com.tencent.onesecurity.receiver.PaymentBroadcastReceiver;
import com.tencent.onesecurity.safebox.manager.AuthorityManager;
import com.tencent.onesecurity.safebox.manager.PopStackManager;
import com.tencent.onesecurity.service.ChargeService;
import com.tencent.onesecurity.service.MemberTimerService;
import com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity;
import com.tencent.onesecurity.ui.activity.menu.LicenseActivity;
import com.tencent.onesecurity.ui.activity.vip.VipZoneActivity;
import com.tencent.onesecurity.ui.adapter.GuidePageAdapter;
import com.tencent.onesecurity.ui.adapter.MainMenuPagerAdapter;
import com.tencent.onesecurity.ui.android.support.v4.view.ViewPager;
import com.tencent.onesecurity.ui.android.support.v4.view.ViewPager.OnPageChangeListener;
import com.tencent.onesecurity.ui.customview.customWindow.MainMenuPopupWindow;
import com.tencent.onesecurity.ui.customview.dialog.CustomDialog;
import com.tencent.onesecurity.ui.customview.layout.AntivirusLayout;
import com.tencent.onesecurity.ui.customview.layout.MainTitleLayout2;
import com.tencent.onesecurity.ui.customview.layout.VaultLayout;
import com.tencent.onesecurity.ui.customview.layout.booster.BoosterLayoutView;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.qq.ActionStatsManager;
import com.tencent.onesecurity.usage.qq.EModelID;
import com.tencent.onesecurity.util.DeviceUtil;
import com.tencent.onesecurity.util.Log;
import com.tencent.onesecurity.util.PackageUtil;
import com.tencent.onesecurity.util.ToastUtil;

public class MainActivity extends BaseActivity implements OnClickListener, MsgUnreadNotify,
        MainviewListener {
	
	/**
	 * 第一次点击退出时候的时间
	 */
	private long quitTime = 0;
	
	/**
	 * 两次点击退出的时间间隔
	 */
	private static final long QUIT_DUR = 3000;

    public static final String EXTRA_FROM = "extra_from";

    public static final String FROM_NOTIFICATION = "from_notification";

    public static final String FROM_LICENSE = "from_license";

    private final static int TIME_DELAY = 2000;// 闪屏的时间

    private int MAX_SETTLE_DURATION = 1000; // ms

    private final int START_LOAD_RES = 3;

    private final int FIRST_LOAD_OK = 1;

    private final static int CHANGE_VIEW = 4;

    // add by lynnawang 消息有变化
    private final int CHANGE_MSG_NUM = 2;

    // 打开用户教育
    private final int LOAD_USER_GUIDE = 5;
    
    private final int CHARGE_STATUS_CHANGE = 6;
    

    private ViewPager mGuides; // 用户教育

    private GuidePageAdapter mGuideAdapter;// 用户教育Adapter

    private ViewPager mPager;// 页卡内容

    private TextView tvBooster, tvAntivirus, tvVault;// 页卡头标

    private List<View> listViews; // Tab页面列表

    private BoosterLayoutView layoutBooster;

    private AntivirusLayout layoutAntivirus;

    private VaultLayout layoutVault;

    private SparseArray<SubViewListener> subViewListeners = new SparseArray<SubViewListener>();

    // VIP广播接收
    private PaymentBroadcastReceiver mPayReceiver = new PaymentBroadcastReceiver();

    private UserInfoDao mUserInfoDao = DaoCreator.createUserInfoDao();

    protected Dialog vipOutOfTimeDialog;

//    private int isEverShowVipOutOfTimeDialog = 0;

    // 设置一个全局变量 辨识当前页面是哪个page
    private int indexPage = ANTIVIRUS_INDEX;


    public final static int BOOST_INDEX = 0;

    public final static int ANTIVIRUS_INDEX = 1;

    public final static int VAULT_INDEX = 2;


    // 从子页面跳回的动作
    public final static int ACTION_NULL_INDEX = 0;

    // VIP使用，返回杀毒界面之后自动触发更新病毒库
    public final static int ACTION_UPDATE_DB_INDEX = 1;

//    private MainTitleLayout mainTitleLayout;
    private MainTitleLayout2 mainTitleLayout2;

    private String from;

    // Menu弹出菜单
    private MainMenuPopupWindow mainMenu;

    // Menu弹出位置
    private int menuStartY;

    // MenuBar 右侧按钮
    private ImageView menuRightView;

//    private ImageView vipImgView;

    private boolean resLoaded = false;
    
//    private ImageView secretGuid = null;
    
 // joy 在二级页面时主页被杀掉处理 2013.02.19 start
    private static final String IS_KILLED_BEFORE = "IS_KILLED_BEFORE";
    private static final String IS_VAULT_LOCK= "IS_VAULT_LOCK";
    private static final String IS_VAULT_BEFORE= "IS_VAULT_BEFORE";
    
    private boolean isKilledBefore = false;
    private boolean isFromResult = false;
    private boolean isVaultBefore = false;
 // joy 在二级页面时主页被杀掉处理 2013.02.19 end
    
    private Handler mHandler = new Handler() {

        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case CHANGE_VIEW:
                    mPager.setCurrentItem(msg.arg1, true, MAX_SETTLE_DURATION);
                    switch (msg.arg2) {
                        case ACTION_NULL_INDEX:
                            break;
                        case ACTION_UPDATE_DB_INDEX:

                            if (null != layoutAntivirus) {
                                layoutAntivirus.updateVirusLib();
                            }

                            break;
                    }
                    break;
                case START_LOAD_RES:
                    new AppInitThread().start();
                    break;
                case FIRST_LOAD_OK:
                    firstLoadAction();
                    break;

                case CHANGE_MSG_NUM:
                    setAboutUpdateShow();

                    // 根据用户类型，刷新病毒库升级按钮样式
                    setBtnVirusLibUpdateStyle();

                    MessageManager.getInstance().msgUnReadNotify = MainActivity.this;
                    break;
                // 检查更新
                case CheckUpdateUtil.CHECK_VERSION_NOTICE:
                    handleUpdate(msg);
                    break;
                case LOAD_USER_GUIDE:
                    mGuides.setAdapter(mGuideAdapter);
                    mGuides.setCurrentItem(0);
                    mGuides.setVisibility(View.VISIBLE);
                    break;
                case CHARGE_STATUS_CHANGE:
//                	int extraLevel  = msg.arg1;
//                	Boolean isCharging = (Boolean) msg.obj;
                	if(layoutBooster!=null){
                		layoutBooster.updateBatteryStauts();//电量状态发生变化后	
                	}
                	break;
            }

            super.handleMessage(msg);
        }
    };

    /**
     * 关闭闪屏或者用户教育，进入主界面时候做的操作
     * 
     * @Description
     * @version 1.0
     * @author LionLiu
     */
    private void firstLoadAction() {
        mPager.setAdapter(new MainMenuPagerAdapter(listViews));
        mPager.setCurrentItem(1, false);
        
        // 设置默认Title为 1:Virus
        mainTitleLayout2.move(1, 0, 0);
        
        indexPage = ANTIVIRUS_INDEX;
        // 初始化 快速扫毒抽象布局及处理
        layoutAntivirus.initAntivirusLayout(cartonEngine);
        layoutVault.initHandler();
        layoutBooster.initHandler();
        BoosterLayoutView.mIsNeedAnimation = true;
        releaseSplashView();
        resLoaded = true;
        findViewById(R.id.main_menu_bar_right_click).setOnClickListener(MainActivity.this);
//        findViewById(R.id.main_menu_bar_left_click).setOnClickListener(MainActivity.this);

//        isEverShowVipOutOfTimeDialog = 2;
        // 是否需要弹出VIP过期提示
        if (mUserInfoDao.getUserIsOutOfTime() == 1) {
            buildVipOutOfTimeDialog();
        }
        
        // joy 在二级页面时主页被杀掉处理 2013.02.19 start
        if (isKilledBefore) {
        	layoutVault.onRestoreInstance(isFromResult);
        	
        	if (isVaultBefore) {
//        		mainTitleLayout.move(2, 0, 0);
        		mainTitleLayout2.move(2, 0, 0);
	           	mPager.setCurrentItem(2, false);
	           	indexPage = 2;
        	}
        }
     // joy 在二级页面时主页被杀掉处理 2013.02.19 end
    }

    private void initSplashView() {
//        vipImgView = (ImageView)findViewById(R.id.main_menu_bar_left);
        menuRightView = (ImageView)findViewById(R.id.main_menu_bar_right);
//        vipImgView.setVisibility(View.GONE);
        menuRightView.setVisibility(View.GONE);
    }

    private void releaseSplashView() {
        this.findViewById(R.id.main_view).setBackgroundResource(R.drawable.bg_common_base);
        this.findViewById(R.id.copyright).setVisibility(View.GONE);
//        vipImgView.setVisibility(View.VISIBLE);
        menuRightView.setVisibility(View.VISIBLE);
        this.findViewById(R.id.main_content_lay).setVisibility(View.VISIBLE);
    }

    /**
     * 如果是第一次进入软件，需要显示用户教育
     * 
     * @Description
     * @version 1.0
     * @author LionLiu
     */
    private void initUserGuide() {
        mGuides = (ViewPager)findViewById(R.id.user_guid_main);
        // 初始化最后一页的View
        View rocketView = getLayoutInflater().inflate(R.layout.layout_userguide_rocket, null);
        // 绑定Start事件
        rocketView.findViewById(R.id.btn_guide_start).setOnClickListener(this);
        ImageView bg = (ImageView)rocketView.findViewById(R.id.bg_guide);
        bg.setImageBitmap(BitmapFactory.decodeResource(this.getResources(), R.drawable.bg_userguide_rocket));
        bg.setScaleType(ImageView.ScaleType.FIT_XY);
        bg.setLayoutParams(new FrameLayout.LayoutParams(FrameLayout.LayoutParams.FILL_PARENT,
        		FrameLayout.LayoutParams.FILL_PARENT));
        mGuideAdapter = new GuidePageAdapter(MainActivity.this, rocketView);
    }

    /**
     * 取消用户教育，进入主界面
     * 
     * @Description
     * @version 1.0
     * @author LionLiu
     */
    private void releaseUserGuide() {
        if (null != mGuides) {
            mGuides.setVisibility(View.GONE);
            mGuides.removeAllViews();
            mGuides.setAdapter(null);
            mGuides = null;
            mGuideAdapter.releaseSource();
            mGuideAdapter = null;
        }
        // 打开主界面
        firstLoadAction();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        // long time = System.currentTimeMillis();
        super.onCreate(savedInstanceState);
        // Log.i("MainActivity", "oncreate use1 : " +
        // (System.currentTimeMillis() - time ));
        MainViewNotify.setListener(this);
        from = (String)getIntent().getStringExtra(EXTRA_FROM);
        if (FROM_LICENSE.equals(from)) {
            // Log.i("MainActivity", "oncreate use2 : " +
            // (System.currentTimeMillis() - time ));
            DaoCreator.createConfigDao().setLicenseAgreed(true);
            // Log.i("MainActivity", "oncreate use3 : " +
            // (System.currentTimeMillis() - time ));
            MainApplication.startTMS();
            // Log.i("MainActivity", "oncreate use4 : " +
            // (System.currentTimeMillis() - time ));
        } else if (!DaoCreator.createConfigDao().isLicenseAgreed()) {
            Intent intent = new Intent();
            intent.putExtra(LicenseActivity.BUTTON_DISPLAY, true);
            intent.setClass(MainActivity.this, LicenseActivity.class);
            startActivity(intent);
            finish();
            return;
        }
        super.initCarton();
        // Log.i("MainActivity", "oncreate use5 : " +
        // (System.currentTimeMillis() - time ));
        setContentView(R.layout.layout_main);
        
        // add by kevin 使用后台下发闪屏
        byte[] splashPicByte = getSplashPic();
        if (splashPicByte != null) {
        	Bitmap picBitmap = BitmapFactory.decodeByteArray(splashPicByte, 0, splashPicByte.length);
        	BitmapDrawable bd= new BitmapDrawable(getResources(), picBitmap);
        	this.findViewById(R.id.main_view).setBackgroundDrawable(bd);
        } else {
        	this.findViewById(R.id.main_view).setBackgroundResource(R.drawable.bg_mainpage_splash);
        }
        
        // Log.i("MainActivity", "oncreate use6 : " +
        // (System.currentTimeMillis() - time ));
        initSplashView();
        // Log.i("MainActivity", "oncreate use7 : " +
        // (System.currentTimeMillis() - time ));
        mHandler.sendEmptyMessage(START_LOAD_RES);
        // Log.i("MainActivity", "oncreate use8 : " +
        // (System.currentTimeMillis() - time ));
        
        BatteryManagerImpl mBatteryManagerImpl = BatteryManagerImpl.getSingleInstance();	
        BatteryMonitorListener mBatteryMonitorListener=  new BatteryMonitorListener() {
			@Override
			public void onNotify() {
				mHandler.sendEmptyMessage(CHARGE_STATUS_CHANGE);
			}
		};
		mBatteryManagerImpl.mListener = mBatteryMonitorListener;
    }

    /**
     * 异步加载Acitivity资源
     */
    private void init() {
        DeviceUtil.initBasicData(MainActivity.this);
        InitViewPager();

//        mainTitleLayout = (MainTitleLayout)findViewById(R.id.main_title_layout);
//        mainTitleLayout.setTitleLayoutOnTouchListener(new MyOnTitleOnTouchListener());

//        InitTextView();
        initMainTitleLayout();
        mUserInfoDao.setNeedToShowDlgFlag(false);
        mUserInfoDao.setNeedToShowPayResult(false);
        Intent chargeIntent = new Intent(MainActivity.this, MemberTimerService.class);
        chargeIntent.setFlags(MemberTimerService.GET_PAY_STATUS);
        startService(chargeIntent);
        
        // 检查更新
        checkUpdate();
        // add by eddy - Feature数据上报-主动打开UI
        ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_INTO_QQPIMSECURE);//使用小火箭、点击浮窗、点击桌面图片进入UI
        GoogleAnalyticsTracker.getInstance().ClickButton("主动打开UI", "打开桌面助手、通过桌面图标进入OS、通过火箭加速", "指标", 1l);
    }
    
    // joy 在二级页面时主页被杀掉处理 2013.02.19 start
    @Override
	protected void onSaveInstanceState(Bundle outState) {
		super.onSaveInstanceState(outState);
		outState.putBoolean(IS_KILLED_BEFORE, true);
		
		outState.putBoolean(IS_VAULT_LOCK, AuthorityManager.getInstance().isLock());
		
		if (indexPage == 2) {
			outState.putBoolean(IS_VAULT_BEFORE, true);
		}
	}
    

	@Override
	protected void onRestoreInstanceState(Bundle savedInstanceState) {
		super.onRestoreInstanceState(savedInstanceState);
		isKilledBefore = savedInstanceState.getBoolean(IS_KILLED_BEFORE);
		isVaultBefore = savedInstanceState.getBoolean(IS_VAULT_BEFORE);
		
		boolean isLock = savedInstanceState.getBoolean(IS_VAULT_LOCK);
		
		if (!isLock) {
			 AuthorityManager.getInstance().setLock(false);
		}
		
		if (isKilledBefore) {
			this.findViewById(R.id.main_view).setBackgroundColor(getResources().getColor( R.color.black));
        }
	}
	// joy 在二级页面时主页被杀掉处理 2013.02.19 end

	@Override
    protected void onResume() {
        super.onResume();
        // 是否显示NEW MENU
        setAboutUpdateShow();

        MessageManager.getInstance().msgUnReadNotify = this;
        
        if (!this.resLoaded) {
            return;
        }

        SubViewListener listener = subViewListeners.get(indexPage);
        if (listener != null) {
            listener.onShow(SubViewListener.FROM_RESUME);
        }
        
        if(mUserInfoDao.getUserIsOutOfTime() == 1) {
        	if(vipOutOfTimeDialog == null) {
        		buildVipOutOfTimeDialog();
        	}
        	else if ((vipOutOfTimeDialog != null && !vipOutOfTimeDialog.isShowing())) {
        		vipOutOfTimeDialog.show();
        	}
        }
        else {
        	if ((vipOutOfTimeDialog != null && vipOutOfTimeDialog.isShowing())) {
	        	vipOutOfTimeDialog.dismiss();
	        	StatusBarManager.getInstance().cancelVipExpiredNotification();	
	        }
        }
    }

    @Override
    protected void onPause() {
        Log.d("MainActivity", "onPause");
        
        if (!this.resLoaded) {
            super.onPause();
            return;
        }
        
        // modify by lynna 修正bug 9587263 20121207 start
        if (mainMenu != null && mainMenu.isShowing()) {
            mainMenu.dismiss();
        }
        MessageManager.getInstance().msgUnReadNotify = null;
        // modify by lynna 修正bug 9587263 20121207 start

        SubViewListener listener = subViewListeners.get(indexPage);
        listener.onHidden(SubViewListener.FROM_PAUSE);
        super.onPause();
    }

    @Override
    protected void onStart() {
        super.onStart();
        IntentFilter outOfTimeIntent = new IntentFilter(VipInfomationConst.vipOutOfTime);
        /*--boone fix bug NO 9579481----20121204-------S-*/
        outOfTimeIntent.addAction(VipInfomationConst.paymentActionPayGetStatus);
        /*--boone fix bug NO 9579481----20121204-------E-*/
        registerReceiver(mPayReceiver, outOfTimeIntent);
        isHaveUserDao();
    }

    @Override
    protected void onStop() {
        super.onStop();
        unregisterReceiver(mPayReceiver);
    }

    @Override
    protected void onDestroy() {
        Log.d("MainActivity", "onDestroy");
        MainViewNotify.setListener(null);
        if (!this.resLoaded) {
            super.onDestroy();
            return;
        }
        for (int i = 0; i < subViewListeners.size(); i++) {
            SubViewListener listener = subViewListeners.get(i);
            listener.onDestroy();
        }
        AuthorityManager.getInstance().setLock(true);
        subViewListeners.clear();
        
        if(layoutAntivirus != null){
        	layoutAntivirus.unregistReceiver() ;
        }
        
        super.onDestroy();
//        Intent i = new Intent(MainActivity.this, com.tencent.onesecurity.usage.qq.ReportService.class);
//		startService(i);
    }

    private void isHaveUserDao() {
        // 如果用户在程序外部将UserDao文件清除，要重新向服务器拉取
        if (mUserInfoDao.getMemberEndTime() == -1 && mUserInfoDao.getMemberStartTime() == -1
                && mUserInfoDao.getUserLevelInfo() == 0) {
            Intent msgIntent = new Intent(this, ChargeService.class);
            msgIntent.setFlags(ChargeService.PAY_GET_STATUS);
            startService(msgIntent);
        }
    }

    public void buildVipOutOfTimeDialog() {
//        if (isEverShowVipOutOfTimeDialog == 1 || isEverShowVipOutOfTimeDialog == 0) {
//            return;
//        }
        if (!(vipOutOfTimeDialog != null && vipOutOfTimeDialog.isShowing())) {

            vipOutOfTimeDialog = CustomDialog.createCustomDialogCommonBlack(MainActivity.this,
                    getString(R.string.vip_out_of_time_info), getString(R.string.common_cancel),
                    getString(R.string.common_extend), new DialogInterface.OnClickListener() {

                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            switch (which) {
                                case CustomDialog.LEFT_BUTTON_CLICK:
                                    // Cancel
                                    vipOutOfTimeDialog.dismiss();
                                    StatusBarManager.getInstance().cancelVipExpiredNotification();
                                    mUserInfoDao.setUserIsOutOfTime(0);
                                    break;
                                case CustomDialog.RIGHT_BUTTON_CLICK:
                                    // OK
                                    vipOutOfTimeDialog.dismiss();
                                    StatusBarManager.getInstance().cancelVipExpiredNotification();
                                    mUserInfoDao.setUserIsOutOfTime(0);
                                    Intent intent = new Intent(MainActivity.this,
                                            VipZoneActivity.class);
                                    startActivity(intent);
                                    break;
                            }
                        }

                    });
            vipOutOfTimeDialog.setOnCancelListener(new OnCancelListener() {

				@Override
				public void onCancel(DialogInterface dialog) {
					mUserInfoDao.setUserIsOutOfTime(0);
					StatusBarManager.getInstance().cancelVipExpiredNotification();
				}
            	
            });
            vipOutOfTimeDialog.setCanceledOnTouchOutside(true);
            
            // 先判断activity是否销毁了，未销毁再弹dialog
            if (MainActivity.this.isFinishing() == false) {
                vipOutOfTimeDialog.show();
            } else {
            	return;
            }
//            isEverShowVipOutOfTimeDialog = 1;
        }
    }

    /**
     * 初始化ViewPager
     */
    private void InitViewPager() {
    	// joy 在二级页面时主页被杀掉处理 2013.02.19 start
    	if (mPager != null) {
    		return ;
    	}
    	// joy 在二级页面时主页被杀掉处理 2013.02.19 end
    	
        mPager = (ViewPager)findViewById(R.id.vPager);
        listViews = new ArrayList<View>();
        layoutBooster = (BoosterLayoutView)getLayoutInflater().inflate(
                R.layout.layout_main_booster, null);
        layoutBooster.prepare(cartonEngine);
        // xh h 屏幕杀毒中间显示布局有变化，所以单独加载,修改此部分，需要两个布局文件都修改
        if( DeviceUtil.isXHighDensity() || DeviceUtil.isHighDensity()){
         	layoutAntivirus = (AntivirusLayout)getLayoutInflater().inflate(
         			R.layout.layout_main_antivirus, null);
        }else{
        	layoutAntivirus = (AntivirusLayout)getLayoutInflater().inflate(
        			R.layout.layout_main_antivirus_ml, null);
        }

        layoutVault = (VaultLayout)getLayoutInflater().inflate(R.layout.layout_main_vault, null);
        layoutVault.init(cartonEngine);

        listViews.add(layoutBooster);
        listViews.add(layoutAntivirus);
        listViews.add(layoutVault);
        subViewListeners.put(0, layoutBooster);
        subViewListeners.put(1, layoutAntivirus);
        subViewListeners.put(2, layoutVault);


        mPager.setOnPageChangeListener(new MyOnPageChangeListener());

    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            // Menu入口
            case R.id.main_menu_bar_right_click:
                showMenu();

                break;
//            // VIP 入口 -TODO
//            case R.id.main_menu_bar_left_click:
//                Intent intent = new Intent(MainActivity.this, VipZoneActivity.class);
//                startActivity(intent);
//                break;
            // 用户教育Start按钮
            case R.id.btn_guide_start:
                releaseUserGuide();
        }
    }

    /**
     * 打开menu
     * 
     * @Description
     * @version 1.0
     * @author LionLiu
     */
    private void showMenu() {
        if (mainMenu == null) {
            // Popup的高度和起始位置需要减去状态栏的高度
            int statusBarHeight = DeviceUtil.getStatusBarHeight();
            menuStartY = (int)(20 * DeviceUtil.getDeviceDensity()) + statusBarHeight;
            View menuLayout = getLayoutInflater().inflate(R.layout.layout_main_menu, null);
            mainMenu = new MainMenuPopupWindow(MainActivity.this, menuLayout,
                    WindowManager.LayoutParams.FILL_PARENT, DeviceUtil.getScreenHeight()
                            - menuStartY);

            mainMenu.setHandler(mHandler);
        }
        MessageManager.getInstance().msgUnReadNotify = null;
        mainMenu.show(this.findViewById(R.id.main_view), Gravity.RIGHT | Gravity.TOP, 0, menuStartY); // 设置在屏幕中的显示位置
    }

    // add by Lion 捕捉Menu键
    @Override
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (!this.resLoaded) {
            return super.onKeyUp(keyCode, event);
        }
        
     // 去掉私密蒙版 by jackwang 2013.03.12
//        // menu 私密蒙版消失
//		if (secretGuid != null && secretGuid.getVisibility() == View.VISIBLE && indexPage == VAULT_INDEX) {
//			DaoCreator.createConfigDao().setAlreadyShowSecretGuid(true);
//			secretGuid.setVisibility(View.GONE);
//			recycelSecureBitmap(secretGuid);
//			secretGuid = null;
//			return true;
//		}
        
        if (keyCode == KeyEvent.KEYCODE_MENU) {
            // 如果Menu未弹出，则弹出Menu
            if (null == mainMenu || !mainMenu.isShowing()) {
                showMenu();
                // 否则关闭Menu
            } else {
                mainMenu.dismiss();
            }
            return true;
        }
        return super.onKeyUp(keyCode, event);
    }

    @Override
    public void onBackPressed() {
        if (!this.resLoaded) {
        	// 去掉小火箭蒙版 by jackwang 2013.03.12
//            Intent boostSplashIntent = new Intent(MainActivity.this,
//    				SecureService.class);
//            boostSplashIntent
//    				.setFlags(SecureService.BOOST_SPLASH);
//            MainActivity.this.startService(boostSplashIntent);	
            super.onBackPressed();
            return;
        }
        
     // 去掉私密蒙版 by jackwang 2013.03.12
//		// 如果当前为私密页，且出现蒙版，点击返回，蒙版消失
//		if (secretGuid != null && secretGuid.getVisibility() == View.VISIBLE && indexPage == VAULT_INDEX) {
//			DaoCreator.createConfigDao().setAlreadyShowSecretGuid(true);
//			secretGuid.setVisibility(View.GONE);
//			recycelSecureBitmap(secretGuid);
//			secretGuid = null;
//			return;
//		}
        
        // 捕捉回退键，如果当前菜单弹出，则关闭菜单
        if (null != mainMenu && mainMenu.isShowing()) {
            mainMenu.dismiss();
            Message msg = mHandler.obtainMessage();
            msg.what = CHANGE_MSG_NUM;
            mHandler.sendMessage(msg);
            return;
		} else if (!isQuit()) {
			return;
		}
        
        super.onBackPressed();
        
     // 去掉小火箭蒙版 by jackwang 2013.03.12
//        Intent boostSplashIntent = new Intent(MainActivity.this,
//				SecureService.class);
//        boostSplashIntent
//				.setFlags(SecureService.BOOST_SPLASH);
//        MainActivity.this.startService(boostSplashIntent);	
    }
    
    /**
     * 判断是否3秒内连续两次点击退出
     * @return
     */
    private boolean isQuit(){
    	if(System.currentTimeMillis() - quitTime <QUIT_DUR ){
    		mUserInfoDao.setNeedToShowPayResult(false);
    		return true;
    	}else{
    		quitTime = System.currentTimeMillis();
    		ToastUtil.ShowSimpleTextLongToast2(R.string.main_app_quit,R.layout.custom_toast);
    		return false;
    	}
    }

    /**
     * @ClassName: SubViewListener
     * @Description:子页面回调接口
     * @author: Sandro
     * @date: 2012-11-3 下午03:24:02
     */
    public interface SubViewListener {

        /**
         * onShow/onPause 参数：源自滑屏
         */
        public static final int FROM_PAGER = 1;

        /**
         * onShow 参数：源自onResume
         */
        public static final int FROM_RESUME = 2;

        /**
         * onPause 参数：onPause
         */
        public static final int FROM_PAUSE = 3;

        // /**
        // * activity生命周期中的onResume
        // */
        // public void onResume();
        //
        // /**
        // * activity生命周期中的onPause
        // */
        // public void onPause();

        /**
         * activity生命周期中的onDestroy
         */
        public void onDestroy();

        /**
         * 通知当前正在显示的view
         * 
         * @param from
         * @see com.tencent.onesecurity.ui.activity.MainActivity.SubViewListener#FROM_PAGER
         * @see com.tencent.onesecurity.ui.activity.MainActivity.SubViewListener#FROM_PAUSE
         */
        public void onShow(int from);

        /**
         * 当页面离开屏幕是调用
         * 
         * @param from
         * @see com.tencent.onesecurity.ui.activity.MainActivity.SubViewListener#FROM_PAGER
         * @see com.tencent.onesecurity.ui.activity.MainActivity.SubViewListener#FROM_RESUME
         */
        public void onHidden(int from);

        /**
         * 在页面滑动离开到某一范围时（目前为20%）调用
         */
        public void onOutOfPage();
    }

    /**
     * 页卡切换监听
     */
    private class MyOnPageChangeListener implements OnPageChangeListener {

//        private static final float RIGHT_SIDE = 0.2f;

//        private static final float LEFT_SIDE = 0.8f;

        @Override
        public void onPageSelected(int position) {
        }

        @Override
        public void onPageScrolled(int position, float offset, int offsetPixels) {
//            mainTitleLayout.move(position, offset, offsetPixels);
            mainTitleLayout2.move(position, offset, offsetPixels);
//            SubViewListener listener = subViewListeners.get(indexPage);
//
//            if (indexPage == 0) {
//                if (offset > RIGHT_SIDE) {
////                    listener.onOutOfPage(); // del by joy 2012.01.29 三个主页没有用到，暂时注掉
//                }
//            } else if (indexPage == (subViewListeners.size() - 1)) {
//                if (offset != 0 && offset < LEFT_SIDE) {
////                    listener.onOutOfPage(); // del by joy 2013.01.29 三个主页没有用到，暂时注掉
//                }
//            } else if ((position == indexPage && offset > RIGHT_SIDE)
//                    || (position == (indexPage - 1) && offset < LEFT_SIDE)) {
////                listener.onOutOfPage(); // del by joy 2013.01.29 三个主页没有用到，暂时注掉
//            }
        }

        @Override
        public void onPageScrollStateChanged(int status) {

        }

        @Override
        public void onPageChanged(int position) {
            if (indexPage != position) {
                SubViewListener listener = subViewListeners.get(indexPage);
                listener.onHidden(SubViewListener.FROM_PAGER);

                listener = subViewListeners.get(position);
                listener.onShow(SubViewListener.FROM_PAGER);
                
                // add by joy 2013.01.29 有的手机滑倒加速页后会重画私密主页，所以在此处加一个判读处理 start
                if (position == 0) { // 当滑倒加速页的时候
                	if (subViewListeners != null && subViewListeners.size() >=3 && subViewListeners.get(2) !=null)
                		subViewListeners.get(2).onOutOfPage(); // 通知一下私密主页
                }
             // add by joy 2013.01.29 有的手机滑倒加速页后会重画私密主页，所以在此处加一个判读处理 end
                
                // 去掉私密蒙版 by jackwang 2013.03.12
//                // 滑到私密，且没有显示过私密引导页
//				if (!DaoCreator.createConfigDao().alreadyShowSecretGuid() && position == VAULT_INDEX) {
//					DaoCreator.createConfigDao().setAlreadyShowSecretGuid(true);
//					secretGuid = (ImageView) findViewById(R.id.iv_secret_guid);
//					secretGuid.setVisibility(View.VISIBLE);
//					secretGuid.setOnClickListener(new OnClickListener() {
//						@Override
//						public void onClick(View v) {
//							secretGuid.setVisibility(View.GONE);
//							recycelSecureBitmap(secretGuid);
//							secretGuid = null;
//						}
//					});
//				}
//				if(position != VAULT_INDEX && secretGuid != null && secretGuid.getVisibility() == View.VISIBLE){
//					secretGuid.setOnClickListener(null);
//					secretGuid.setVisibility(View.GONE);
//					recycelSecureBitmap(secretGuid);
//					secretGuid = null;
//				}
			}
            indexPage = position;
//            mainTitleLayout.move(position, 0, 0);
//            mainTitleLayout2.move(position, 0, 0);
            
        }
    }
//    /**
//     * 释放私密蒙版
//     */
//    private void recycelSecureBitmap(ImageView iv){
//    	Drawable d = iv.getDrawable();
//    	Bitmap bitmap = ((BitmapDrawable)d).getBitmap(); 
//    	bitmap.recycle();
//    }
    private void initMainTitleLayout() {
//        mainTitleLayout = (MainTitleLayout)findViewById(R.id.main_title_layout);

      tvBooster = (TextView)findViewById(R.id.title_tv_booster);
      tvAntivirus = (TextView)findViewById(R.id.title_tv_antivirus);
      tvVault = (TextView)findViewById(R.id.title_tv_vault);
    	
      mainTitleLayout2 = (MainTitleLayout2)findViewById(R.id.main_title_layout2);
      mainTitleLayout2.setTitlesView(tvBooster, tvAntivirus, tvVault);

      this.tvBooster.setOnClickListener(new MyOnClickListener(BOOST_INDEX));
	  this.tvAntivirus.setOnClickListener(new MyOnClickListener(ANTIVIRUS_INDEX));
	  this.tvVault.setOnClickListener(new MyOnClickListener(VAULT_INDEX));
//        List<MainTitleLayoutModel> modles = new ArrayList<MainTitleLayoutModel>();
//        modles.add(new MainTitleLayoutModel(tvBooster, BOOST_INDEX));
//        modles.add(new MainTitleLayoutModel(tvAntivirus, ANTIVIRUS_INDEX));
//        modles.add(new MainTitleLayoutModel(tvVault, VAULT_INDEX));
//        mainTitleLayout.setMainTitleLayoutModels(modles, DeviceUtil.getScreenWidth());
    }

//    /**
//     * 初始化头标
//     */
//    private void InitTextView() {
//        tvBooster = (TextView)findViewById(R.id.title_tv_booster);
//        tvAntivirus = (TextView)findViewById(R.id.title_tv_antivirus);
//        tvVault = (TextView)findViewById(R.id.title_tv_vault);
//        /** Modified by LionLiu 2012-12-13 增加头标的点击区域范围 begin */
//        findViewById(R.id.title_booster_layout).setOnClickListener(
//                new MyOnClickListener(BOOST_INDEX));
//        findViewById(R.id.title_virus_layout).setOnClickListener(
//                new MyOnClickListener(ANTIVIRUS_INDEX));
//        findViewById(R.id.title_vault_layout)
//                .setOnClickListener(new MyOnClickListener(VAULT_INDEX));
//        /** Modified by LionLiu 2012-12-13 增加头标的点击区域范围 end */
//    }

    /**
     * 头标点击监听
     */
    private class MyOnClickListener implements View.OnClickListener {
        private int index = 0;

        private MyOnClickListener(int i) {
            index = i;
        }

        @Override
        public void onClick(View v) {
            mPager.setCurrentItem(index, true, MAX_SETTLE_DURATION);
        }
    };

//    private class MyOnTitleOnTouchListener implements OnTitleLayoutTouchListener {
//
//        @Override
//        public boolean OnTitleLayoutTouchEvent(MotionEvent ev) {
//            return mPager.onTouchEvent(ev);
//        }
//
//        @Override
//        public boolean OnTitleLayoutInterceptTouchEvent(MotionEvent ev) {
//            return mPager.onInterceptTouchEvent(ev);
//        }
//
//    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
       // joy 在二级页面时主页被杀掉处理 2013.02.19 start
        if (layoutVault == null && mPager == null) {
        	isFromResult = true;
        	return ;
        }
        // joy 在二级页面时主页被杀掉处理 2013.02.19 end
        layoutVault.onActivityResult(requestCode, resultCode, data);
        switch (requestCode) {
		 case PopStackManager.POPSTACK_SETTING_TO_MAIN:
			 mPager.setCurrentItem(2, false);
			break;

		default:
			break;
		}
	
		
    }

    /**
     * 自动检测更新
     * 
     * @Description
     * @version 1.0
     * @author LionLiu
     */
    private void checkUpdate() {
        // 定时检查更新
        long lastUpdateTimeStamp = DaoCreator.createConfigDao().getLastCheckUpdateTime();
        // 24小时检查更新一次 通过SmartConfig 参数配置
        long interval = CoreConfigDao.getInstance().getLongValue(
                CoreConfigDao.SOFTWARE_AUTO_CHECK_INTERVAL);
        if (System.currentTimeMillis() - lastUpdateTimeStamp >= interval) {
            CheckUpdateUtil updateUtil = new CheckUpdateUtil(mHandler);
            updateUtil.checkSoftwareVesrion();
        }
    }

    /**
     * 处理升级
     * 
     * @param activity
     * @param msg
     */
    public void handleUpdate(Message msg) {
        Bundle data = msg.getData();
        int updateType = data.getInt(CheckUpdateUtil.UPDATE_TYPE);
        switch (updateType) {
            // 网络错误
            case LcUtil.ERROR:
                break;
            // 不需要升级
            case LcUtil.NONEED:
                setUpdateIconShown(false);
                break;
            // 强制升级
            case LcUtil.MUSTUPDATE:
                // 选择升级
            case LcUtil.SHOULDUPDATE:
                setUpdateIconShown(true);
                break;
        }
    }

    private void setUpdateIconShown(boolean hasUpdate) {
        if (hasUpdate) {
            DaoCreator.createConfigDao().setVersionBeforeUpdate(PackageUtil.getVersionName());
        } else {
            DaoCreator.createConfigDao().setVersionBeforeUpdate("0");
        }

        setAboutUpdateShow();
    }

    /**
     * 设置MenuBar右侧按钮的图片
     */
    public void setAboutUpdateShow() {
        if (null != menuRightView) {
            ConfigDao dao = DaoCreator.createConfigDao();
            // 如果有更新，或者有新消息
            if (dao.hasNewUpdate() || dao.getNewMsgNum() > 0) {
                // // lynna 测试使用，记得还原
                // if (dao.getNewMsgNum() > 0) {
                menuRightView.setImageResource(R.drawable.sel_img_main_title_menu_new);
            } else {
                menuRightView.setImageResource(R.drawable.sel_img_main_title_menu);
            }
        }
//        if (mUserInfoDao.getUserIsVIP()) {
//            vipImgView.setImageResource(R.drawable.sel_img_main_titile_vip_yellow);
//        } else {
//            vipImgView.setImageResource(R.drawable.sel_img_main_title_vip);
//        }
    }

    /**
     * 根据用户类型，刷新病毒库升级按钮样式
     */
    public void setBtnVirusLibUpdateStyle() {
        if (null != this.layoutAntivirus) {
            this.layoutAntivirus.refreshBtnVirusLibUpdateStyle();
        }
    }

    /**
     * 临时来消息的监听，产生变化
     */
    @Override
    public void onChange(int unReadNum) {
        Message msg = mHandler.obtainMessage();
        msg.what = CHANGE_MSG_NUM;
        mHandler.sendMessage(msg);
    }

    private byte[] getSplashPic() {
    	SplashDao dao = new SplashDao();
    	SplashEntity entity = dao.getSplashtEntity();
    	byte[] splashPic = null;
    	if (entity != null) {
    		//后台下发时间精确到秒
    		long time = System.currentTimeMillis()/1000;
    		if(entity.startTime <= time && time <= entity.endTime) {
        		splashPic = entity.splashPic;
    		}
    	}
    	return splashPic;
    }
    
    private class AppInitThread extends Thread {
        private AppInitThread() {
            super("AppInitThread");
        }

        public void run() {
            long time = System.currentTimeMillis();
            if (FROM_LICENSE.equals(from)) {
                MainApplication.startApplication();
            }
            init();
            // 如果从License过来，需要显示用户教育
            if (FROM_LICENSE.equals(from)) {
                initUserGuide();
            }

            long loadTime = System.currentTimeMillis() - time;
            if (loadTime < TIME_DELAY) {// 保证闪屏的时间
                try {
                    Thread.sleep(TIME_DELAY - loadTime);
                } catch (InterruptedException e) {
                }
            }

            if (mHandler != null) {
                // 如果从License来，需要打开用户教育
                if (FROM_LICENSE.equals(from)) {
                    mHandler.sendEmptyMessage(LOAD_USER_GUIDE);
                    // 否则打开主界面
                } else {
                    mHandler.sendEmptyMessage(FIRST_LOAD_OK);
                }
            }
        }
    }

    @Override
    public void pageChangeNotify(int pageIndex, int pageAction) {
        Message msg = mHandler.obtainMessage(CHANGE_VIEW);
        msg.arg1 = pageIndex;
        msg.arg2 = pageAction;
        mHandler.sendMessage(msg);
    }
    
    

}
