package com.tencent.onesecurity.manager.optimize;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.os.Debug.MemoryInfo;
import android.provider.Settings;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.common.ApplicationConfig;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.CoreConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.model.AppInfoModel;
import com.tencent.onesecurity.model.AppReportEntity;
import com.tencent.onesecurity.usage.winmess.WinmessAppReportManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.optimize.IMemoryHelper;
import com.tencent.tmsecure.module.optimize.OptimizeManager;
import com.tencent.tmsecure.module.optimize.ProcessEntity;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.utils.ScriptHelper;

/**
 * Booster Manager
 * 
 * @ClassName: SystemBoosterManager
 * @Description:封装Booster模块的全部逻辑
 * @author: Jack Wang
 * @date: 2012-10-16 上午9:19:25
 * 
 */
public class SystemBoosterManager {

	public static interface IBoosterListener {
		
		/**
		 * 通知UI获取全部的进程数
		 * @param countOfAllProcess
		 */
		public void notifyGetRunningProcessCount(int countOfAllProcess);
		/**
		 * 取得正在运行的应用，逐个取得中
		 * @param appInfoModel
		 */
		public void notifyGetRunningProcess(AppInfoModel appInfoModel);

		/**
		 * 取得正在运行的应用，取得结束
		 */
		public void notifyGetRunningEnd();

		/**
		 * 关闭正在运行的应用，逐个关闭中
		 * @param appInfoModel
		 * @param countOfClosed
		public void notifyCloseProcess(AppInfoModel appInfoModel, int countOfClosed);
		 */
		
		/**
		 * 通知UI有进程被处理
		 */
		public void notifyManageProcess();

		/**
		 * 加速首页的一键优化和浮窗上的加速按钮关闭正在运行的应用，关闭结束
		 * @param countOfClosed
		 * @param totalRamSizeOfApps
		 */
		public void notifyCloseEnd(int countOfClosed, long totalRamSizeOfApps);
		
		/**
		 * 管理进程画面关闭正在运行的应用，关闭结束
		 * @param countOfClosed
		 * @param totalRamSizeOfApps
		 */
		public void notifyCloseRunningAppEnd(int countOfClosed, long totalRamSizeOfApps);

		/**
		 * 取得有缓存的应用，取得中
		 * @param appInfoModel
		 * @param countOfCacheApps
		 * @param totalCacheSize
		public void notifyGetCacheAppProcess(AppInfoModel appInfoModel, int countOfCacheApps, long totalCacheSize);
		 */
		
		/**
		 * 取得有缓存的应用，取得结束
		 * @param countOfCacheApps
		 * @param totalCacheSize
		public void notifyGetCacheAppEnd(int countOfCacheApps, long totalCacheSize);
		 */
		
		/**
		 * 清除缓存，结束
		public void notifyClearCacheEnd();
		 */
		
		/**
		 * 优化结束
		 */
		public void notifyBoosterEnd();
	}
	
	/** 单例 */
	private static SystemBoosterManager instance = null;
	public IBoosterListener iBoosterListener = null;
	
	/** 操作类型-管理进程画面取得 */
	public static final int MANAGE_TYPE_SHOW = 0;
	/** 操作类型-一键优化关闭 */
	public static final int MANAGE_TYPE_CLOSE = 1;
	/** 操作类型-取得进程数 */
	private static final int MANAGE_TYPE_GET_COUNT = 2;
	
	/** 系统优化管理器 */
	private OptimizeManager mOptimizeManager = null;
	/** 软件管理相关管理器 */
	private SoftwareManager mSoftwareManager = null;
	/** 内存管理器 */
	private IMemoryHelper mMemoryHelper = null;
	
	/** 区别优化主画面当前是执行优化状态(0)还是执行取消优化状态(1) */
	public int booster_do_status = 0;
	/** 没有执行任何优化 */
	public static final int DO_NOTHING = 0;
	/** 优化主画面当前执行优化 */
	public static final int DO_BOOSTER = 1;
	/** 优化主画面当前执行取消优化 */
	public static final int DO_CANCEL = 2;
	
	/** 上次优化时间 */
	private long lastBoostedTime = 0;
	
	/** 内存空闲率 */
	private int mMemoryFreeRate = 0;
	/** 内存使用率 */
	private int mMemoryUsageRate = 0;
	
	/** 用户操作列表即本地白名单 */
	private String mUserOperatedList = null;
	private ConfigDao mConfigDao;

	/** 黑名单 */
	private ArrayList<String> blackList = null;
	
	/** 桌面应用的ShareId名单 */
	private ArrayList<String> launcherShareID = null;
	/** 云端白名单中 */
	private ArrayList<String> cloudWhiteList = null;
	
	/**
	 * Shareid白名单
	 */
	private final String[] SHARD_ID_LIST = { 
		"uid.system",
		"uid.shared",
		"uid.phone",
		"android.media",
		"com.motorola.blur",
		"android.uid.sec.activitywidget"
	};
	
	/**
	 * 后台进程名单
	 */
	private final String[] BACKGROUND_PROCESS_LIST = { 
		":service",
		":remote",
		":push",
		":FriendService",
		":BackgroundFriendService",
		":LocationFriendService",
		":provider"
	};
	
	/**
	 * 私有构造方法
	 */
	private SystemBoosterManager() {
		mOptimizeManager = ManagerCreator.getManager(OptimizeManager.class);
		mSoftwareManager = ManagerCreator.getManager(SoftwareManager.class);
		mMemoryHelper = mOptimizeManager.getMemoryHelper();
		
		mConfigDao = DaoCreator.createConfigDao();
		mUserOperatedList = mConfigDao.getTSUserOperatedAppList();
		lastBoostedTime = mConfigDao.getTSLastBoostedTime();
		
		blackList = new ArrayList<String>();
		loadBlackList();
		cloudWhiteList = new ArrayList<String>();
		loadCloudWhiteList();
		launcherShareID = new ArrayList<String>();
		
		initkillRelatedProc();
	}

	/**
	 * 获得单例的SystemBoosterManager对象
	 * @return
	 */
	public static SystemBoosterManager getInstance() {
		if (instance == null) {
			synchronized (SystemBoosterManager.class) {
				if (instance == null) {
					instance = new SystemBoosterManager();
				}
			}
		}
		return instance;
	}
	
	/**
	 * 获取手机可用内存，单位KB
	 * @return
	 */
	public long getTotalMemory() {
		return mMemoryHelper.getTotalMemery();
	}

	/**
	 * 获取手机可用内存，单位KB
	 * @return
	 */
	public long getFreeMemory() {
		return mMemoryHelper.getFreeMemery();
	}
	
	/**
	 * 获取手机已用内存，单位B
	 * @return
	 */
	public long getUsedMemory() {
		return (mMemoryHelper.getTotalMemery() - mMemoryHelper.getFreeMemery()) * 1024;
	}

	/**
	 * 获取内存空闲率
	 * @return
	 */
	public int getMemoryFreeRate() {
		float freeRate = (getFreeMemory() * 1000 / getTotalMemory()) / 10.0f;
		mMemoryFreeRate = (int) freeRate;
		return mMemoryFreeRate;
	}

	/**
	 * 获取内存使用率
	 * @return
	 */
	public int getMemoryUsageRate() {
		float freeRate = (getFreeMemory() * 1000 / getTotalMemory()) / 10.0f;
		mMemoryUsageRate = 100 - (int) freeRate;
		return mMemoryUsageRate;
	}

	/**
	 * 加速首页的一键优化
	 */
	public void doBooster() {
		// 关闭正在运行的程序。通过SmartConfig 参数配置是否包含系统进程
		boolean containSysApp = true;
		try {
			containSysApp = CoreConfigDao.getInstance().getBooleanValue(CoreConfigDao.ROCKET_IS_CLEAR_SYSTEM_PROCESS);
		} catch (Exception e) {
			
		}
		closeRunningApps(containSysApp, true, false);
		
		// 判断是否点击了取消
		if (booster_do_status == DO_CANCEL) {
			booster_do_status = DO_NOTHING;
			return;
		}

		// 发通知优化结束
		if (iBoosterListener != null) {
			iBoosterListener.notifyBoosterEnd();
			setLastBoostedTime();
		}
		
		booster_do_status = DO_NOTHING;
	}

	/**
	 * 正在运行的应用个数
	 * @param isOnDesk 是否在桌面执行加速，如果在桌面则不关闭所有桌面进程
	 * @return
	 */
	public int countOfRunningApps(boolean isOnDesk) {
		int runningCount = 0;
		
		synchronized (mOptimizeManager) {
			// 通过SmartConfig 参数配置
			boolean containSysApp = true;
			try {
				containSysApp = CoreConfigDao.getInstance().getBooleanValue(CoreConfigDao.ROCKET_IS_CLEAR_SYSTEM_PROCESS);
			} catch (Exception e) {
				
			}
			
			// 获取所有正在运行的进程
			ArrayList<ProcessEntity> runningList = mOptimizeManager.getAllRunningProcess(containSysApp);
			
			if (runningList != null) {
				ArrayList<String> pkgNames = new ArrayList<String>(); // 包名列表，为了去重
				int appCount = runningList.size();
				
				for (int i = 0; i < appCount; i++) {
					ProcessEntity runningEntity = runningList.get(i);
					if (runningEntity == null) {
						continue;
					}
					
					if (isAppShouldKill(MANAGE_TYPE_GET_COUNT, runningEntity, isOnDesk) == false) {
						continue;
					}
					
					// 取得包名
					String pkgName = runningEntity.mPackageName;
					if (pkgName == null) {
						continue;
					}
					if (pkgNames.contains(pkgName)) { // 去重
						continue;
					}
					pkgNames.add(pkgName);
				}
				
				runningCount = pkgNames.size();
				pkgNames.clear();
				pkgNames = null;
				runningList.clear();
				runningList = null;
			}
		}
		return runningCount;
	}

	/**
	 * 显示正在运行的程序
	 * @param containSysApp 是否包含系统进程
	 */
	public void showRunningApps(boolean containSysApp) {
		// 获取所有正在运行的进程
		ArrayList<ProcessEntity> runningList;
		synchronized (mOptimizeManager) {
			runningList = mOptimizeManager.getAllRunningProcess(containSysApp);
		}
		if (runningList == null) {
			if (iBoosterListener != null) {
				iBoosterListener.notifyGetRunningEnd();
			}
			return;
		}
		
		queryAllInputMethods();
		ArrayList<String> pkgNames = new ArrayList<String>(); // 包名列表，为了去重
		int appCount = runningList.size();
		
		for (int i = 0; i < appCount; i++) {
			// 判断是否执行了取消
			if (booster_do_status == DO_CANCEL) {
				pkgNames.clear();
				pkgNames = null;
				runningList.clear();
				runningList = null;
				booster_do_status = DO_NOTHING;
				return;
			}
			
			ProcessEntity runningEntity = runningList.get(i);
			if (runningEntity == null) {
				continue;
			}
			
			if (isAppShouldKill(MANAGE_TYPE_SHOW, runningEntity, false) == false) {
				continue;
			}
			
			// 取得包名
			String pkgName = runningEntity.mPackageName;
			if (pkgName == null) {
				continue;
			}
			
			if (pkgNames.contains(pkgName)) { // 去重(相同包名，不同进程名的app)
				continue;
			}
			
			AppInfoModel appInfoModel = makeModel(runningEntity, MANAGE_TYPE_SHOW);
			// 显示条件3：内存占用值为0的（可能是获取失败的）
			if (appInfoModel.getRamSize() <= 0) {
				continue;
			}
						
			pkgNames.add(pkgName);

			if (iBoosterListener != null) {
				iBoosterListener.notifyGetRunningProcess(appInfoModel);
			}
		}
		
		if (iBoosterListener != null) {
			iBoosterListener.notifyGetRunningEnd();
		}

		pkgNames.clear();
		pkgNames = null;
		runningList.clear();
		runningList = null;
		return;
	}
	
	/**
	 * 关闭正在运行的程序
	 * @param containSysApp 是否包含系统进程
	 * @param isRespondListener 是否响应监听
	 * @param isOnDesk 是否在桌面执行加速，如果在桌面则不关闭所有桌面进程
	 */
	public CloseAppResult closeRunningApps(boolean containSysApp, boolean isRespondListener, boolean isOnDesk) {
		CloseAppResult result = new CloseAppResult();
		result.count = 0;
		result.totalRamSize = 0;
		
		int countOfClosed = 0;
		long totalRamSizeOfApps = 0;
		
		// 获取所有正在运行的进程
		ArrayList<ProcessEntity> runningList;
		synchronized (mOptimizeManager) {
			runningList = mOptimizeManager.getAllRunningProcess(containSysApp);
		}
		if (runningList == null) {
			if (iBoosterListener != null && isRespondListener) {
				iBoosterListener.notifyCloseEnd(countOfClosed, totalRamSizeOfApps);
			}
			return result;
		}
		
		//通知UI进程待处理进程总数，用来绘制处理百分比 by gordon
		if (iBoosterListener != null && isRespondListener) {
			iBoosterListener.notifyGetRunningProcessCount(runningList.size());
		}

		ArrayList<String> pkgNames = new ArrayList<String>(); // 包名列表，为了去重
		int appCount = runningList.size();
		
		ActivityManager activityManager = (ActivityManager)MainApplication.getContext().getSystemService(Context.ACTIVITY_SERVICE);
		
		// 关闭应用时需要判断是否为launcher，所以这里先加载launcher
		queryAllLaunchers();
		queryAllInputMethods();
		
		// 判断是否取得了Root权限
		ConfigDao mConfigDao = DaoCreator.createConfigDao();
		boolean isHasRoot = mConfigDao.getRootPermission();
		
		ArrayList<AppInfoModel> reportList = new ArrayList<AppInfoModel>();
		
		for (int i = 0; i < appCount; i++) {
			// 判断是否执行了取消
			if (booster_do_status == DO_CANCEL) {
				pkgNames.clear();
				pkgNames = null;
				runningList.clear();
				runningList = null;
				
				reportData(reportList);
				return result;
			}
			
			if (iBoosterListener != null && isRespondListener) {
				iBoosterListener.notifyManageProcess();//通知UI有进程被处理
			}
			
			ProcessEntity runningEntity = runningList.get(i);
			if (runningEntity == null) {
				continue;
			}
			
			if (isAppShouldKill(MANAGE_TYPE_CLOSE, runningEntity, isOnDesk) == false) {
				continue;
			}
			
			// 取得包名
			String pkgName = runningEntity.mPackageName;
			if (pkgName == null) {
				continue;
			}
			
			if (pkgNames.contains(pkgName)) { // 去重(相同包名，不同进程名的app)
				continue;
			}
			pkgNames.add(pkgName);
			AppInfoModel appInfoModel = makeModel(runningEntity, MANAGE_TYPE_CLOSE);
			
			boolean isClosed = true;
			try {
				// 关闭逻辑 2：判断某个进程是否要使用rootkill来杀
				boolean isRootKillApp = isRootKill(runningEntity, false);
				if (isRootKillApp) {
					killRelatedProc(pkgName);
					isClosed = mOptimizeManager.closeProcess(pkgName, isHasRoot, false);
				} else {
					activityManager.killBackgroundProcesses(pkgName);
				}
			} catch (NameNotFoundException e) {

			} catch (Exception e) {

			}
			
			if (isClosed) {
				countOfClosed++;
				totalRamSizeOfApps += appInfoModel.getUssRamSize();
				
				reportList.add(appInfoModel);
//				if (iBoosterListener != null && isRespondListener) {
//					iBoosterListener.notifyCloseProcess(appInfoModel, countOfClosed);
//				}
			}

			try {
				Thread.sleep(20);
			} catch (InterruptedException e) {
				
			}
		}

		if (iBoosterListener != null && isRespondListener) {
			iBoosterListener.notifyCloseEnd(countOfClosed, totalRamSizeOfApps);
		}
		
		reportData(reportList);
		
		pkgNames.clear();
		pkgNames = null;
		runningList.clear();
		runningList = null;

		result.count = countOfClosed;
		result.totalRamSize = totalRamSizeOfApps;
		return result;
	}
	
	/**
	 * 关闭正在运行的应用
	 * @param pkgList 应用列表
	 */
	public void closeRunningApps(ArrayList<AppInfoModel> pkgList) {
		int countOfClosed = 0;
		long totalRamSizeOfApps = 0;
		
		queryAllInputMethods();
		ActivityManager activityManager = (ActivityManager)MainApplication.getContext().getSystemService(Context.ACTIVITY_SERVICE);
		ArrayList<AppInfoModel> reportList = new ArrayList<AppInfoModel>();
		
		// 判断是否取得了Root权限
		ConfigDao mConfigDao = DaoCreator.createConfigDao();
		boolean isHasRoot = mConfigDao.getRootPermission();
		
		for (int j = 0; j < pkgList.size(); j++) {
			// 判断是否点击了取消
			if (booster_do_status == DO_CANCEL) {
				booster_do_status = DO_NOTHING;
				reportData(reportList);
				return;
			}

			AppInfoModel appInfoModel = pkgList.get(j);
			String pkgName = appInfoModel.getPkgName();
			
			reportList.add(appInfoModel);
			try {
				synchronized (mOptimizeManager) {
					if (mInputMethodList.contains(pkgName)) {
						activityManager.killBackgroundProcesses(pkgName);
					} else {
						killRelatedProc(pkgName);
						mOptimizeManager.closeProcess(pkgName, isHasRoot, false);
					}
				}
			} catch (NameNotFoundException e) {

			} catch (Exception e) {

			}
			
			countOfClosed++;
			totalRamSizeOfApps += appInfoModel.getUssRamSize();
			
			try {
				Thread.sleep(20);
			} catch (InterruptedException e) {
				
			}
		}
		
		if (iBoosterListener != null) {
			iBoosterListener.notifyCloseRunningAppEnd(countOfClosed, totalRamSizeOfApps);
		}
		
		reportData(reportList);
	}
	
	// 上报关闭进程数据
	private void reportData(final ArrayList<AppInfoModel> reportList) {
		if (reportList == null || reportList.size() == 0) return;
		
		Thread mReportThread = new Thread(new Runnable() {
			@Override
			public void run() {
				int cnt = reportList.size();
				for (int i = 0; i < cnt; i++) {
					AppInfoModel appInfoModel = reportList.get(i);
					// 关闭进程上报统计数据
					WinmessAppReportManager.getInstance().saveBoosterData(appInfoModel.getAppName(), appInfoModel.getPkgName(), AppReportEntity.APP_PHONE_UP);
				}
				reportList.clear();
			}
		}, "ReportCloseAppData");
		mReportThread.start();
	}
	
	private boolean isAppShouldKill(int manageType, ProcessEntity runningEntity, boolean isOnDesk) {
		if (runningEntity == null) {
			return false;
		}
		
		// 取得包名
		String pkgName = runningEntity.mPackageName;
		
		// 排除自己
		if (pkgName == null || pkgName.equals(ApplicationConfig.MY_PACKAGE_NAME)) {
			return false;
		}
		
		// 1：过滤桌面应用
		if (isOnDesk) { // 在桌面上执行加速时（即小火箭、浮窗、桌面小组件等）系统和第三方的桌面应用都不关闭
			if (mLauncherList.contains(pkgName)) {
				return false;
			}
		} else {
			if (mLauncherListOfSystem.contains(pkgName)) {
				return false;
			}
		}
				
		if (manageType == MANAGE_TYPE_GET_COUNT) {
			// 2：优先级小于0的进程（基本为系统进程）
			if (runningEntity.mPriority < 0) {
				return false;
			}
		} else if (manageType == MANAGE_TYPE_CLOSE) {
			// 关闭逻辑分成两部分，此处判断某个进程是否要杀
			// 1：过滤桌面（之前发现某些桌面用restartpackage都会造成重启，所以决定不杀）如上
			
			// 2：过滤用户设置的白名单
			if (isUserOperatedWhiteListApp(pkgName)) {
				return false;
			}
			
			// 3：过滤对外合作的临时忽略名单（目前只有QQ浏览器）（主线的逻辑，国际版没有。）
			
			// 4：过滤特殊权限应用（这个是用来过滤壁纸的）
			if (isWallPaperApp(pkgName)) {
				return false;
			}
			
			// 5：过滤跟桌面有相同ShareId的应用（这一类的应用，某些被restartpackage的时候有可能会造成桌面重启，故不杀）
			if (isSameShardIdWithLauncher(pkgName)) {
				return false;
			}
			
			// 6：优先级小于0的进程（基本为系统进程）
			if (runningEntity.mPriority < 0) {
				return false;
			}
		} else if (manageType == MANAGE_TYPE_SHOW) {
			// 2：优先级小于0的进程（基本为系统进程）
			if (runningEntity.mPriority < 0) {
				return false;
			}
		}
		
		return true;
	}
	
	/**
	 * 关闭逻辑 2：判断某个进程是否要使用rootkill来杀
	 * @param runningEntity
	 * @param isJudgeForShow
	 * @return
	 */
	private boolean isRootKill(ProcessEntity runningEntity, boolean isJudgeForShow) {
		if (runningEntity == null) {
			return false;
		}
		
		// 取得包名
		String pkgName = runningEntity.mPackageName;
		if (pkgName == null) {
			return false;
		}
		
//		AppEntity appEntity = getAppEntity(pkgName, AppEntity.FLAG_APP_INFO);
		
		// 0:如果是输入法，返回false
		if (mInputMethodList.contains(pkgName)) {
//			Log.i("SystemBoosterManager", "rootkill--0--mPriority:" + runningEntity.mPriority + "   mPriorityGroup:" + runningEntity.mPriorityGroup + "   appName:" + appEntity.getAppName() + "   pkgName:" + pkgName);
			return false;
		}
		
		// 1:用户手动勾选的应用，返回true
		if (isJudgeForShow == false) {
			if (mUserOperatedList.contains(pkgName)) {
				if (isUserSelectedApp(pkgName)) {
//					Log.i("SystemBoosterManager", "rootkill--1--mPriority:" + runningEntity.mPriority + "   mPriorityGroup:" + runningEntity.mPriorityGroup + "   appName:" + appEntity.getAppName() + "   pkgName:" + pkgName);
					return true;
				}
			}
		}
		
		// 2:如果是在黑名单内，返回true
		if (blackList.contains(pkgName)) {
//			Log.i("SystemBoosterManager", "rootkill--2--mPriority:" + runningEntity.mPriority + "   mPriorityGroup:" + runningEntity.mPriorityGroup + "   appName:" + appEntity.getAppName() + "   pkgName:" + pkgName);
			return true;
		}
		
		// 3:如果是优先级所在组小于等于2，返回false
		if (runningEntity.mPriorityGroup <= 2) {
//			Log.i("SystemBoosterManager", "not--rootkill--3--mPriority:" + runningEntity.mPriority + "   mPriorityGroup:" + runningEntity.mPriorityGroup + "   appName:" + appEntity.getAppName() + "   pkgName:" + pkgName);
			return false;
		}

		// 4:如果是拥有指定Shareid，返回false
		// 【指定Shareid】指：系统的一些关键进程，杀掉它们会引起其他程序被杀。
		if (isSystemKeyProcess(pkgName)) {
//			Log.i("SystemBoosterManager", "not--rootkill--4--mPriority:" + runningEntity.mPriority + "   mPriorityGroup:" + runningEntity.mPriorityGroup + "   appName:" + appEntity.getAppName() + "   pkgName:" + pkgName + "  " + runningEntity.mProcessName);
			return false;
		}

		// 5:是否后台进程（进程名带有“:push”等），返回false
		if (isBackgroundProcess(runningEntity.mProcessName)) {
//			Log.i("SystemBoosterManager", "not--rootkill--5--mPriority:" + runningEntity.mPriority + "   mPriorityGroup:" + runningEntity.mPriorityGroup + "   appName:" + appEntity.getAppName() + "   pkgName:" + pkgName + "  " + runningEntity.mProcessName);
			return false;
		}
		
		// 6:是否云名单内进程，返回false
		if (cloudWhiteList.contains(pkgName)) {
//			Log.i("SystemBoosterManager", "not--rootkill--6--mPriority:" + runningEntity.mPriority + "   mPriorityGroup:" + runningEntity.mPriorityGroup + "   appName:" + appEntity.getAppName() + "   pkgName:" + pkgName);
			return false;
		}
		
//		Log.i("SystemBoosterManager", "rootkill--7--mPriority:" + runningEntity.mPriority + "   mPriorityGroup:" + runningEntity.mPriorityGroup + "   appName:" + appEntity.getAppName() + "   pkgName:" + pkgName);
		return true;
	}
	
	/**
	 * 是否为系统关键进程
	 * @param pkgName
	 * @return
	 */
	private boolean isSystemKeyProcess(String pkgName) {
		String appShareId = getShareUserId(pkgName);
		if (appShareId != null && appShareId.length() > 0) {
			for (String shareId : SHARD_ID_LIST) {
				if (appShareId.contains(shareId)) {
//					Log.i("SystemBoosterManager", "pkgName:" + pkgName + "   sharedID:" + appShareId);
					return true;
				}
			}
		}

		return false;
	}
	
	/**
	 * 是否和桌面有相同的ShareId
	 * @param pkgName
	 * @return
	 */
	private boolean isSameShardIdWithLauncher(String pkgName) {
		String appShareId = getShareUserId(pkgName);
		if (appShareId != null && appShareId.length() > 0) {
			if (launcherShareID.contains(appShareId)) {
				return true;
			}
		}

		return false;
	}
	
	/**
	 * 取得指定应用的ShareId
	 * @param pkgName
	 * @return
	 */
	private String getShareUserId(String pkgName) {
		try {
			if (mPackageManager == null) {
				mPackageManager = MainApplication.getContext().getPackageManager();
			}
			PackageInfo packageinfo = mPackageManager.getPackageInfo(pkgName, PackageManager.GET_PERMISSIONS);
			// 不用SDK接口，自己实现取得应用的权限
			//String[] permission = packageinfo.requestedPermissions;
			
			return packageinfo.sharedUserId;
		} catch (Exception e) {
			return "";
		}
	}
	
	/**
	 * 判断是否是后台进程（进程名带有“:push”等）
	 * @param processName
	 * @return
	 */
	private boolean isBackgroundProcess(String processName) {
		if (processName != null) {
			for (String key : BACKGROUND_PROCESS_LIST) {
				if (processName.contains(key)) {
//					Log.i("SystemBoosterManager", "processName:" + processName + "   key:" + key);
					return true;
				}
			}
		}

		return false;
	}
	
	/**
	 * 生成应用的model
	 * @param runningEntity
	 * @param manageType
	 * @return
	 */
	private AppInfoModel makeModel(ProcessEntity runningEntity, int manageType) {
		AppInfoModel appInfoModel = new AppInfoModel();
		String pkgName = runningEntity.mPackageName;
		if (pkgName == null) {
			return appInfoModel;
		}
		appInfoModel.setPkgName(pkgName);

		if (manageType == MANAGE_TYPE_SHOW) { // 管理进程画面显示时需要取得更多信息
			// 根据包名获取应用程序的icon
			AppEntity appEntity = getAppEntity(pkgName, AppEntity.FLAG_APP_INFO|AppEntity.FLAG_ICON);
			if (appEntity == null) {
				appInfoModel.setAppName(pkgName);
				appInfoModel.setIcon(null);
			} else {
				appInfoModel.setAppName(appEntity.getAppName());
				appInfoModel.setIcon(appEntity.getIcon());
			}
			
			// 建议结束提示
			boolean bAdvise = isRootKill(runningEntity, true);
			appInfoModel.setAdviseClose(bAdvise);
			
			if (mUserOperatedList.contains(pkgName)) {
				if (isUserSelectedApp(pkgName)) {
					// 用户操作过的选中状态
					appInfoModel.setSelected(true);
				} else {
					// 用户操作过的未选中状态
					appInfoModel.setSelected(false);
				}
			} else {
				// 用户未操作过的并且符合rootkill逻辑的默认勾选
				if (bAdvise) {
					appInfoModel.setSelected(true);
				} else {
					appInfoModel.setSelected(false);
				}
			}
		} else {
			// 根据包名获取应用程序的信息
			// 标志位FLAG_APP_INFO： 包名、应用程序名、是否为系统应用
			AppEntity appEntity = getAppEntity(pkgName, AppEntity.FLAG_APP_INFO);
			if (appEntity == null) {
				appInfoModel.setAppName(pkgName);
			} else {
				appInfoModel.setAppName(appEntity.getAppName());
			}
		}
		
		long[] appSize = getAppRamSize(pkgName);
		appInfoModel.setRamSize(appSize[0]);
		appInfoModel.setUssRamSize(appSize[1]);
		
		return appInfoModel;
	}
	
	/**
	 * 取得进程的内存占用大小
	 * @param pkgName 包名
	 * @return
	 */
	private long[] getAppRamSize(String pkgName) {
		// 程序占用的内存值应该用PSS来显示，系统也是这样的。
		// 但是我们把进程杀死以后，并不能真正释放那么多内存，我们能释放的，只有USS那么多
		long pssRamSize = 0; // PSS用于显示
		long ussRamSize = 0; // USS用户后台计算逻辑
		long[] returnSize = new long[2];
		
		try {
			MemoryInfo[] memoryInfo = mMemoryHelper.getRamSize(new String[] {pkgName});
			if (memoryInfo != null && memoryInfo.length > 0) {
				for (int j = 0; j < memoryInfo.length; j++) {
					pssRamSize += memoryInfo[j].getTotalPss() * 1024l;
					ussRamSize += memoryInfo[j].getTotalPrivateDirty() * 1024l;
				}
			}
		} catch (Exception e) {
			
		}
		
		returnSize[0] = pssRamSize;
		returnSize[1] = ussRamSize;
		return returnSize;
	}

	/**
	 * 根据包名取得AppEntity对象
	 * @param pkgName 包名
	 * @param flag 标志位
	 * @return
	 */
	public AppEntity getAppEntity(String pkgName, int flag) {
		// 根据包名获取应用程序的信息
		return mSoftwareManager.getAppInfo(pkgName, flag);
	}

	/**
	 * 判断指定的包名是否在本地操作列表（即本地白名单）中
	 * @param pkgName 包名
	 * @return
	 */
	private boolean isUserOperatedWhiteListApp(String pkgName) {
		if (!mUserOperatedList.contains(pkgName)) {
			return false;
		}
		
		return !isUserSelectedApp(pkgName);
	}
	
	private boolean isUserSelectedApp(String pkgName) {
		int index = mUserOperatedList.indexOf(pkgName);
		if (-1 != index) {
			String tempStr = mUserOperatedList.substring(index);
			String target = tempStr.substring(tempStr.indexOf(",") + 1, tempStr.indexOf(";"));
			if ("0".equals(target.trim())) {
				return false;
			} else {
				return true;
			}
		} else {
			return false;
		}
	}
	
	/**
	 * 判断是否是壁纸类应用
	 * @param pkgName
	 * @return
	 */
	private boolean isWallPaperApp(String pkgName) {
		AppEntity appEntityPermission = getAppEntity(pkgName, AppEntity.FLAG_PERMISSIONS);
		if (appEntityPermission == null) {
			return false;
		}
		String[] permissions = appEntityPermission.getPermissions();
		if (permissions != null && permissions.length > 0) {
			ArrayList<String> list = new ArrayList<String>();
			list.addAll(Arrays.asList(permissions));
			if (list.contains("android.permission.BIND_WALLPAPER")) {
				return true;
			}
		}
		return false;
	}
	
	/**
	 * 根据画面列表中的checkbox状态更新本地操作列表（即本地白名单）
	 * @param pkgName 包名
	 * @param isChecked 是否选中
	 */
	public void updateUserOperatedWhiteList(String pkgName, boolean isChecked) {
		StringBuffer replacement = new StringBuffer();
		if (isChecked) {
			replacement.append(pkgName).append(",").append("1");
		} else {
			replacement.append(pkgName).append(",").append("0");
		}
		int index = mUserOperatedList.indexOf(pkgName);
		if (-1 != index) {
			String tempStr = mUserOperatedList.substring(index);
			String target = tempStr.substring(0, tempStr.indexOf(";"));
			mUserOperatedList = mUserOperatedList.replace(target,
					replacement.toString());
		} else {
			StringBuffer stringBuffer = new StringBuffer(mUserOperatedList);
			stringBuffer.append(replacement.append(";"));
			mUserOperatedList = stringBuffer.toString();
		}
		mConfigDao.setTSUserOperatedAppList(mUserOperatedList);
	}

	/**
	 * 是否需要进行优化 ,30秒内不需要清理两次
	 */
	private final long INTERVALTIOME = 30000;

	public boolean isNeedBoost() {
		boolean isneedupdate = false;
		if (lastBoostedTime != 0) {
			long currentTime = System.currentTimeMillis();
			if (currentTime < lastBoostedTime) {
				isneedupdate = true;
			} else {
				if ((currentTime - lastBoostedTime) > INTERVALTIOME) {
					isneedupdate = true;
				} else {
					isneedupdate = false;
				}
			}
		} else {
			isneedupdate = true;
		}
		return isneedupdate;
	}

	/**
	 * 加速画面分数显示时长。
	 * 加速后30秒之内显示分数。30秒之后显示go
	 */
	
	//分数画面最短显示时间，防止分数画面一闪而过
	public final static int MINDISPLAYTIME = 3000;
	public int getBoostTimer() {
		int timer = 0;
		if (lastBoostedTime != 0) {
			long currentTime = System.currentTimeMillis();
			if (currentTime < lastBoostedTime) {
				timer = 0;
			} else {
				if ((currentTime - lastBoostedTime) > INTERVALTIOME) {
					timer = 0;
				} else {
					timer = (int) (INTERVALTIOME - (currentTime - lastBoostedTime));
					if (timer < 0) {
						timer = 0;
					}
				}
			}
		} else {
			timer = 0;
		}

		if (timer < MINDISPLAYTIME) {
			timer = MINDISPLAYTIME;
		}
		return timer;
	}

	/**
	 * 内存预警阀值
	 */
	public void updateDeskAssistanceRamUseageWarningPercentage() {
		long freeMemory = getFreeMemory();
		long totalMemory = getTotalMemory();
		long usedMemory = totalMemory - freeMemory;
		
		if (freeMemory <= 0 || totalMemory <= 0 || usedMemory <= 0) {
			return;
		}

		// 每次加速完成后，动态计算阀值：
		// 计算值=加速后占用内存+（加速后内存剩余值/3）*2，若计算值小于85%，则阀值设定为85%，否则设定为计算值
		int rate = (int) (100 * (usedMemory + (freeMemory / 3 * 2)) / totalMemory);
//		if (rate < ConfigDao.KDefaultDeskAssistanceRamUseageWarningPercentage)
//			rate = ConfigDao.KDefaultDeskAssistanceRamUseageWarningPercentage;
//		if (rate > 0 && rate < 100) {
//			config.setDeskAssistanceRamUseageWarningPercentage(rate);
//		}
		
		// 通过SmartConfig 参数配置
		ConfigDao config = DaoCreator.createConfigDao();
		int threshold = config.getDefaultDeskAssistanceRamUseageWarningPercentage();
		try {
			threshold = (int)CoreConfigDao.getInstance().getLongValue(CoreConfigDao.ROCKET_MEMORY_WARN_VALUE);
		} catch (Exception e) {
			
		}
		
		if (rate < threshold) {
			rate = threshold;
		}
		if (rate > 0 && rate < 100) {
			config.setDeskAssistanceRamUseageWarningPercentage(rate);
		}
	}

	/**
	 * 一键优化完毕，更新优化时间。与isNeedBoost()联动
	 */
	public void setLastBoostedTime() {
		lastBoostedTime = System.currentTimeMillis();
		mConfigDao.setTSLastBoostedTime(lastBoostedTime);
	}

	/**
	 * 取得上次优化的时间
	 * @return
	 */
//	public String getLastBoostedTime() {
//		long currentTime = System.currentTimeMillis();
//
//		if (lastBoostedTime == 0) {
//			return MainApplication.mContext.getString(R.string.booster_time_tip_never_boosted);
//		}
//
//		if ((currentTime - lastBoostedTime) <= 60000) { // 60 * 1000 一分钟
//			return MainApplication.mContext.getString(R.string.common_just_now);
//		} else if ((currentTime - lastBoostedTime) <= 86400000) { // 24 * 60 *60 * 1000 一天
//			long difference = (System.currentTimeMillis() - lastBoostedTime) / 60000;
//			int hour = (int) (difference / 60);
//			int min = (int) (difference % 60);
//			return (hour > 0 ? hour + " " + MainApplication.mContext.getString(R.string.common_x_hours_ago) : min + " " + MainApplication.mContext.getString(R.string.common_x_mins_ago));
//		} else {
//			Date lastDate = new Date(lastBoostedTime);
//			SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
//			return formatter.format(lastDate);
//		}
//	}
//
//	public long getLastBoostedTimeLong() {
//		return lastBoostedTime;
//	}

	/**
	 * 判断当前显示的apk是否为Luncher
	 * @return
	 */
	public boolean isOnDeskNow() {
		try {
			queryAllLaunchers();
			
			ActivityManager activityManager = (ActivityManager) MainApplication.getContext().getSystemService(Context.ACTIVITY_SERVICE);
			List<RunningTaskInfo> runningTaskInfo = activityManager.getRunningTasks(1);
			String pkgName = "";
			if (runningTaskInfo != null && !runningTaskInfo.isEmpty()) {
				pkgName = runningTaskInfo.get(0).topActivity.getPackageName();
			}
			if (pkgName == null || pkgName.equals("")) {
				return false;
			}
			for (int i = 0; i < mLauncherList.size(); i++) {
				if (mLauncherList.get(i).equals(pkgName)) {
					return true;
				}
			}
		} catch (IndexOutOfBoundsException e) {
			
		} catch (Exception e) {
			
		}
		
		return false;
	}

	private ArrayList<String> mLauncherList = new ArrayList<String>();
	private ArrayList<String> mLauncherListOfSystem = new ArrayList<String>();
	private Intent mQueryIntent = null;
	private PackageManager mPackageManager = null;

	/**
	 * 取得所有Launcher的信息
	 */
	private void queryAllLaunchers() {
		synchronized (mLauncherList) {
			if (mQueryIntent == null) {
				mQueryIntent = new Intent(Intent.ACTION_MAIN);
				mQueryIntent.addCategory(Intent.CATEGORY_HOME);
			}
			
			try {
				if (mPackageManager == null) {
					mPackageManager = MainApplication.getContext().getPackageManager();
				}
				List<ResolveInfo> resultList = mPackageManager.queryIntentActivities(mQueryIntent, 0);
				mLauncherList.clear();
				mLauncherListOfSystem.clear();
				launcherShareID.clear();
				for (int i = 0, j = resultList.size(); i < j; i++) {
					String pkgName = resultList.get(i).activityInfo.packageName;
					mLauncherList.add(pkgName);
					
					if (isSystemApp(resultList.get(i).activityInfo.applicationInfo.flags)) {
						mLauncherListOfSystem.add(pkgName);
						
						String shareID = getShareUserId(pkgName);
						if (shareID != null && shareID.length() > 0) {
							launcherShareID.add(shareID);
						}
					}
				}
			} catch (Exception e) {
				
			}
		}
	}
	
	private ArrayList<String> mInputMethodList = new ArrayList<String>();

	/**
	 * 取得所有输入法的信息
	 */
	private void queryAllInputMethods() {
		synchronized (mInputMethodList) {
			try {
				String strInputMethods = Settings.Secure.getString(MainApplication.getContext().getContentResolver(), Settings.Secure.ENABLED_INPUT_METHODS);
				String[] allInputMethods = strInputMethods.split(":");
				if (allInputMethods != null) {
					int all = allInputMethods.length;
					mInputMethodList.clear();
					
					for (int i = 0; i < all; i++) {
						String[] mInputMethod = allInputMethods[i].split("/.");
						mInputMethodList.add(mInputMethod[0]);
					}
				}
			} catch (Exception e) {
				
			}
		}
	}
	
	/*
	 * 判断是否是系统App
	 */
	private boolean isSystemApp(int flags) {
		boolean flag = false;
		
		if ((flags & ApplicationInfo.FLAG_SYSTEM) != 0) {
			flag = true;
		}
		
		return flag;
	}
	
	public void unRegistIBoosterListener() {
//		this.iBoosterListener = null;
	}

	public void registIBoosterListener(IBoosterListener iBoosterListener) {
		this.iBoosterListener = iBoosterListener;
	}

	/**
	 * 黑名单
	 */
	private void loadBlackList() {
		blackList.add("com.ijinshan.mguard");
		blackList.add("com.netqin.mobileguard");
		blackList.add("com.lbe.security");
		blackList.add("com.anguanjia.safe");
		blackList.add("project.rising");
		blackList.add("com.qihoo360.mobilesafe");
		blackList.add("com.symantec.mobilesecurity");
		blackList.add("com.wsandroid.suite");
		blackList.add("com.antivirus");
		blackList.add("com.drweb");
		blackList.add("Korton.Client");
		blackList.add("com.trustmobi.MobiShield");
		blackList.add("com.eset.ems");
		blackList.add("cmcc.kvpioneer");
		blackList.add("com.qihoo360.mobilesafe.opti.powerctl");
		blackList.add("com.gau.go.launcherex.gowidget.gopowermaster");
		blackList.add("com.antutu.powersaver");
		blackList.add("com.dianxinos.powermanager");
		blackList.add("imoblife.batterybooster");
		blackList.add("com.ijinshan.kbatterydoctor");
		blackList.add("com.d1android.BatteryLower");
		blackList.add("com.zhimahu");
		blackList.add("com.yxlk.taskmanager");
		blackList.add("cn.opad.a.phonoalbumshoushou");
	}
	
	/**
	 * 云端白名单
	 */
	private void loadCloudWhiteList() {
		cloudWhiteList.add("com.towalds.android");
		cloudWhiteList.add("com.tencent.qqphonebook");
		cloudWhiteList.add("com.jbapps.contactpro");
		cloudWhiteList.add("com.dianxinos.contacts");
		cloudWhiteList.add("com.qihoo360.kouxin");
		cloudWhiteList.add("com.snda.tt");
		cloudWhiteList.add("com.lectek.android.ecp");
		cloudWhiteList.add("com.feinno.felio");
		cloudWhiteList.add("com.baidu.kx");
		cloudWhiteList.add("com.tencent.mm");
		cloudWhiteList.add("com.qq.AppService");
		cloudWhiteList.add("com.pica.msn");
		cloudWhiteList.add("cn.com.fetion");
		cloudWhiteList.add("cn.com.fetion7");
		cloudWhiteList.add("com.hy.minifetion");
		cloudWhiteList.add("com.htc.android.worldclock");
		cloudWhiteList.add("com.android.alarmclock");
		cloudWhiteList.add("com.android.deskclock");
		cloudWhiteList.add("com.google.android.deskclock");
		cloudWhiteList.add("com.motorola.blur.alarmclock");
		cloudWhiteList.add("com.motorola.usb");
		cloudWhiteList.add("com.motorola.hiddenmenu");
		cloudWhiteList.add("com.motorola.thumbnailservice");
		cloudWhiteList.add("com.android.mms");
		cloudWhiteList.add("com.spb.shell3d");
		cloudWhiteList.add("com.motorola.widgetapp.weather");
		cloudWhiteList.add("com.motorola.blur.quickcontact");
		cloudWhiteList.add("com.motorola.blur.service.blur");
		cloudWhiteList.add("com.mz.ihome");
		cloudWhiteList.add("com.handcent.nextsms");
		cloudWhiteList.add("com.tencent.qqpim");
		cloudWhiteList.add("com.tencent.powermanager");
	}
	
	private boolean mIskillRelatedProcCanRun = false;
	private void initkillRelatedProc() {
		File f = new File(MainApplication.getContext().getFilesDir() + "/killer");
		if(f.exists()){
			mIskillRelatedProcCanRun = true;
			return;
		}
		
		try {
			SaveIncludedFileIntoFilesFolder(R.raw.killer, "killer", MainApplication.getContext());
		} catch (Exception e) {
			return;
		}
		
		changemod();
		mIskillRelatedProcCanRun = true;
	}
	
	private void killRelatedProc(String pkgName){
		if(mIskillRelatedProcCanRun == false){
			return;
		}
		
		// 判断是否取得了Root权限
		ConfigDao mConfigDao = DaoCreator.createConfigDao();
		if(mConfigDao.getRootPermission()){
			ScriptHelper.runScriptAsRoot(new String[] {MainApplication.getContext().getFilesDir() + "/killer " + pkgName +"/files"});
		}
	}
	
	public void changemod() {
		try {
			String command = "chmod 777 " + MainApplication.getContext().getFilesDir() + "/killer";
			Runtime runtime = Runtime.getRuntime();
			runtime.exec(command);
		} catch (IOException e) {
			
		} catch (Exception e) {
			
		}
	}
	
	public void SaveIncludedFileIntoFilesFolder(int resourceid, String filename, Context ApplicationContext) throws Exception {
		InputStream is = ApplicationContext.getResources().openRawResource(resourceid);
		FileOutputStream fos = ApplicationContext.openFileOutput(filename, Context.MODE_WORLD_READABLE);
		byte[] bytebuf = new byte[1024];
		int read;
		while ((read = is.read(bytebuf)) >= 0) {
			fos.write(bytebuf, 0, read);
		}
		is.close();
		fos.getChannel().force(true);
		fos.flush();
		fos.close();
	}
	
	
	/**
	 * 一键优化后返回优化结果的结构体
	 * @ClassName: closeAppResult
	 * @Description:
	 * @author: Jack Wang
	 * @date: 2012-10-21 上午11:52:34
	 */
	public class CloseAppResult {
		/** 被关闭的应用数 */
		public int count;
		/** 被关闭的应用的内存总和 */
		public long totalRamSize;
	}
}