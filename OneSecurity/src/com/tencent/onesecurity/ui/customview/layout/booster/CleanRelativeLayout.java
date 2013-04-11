package com.tencent.onesecurity.ui.customview.layout.booster;

import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;

import android.content.Context;
import android.content.pm.PackageStats;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.ui.customview.widget.CustomIconButton;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.util.FileUtil;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.optimize.OptimizeManager;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareConstants;
import com.tencent.tmsecure.module.software.SoftwareManager;

public class CleanRelativeLayout extends RelativeLayout {

	private static final int MSG_TEMP_FILES_CLEANING = 101;
	private static final int MSG_TEMP_FILES_CLEANED = 102;
	private static final int MSG_THUMBNAIL_CLEANING = 103;
	private static final int MSG_THUMBNAIL_CLEANED = 104;
	private static final int MSG_APP_LOG_CLEANING = 105;
	private static final int MSG_APP_LOG_CLEANED = 106;
	private static final int MSG_RESIDUAL_FILES_CLEANING = 107;
	private static final int MSG_RESIDUAL_FILES_CLEANED = 108;
	private static final int MSG_EMPTY_FOLDERS_CLEANING = 109;
	private static final int MSG_EMPTY_FOLDERS_CLEANED = 110;
	private static final int MSG_CACHE_CLEANING = 111;
	private static final int MSG_CACHE_CLEANED = 112;
	private static final int MSG_APK_PACKAGE_CLEANING = 113;
	private static final int MSG_APK_PACKAGE_CLEANED = 114;

	public CleanRelativeLayout(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
	}

	public CleanRelativeLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
	}

	public CleanRelativeLayout(Context context) {
		super(context);
	}

	/** 软件管理相关管理器 */
	private SoftwareManager mSoftwareManager = null;

	/** 系统优化管理器 */
	private OptimizeManager mOptimizeManager = null;

	private LinearLayout ll_temp_files;
	private LinearLayout ll_thumbnail;
	private LinearLayout ll_app_log;
	private LinearLayout ll_residual_files;
	private LinearLayout ll_empty_folders;
	private LinearLayout ll_cache;
	private LinearLayout ll_apk_package;
	private CustomIconButton btn_clear;
	private TextView tv_temp_files;
	private TextView tv_thumbnail;
	private TextView tv_app_log;
	private TextView tv_residual_files;
	private TextView tv_empty_folders;
	private TextView tv_cache;
	private TextView tv_apk_package;
	private TextView tv_temp_files_size;
	private TextView tv_thumbnail_size;
	private TextView tv_app_log_size;
	private TextView tv_residual_files_size;
	private TextView tv_empty_folders_size;
	private TextView tv_cache_size;
	private TextView tv_apk_package_size;
	private CheckBox cb_temp_files;
	private CheckBox cb_thumbnail;
	private CheckBox cb_app_log;
	private CheckBox cb_residual_files;
	private CheckBox cb_empty_folders;
	private CheckBox cb_cache;
	private CheckBox cb_apk_package;
	private ImageView iv_temp_files_cleaning;
	private ImageView iv_thumbnail_cleaning;
	private ImageView iv_app_log_cleaning;
	private ImageView iv_residual_files_cleaning;
	private ImageView iv_empty_folders_cleaning;
	private ImageView iv_cache_cleaning;
	private ImageView iv_apk_package_cleaning;

	private Animation animation;


	private TextView tvScan = null;
	private TextView tvResult = null;

	private boolean canceled = false;//取消扫描/清理
	public static long lastClearAllTime = 0;//上次完成全部清理的时间戳
	private byte mState = 0;// 0未扫描,1 扫描中,2 扫描取消,3 扫描结束,4 清理中,5 清理取消,6 清理结束
	private ArrayList<String> emptyDirectorys = new ArrayList<String>();//空白文件夹路径
	private ArrayList<String> logPaths = new ArrayList<String>();//log文件路径
	private ArrayList<String> apkPaths = new ArrayList<String>();// apk包路径
	private long apkSize = 0;//apk包总大小
	private long logSize = 0;//log文件总大小
	private int emptyDirectorySize = 0;//空白文件夹数量
	private int thumbnailCount = 0;//缩略图数量
	private long thumbnailSize = 0;//缩略图总大小
	private int totalCacheSize = 0; // 所有应用的缓存总数
	private int countOfCacheApps = 0; // 有缓存的应用数
	private int lostDirCount = 0;//失效文件数量
	private long lostDirSize = 0;//失效文件总大小
	private int tmpCount = 0;//临时文件数量
	private long tmpSize = 0;//临时文件总大小
	private long cleanedSize = 0;//已清理文件的总大小

	private Handler mHandler = new Handler() {
		@Override
		public void handleMessage(Message msg) {

			switch (msg.what) {
			case 0:
				String string = (String) msg.obj;
				String scan = getContext().getString(
						R.string.booster_clean_scan);
				tvScan.setText(scan + string);
				tvResult.setText("");
				break;
			case 1:
				resetView();
				break;
			case 2:
				break;
			case 3:
				clearOverSetView();
				break;

			case MSG_TEMP_FILES_CLEANING:
				tv_temp_files.setText(R.string.booster_clean_cleaning);
				tv_temp_files_size.setText("");
				cb_temp_files.setVisibility(View.INVISIBLE);
				iv_temp_files_cleaning.setVisibility(View.VISIBLE);
				iv_temp_files_cleaning.startAnimation(animation);
				break;
			case MSG_TEMP_FILES_CLEANED:
				tv_temp_files.setText(R.string.booster_clean_cleaned);
				tv_temp_files_size.setText("");
				cb_temp_files.setVisibility(View.VISIBLE);
				iv_temp_files_cleaning.setVisibility(View.GONE);
				iv_temp_files_cleaning.clearAnimation();
				break;
			case MSG_THUMBNAIL_CLEANING:
				tv_thumbnail.setText(R.string.booster_clean_cleaning);
				tv_thumbnail_size.setText("");
				cb_thumbnail.setVisibility(View.INVISIBLE);
				iv_thumbnail_cleaning.setVisibility(View.VISIBLE);
				iv_thumbnail_cleaning.startAnimation(animation);
				break;
			case MSG_THUMBNAIL_CLEANED:
				tv_thumbnail.setText(R.string.booster_clean_cleaned);
				tv_thumbnail_size.setText("");
				cb_thumbnail.setVisibility(View.VISIBLE);
				iv_thumbnail_cleaning.setVisibility(View.GONE);
				iv_thumbnail_cleaning.clearAnimation();
				break;
			case MSG_APP_LOG_CLEANING:
				tv_app_log.setText(R.string.booster_clean_cleaning);
				tv_app_log_size.setText("");
				cb_app_log.setVisibility(View.INVISIBLE);
				iv_app_log_cleaning.setVisibility(View.VISIBLE);
				iv_app_log_cleaning.startAnimation(animation);
				break;
			case MSG_APP_LOG_CLEANED:
				tv_app_log.setText(R.string.booster_clean_cleaned);
				tv_app_log_size.setText("");
				cb_app_log.setVisibility(View.VISIBLE);
				iv_app_log_cleaning.setVisibility(View.GONE);
				iv_app_log_cleaning.clearAnimation();
				break;
			case MSG_RESIDUAL_FILES_CLEANING:
				tv_residual_files.setText(R.string.booster_clean_cleaning);
				tv_residual_files_size.setText("");
				cb_residual_files.setVisibility(View.INVISIBLE);
				iv_residual_files_cleaning.setVisibility(View.VISIBLE);
				iv_residual_files_cleaning.startAnimation(animation);
				break;
			case MSG_RESIDUAL_FILES_CLEANED:
				tv_residual_files.setText(R.string.booster_clean_cleaned);
				tv_residual_files_size.setText("");
				cb_residual_files.setVisibility(View.VISIBLE);
				iv_residual_files_cleaning.setVisibility(View.GONE);
				iv_residual_files_cleaning.clearAnimation();
				break;
			case MSG_EMPTY_FOLDERS_CLEANING:
				tv_empty_folders.setText(R.string.booster_clean_cleaning);
				tv_empty_folders_size.setText("");
				cb_empty_folders.setVisibility(View.INVISIBLE);
				iv_empty_folders_cleaning.setVisibility(View.VISIBLE);
				iv_empty_folders_cleaning.startAnimation(animation);
				break;
			case MSG_EMPTY_FOLDERS_CLEANED:
				tv_empty_folders.setText(R.string.booster_clean_cleaned);
				tv_empty_folders_size.setText("");
				cb_empty_folders.setVisibility(View.VISIBLE);
				iv_empty_folders_cleaning.setVisibility(View.GONE);
				iv_empty_folders_cleaning.clearAnimation();
				break;
			case MSG_CACHE_CLEANING:
				tv_cache.setText(R.string.booster_clean_cleaning);
				tv_cache_size.setText("");
				cb_cache.setVisibility(View.INVISIBLE);
				iv_cache_cleaning.setVisibility(View.VISIBLE);
				iv_cache_cleaning.startAnimation(animation);
				break;
			case MSG_CACHE_CLEANED:
				tv_cache.setText(R.string.booster_clean_cleaned);
				tv_cache_size.setText("");
				cb_cache.setVisibility(View.VISIBLE);
				iv_cache_cleaning.setVisibility(View.GONE);
				iv_cache_cleaning.clearAnimation();
				break;
			case MSG_APK_PACKAGE_CLEANING:
				tv_apk_package.setText(R.string.booster_clean_cleaning);
				tv_apk_package_size.setText("");
				cb_apk_package.setVisibility(View.INVISIBLE);
				iv_apk_package_cleaning.setVisibility(View.VISIBLE);
				iv_apk_package_cleaning.startAnimation(animation);
				break;
			case MSG_APK_PACKAGE_CLEANED:
				tv_apk_package.setText(R.string.booster_clean_cleaned);
				tv_apk_package_size.setText("");
				cb_apk_package.setVisibility(View.VISIBLE);
				iv_apk_package_cleaning.setVisibility(View.GONE);
				iv_apk_package_cleaning.clearAnimation();
				break;

			}

			super.handleMessage(msg);
		}
	};
	/**
	 * 构建时调用
	 */
	public void onCreate() {
		mOptimizeManager = ManagerCreator.getManager(OptimizeManager.class);
		mSoftwareManager = ManagerCreator.getManager(SoftwareManager.class);
		initView();
		initData();
	}
	/**
	 * 销毁时调用
	 */
	public void onDestory() {
		onHide();
		initData();
		mOptimizeManager = null;
		mSoftwareManager = null;
		tvScan = null;
		tvResult = null;
		btn_clear = null;

		ll_temp_files = null;
		ll_thumbnail = null;
		ll_app_log = null;
		ll_residual_files = null;
		ll_empty_folders = null;
		ll_cache = null;
		ll_apk_package = null;

		tv_temp_files = null;
		tv_thumbnail = null;
		tv_app_log = null;
		tv_residual_files = null;
		tv_empty_folders = null;
		tv_cache = null;
		tv_apk_package = null;

		tv_temp_files_size = null;
		tv_thumbnail_size = null;
		tv_app_log_size = null;
		tv_residual_files_size = null;
		tv_empty_folders_size = null;
		tv_cache_size = null;
		tv_apk_package_size = null;

		cb_temp_files = null;
		cb_thumbnail = null;
		cb_app_log = null;
		cb_residual_files = null;
		cb_empty_folders = null;
		cb_cache = null;
		cb_apk_package = null;

		iv_temp_files_cleaning = null;
		iv_thumbnail_cleaning = null;
		iv_app_log_cleaning = null;
		iv_residual_files_cleaning = null;
		iv_empty_folders_cleaning = null;
		iv_cache_cleaning = null;
		iv_apk_package_cleaning = null;


		animation = null;
	}
	
	/**
	 * 初始化控件
	 */
	private void initView() {
		tvScan = (TextView) findViewById(R.id.tv_scan);
		tvResult = (TextView) findViewById(R.id.tv_result);
		btn_clear = (CustomIconButton) findViewById(R.id.manage_app_btn_clean);

		ll_temp_files = (LinearLayout) findViewById(R.id.ll_temp_files);
		ll_thumbnail = (LinearLayout) findViewById(R.id.ll_thumbnail);
		ll_app_log = (LinearLayout) findViewById(R.id.ll_app_log);
		ll_residual_files = (LinearLayout) findViewById(R.id.ll_residual_files);
		ll_empty_folders = (LinearLayout) findViewById(R.id.ll_empty_folders);
		ll_cache = (LinearLayout) findViewById(R.id.ll_cache);
		ll_apk_package = (LinearLayout) findViewById(R.id.ll_apk_package);

		tv_temp_files = (TextView) findViewById(R.id.tv_temp_files);
		tv_thumbnail = (TextView) findViewById(R.id.tv_thumbnail);
		tv_app_log = (TextView) findViewById(R.id.tv_app_log);
		tv_residual_files = (TextView) findViewById(R.id.tv_residual_files);
		tv_empty_folders = (TextView) findViewById(R.id.tv_empty_folders);
		tv_cache = (TextView) findViewById(R.id.tv_cache);
		tv_apk_package = (TextView) findViewById(R.id.tv_apk_package);

		tv_temp_files_size = (TextView) findViewById(R.id.tv_temp_files_size);
		tv_thumbnail_size = (TextView) findViewById(R.id.tv_thumbnail_size);
		tv_app_log_size = (TextView) findViewById(R.id.tv_app_log_size);
		tv_residual_files_size = (TextView) findViewById(R.id.tv_residual_files_size);
		tv_empty_folders_size = (TextView) findViewById(R.id.tv_empty_folders_size);
		tv_cache_size = (TextView) findViewById(R.id.tv_cache_size);
		tv_apk_package_size = (TextView) findViewById(R.id.tv_apk_package_size);

		cb_temp_files = (CheckBox) findViewById(R.id.cb_temp_files);
		cb_thumbnail = (CheckBox) findViewById(R.id.cb_thumbnail);
		cb_app_log = (CheckBox) findViewById(R.id.cb_app_log);
		cb_residual_files = (CheckBox) findViewById(R.id.cb_residual_files);
		cb_empty_folders = (CheckBox) findViewById(R.id.cb_empty_folders);
		cb_cache = (CheckBox) findViewById(R.id.cb_cache);
		cb_apk_package = (CheckBox) findViewById(R.id.cb_apk_package);

		iv_temp_files_cleaning = (ImageView) findViewById(R.id.iv_temp_files_cleaning);
		iv_thumbnail_cleaning = (ImageView) findViewById(R.id.iv_thumbnail_cleaning);
		iv_app_log_cleaning = (ImageView) findViewById(R.id.iv_app_log_cleaning);
		iv_residual_files_cleaning = (ImageView) findViewById(R.id.iv_residual_files_cleaning);
		iv_empty_folders_cleaning = (ImageView) findViewById(R.id.iv_empty_folders_cleaning);
		iv_cache_cleaning = (ImageView) findViewById(R.id.iv_cache_cleaning);
		iv_apk_package_cleaning = (ImageView) findViewById(R.id.iv_apk_package_cleaning);

		btn_clear.setEnabled(false);
		btn_clear.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				addGAreport();
				clear();
			}
		});

		ll_temp_files.setEnabled(false);
		ll_thumbnail.setEnabled(false);
		ll_app_log.setEnabled(false);
		ll_residual_files.setEnabled(false);
		ll_empty_folders.setEnabled(false);
		ll_cache.setEnabled(false);
		ll_apk_package.setEnabled(false);
		setOnClickListener(ll_temp_files, cb_temp_files);
		setOnClickListener(ll_thumbnail, cb_thumbnail);
		setOnClickListener(ll_app_log, cb_app_log);
		setOnClickListener(ll_residual_files, cb_residual_files);
		setOnClickListener(ll_empty_folders, cb_empty_folders);
		setOnClickListener(ll_cache, cb_cache);
		setOnClickListener(ll_apk_package, cb_apk_package);

		animation = AnimationUtils.loadAnimation(getContext(),
				R.anim.anim_rotate_forever);
	}

	/**
	 * 初始化数据
	 */
	private void initData() {
		logPaths = new ArrayList<String>();
		logSize = 0;
		tmpCount = 0;
		tmpSize = 0;
		thumbnailCount = 0;
		thumbnailSize = 0;
		emptyDirectorySize = 0;
		emptyDirectorys = new ArrayList<String>();
		lostDirCount = 0;
		lostDirSize = 0;
		totalCacheSize = 0;
		countOfCacheApps = 0;
		canceled = false;
		mState = 0;
		cleanedSize = 0;
	}
	/**
	 * 设置点击事件
	 * @param v
	 * @param cb
	 */
	private void setOnClickListener(View v, final CheckBox cb) {
		v.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				cb.setChecked(!cb.isChecked());
				setClearButton(false);
			}
		});

	}
	/**
	 * 发送扫描缓存的消息
	 */
	private void sendMSG_GetAllMemory() {
		Message msg = mHandler.obtainMessage();
		msg.what = 0;
		msg.obj = getContext().getString(R.string.booster_clean_caches);
		mHandler.sendMessage(msg);
		getCache(SoftwareConstants.GET_ALL_APP);
	}

	/**
	 * 取得有缓存的应用数和所占缓存的总和
	 * 
	 * @param getType
	 *            类 SoftwareConstants: 2:GET_ALL_APP 获取全部应用(包括系统应用、第三方应用)
	 *            1:GET_SYSTEM_APP_ONLY 只获取系统应用 0:GET_THIRD_PARTY_APP_ONLY
	 *            只获取第三方应用
	 */
	public void getCache(final int getType) {

		// 获取已经安装的应用程序的信息 , 标志位FLAG_APP_INFO： 包名、应用程序名、是否为系统应用
		ArrayList<AppEntity> hasCacheApps = mSoftwareManager.getInstalledApp(
				AppEntity.FLAG_APP_INFO, getType);

		if (hasCacheApps != null) {
			int appCount = hasCacheApps.size();

			for (int i = 0; i < appCount; i++) {

				AppEntity appEntity = hasCacheApps.get(i);
				if (appEntity == null) {
					continue;
				}

				PackageStats pStat = mOptimizeManager.getMemoryHelper()
						.getAppPackageStats(appEntity.getPackageName());
				if (pStat == null) {
					continue;
				}
				if (pStat.cacheSize == 0) {
					continue;
				}
				totalCacheSize += pStat.cacheSize;
				countOfCacheApps++;
			}
			hasCacheApps.clear();
			hasCacheApps = null;
		}

	}

	/**
	 * 清除所有应用的缓存
	 */
	private void clearCache() {
		// 清理手机所有缓存文件
		try {
			mOptimizeManager.getMemoryHelper().clearAllCacheData();
		} catch (Exception e) {
		}
	}
	/**
	 * 扫描
	 */
	private void scanning() {
		new Thread(new Runnable() {
			@Override
			public void run() {
				mState = 1;
				scanningDirectorys(Environment.getExternalStorageDirectory()
						.getPath());
				checkEmptyDirectorys();
				getThumbnails();
				getlostDirs();
				getTmps();
				sendMSG_GetAllMemory();
				mState = 3;
				mHandler.sendEmptyMessage(1);
			}
		}, "scanning").start();
	}
	/**
	 * 扫描文件夹
	 * @param path 外置存储路径
	 * @return
	 */
	private boolean scanningDirectorys(String path) {
		File[] files = new File(path).listFiles();
		if (files == null || files.length == 0) {
			Message msg = mHandler.obtainMessage();
			msg.what = 0;
			msg.obj = path;
			mHandler.sendMessage(msg);
			return false;
		}
		ArrayList<String> childDirectorys = new ArrayList<String>();
		ArrayList<String> emptyChildDirectorys = new ArrayList<String>();
		boolean hasFile = false;
		for (File file : files) {
			if (file.isFile()) {
				hasFile = true;
				String fileName = file.getName();
				Message msg = mHandler.obtainMessage();
				msg.what = 0;
				msg.obj = path + "/" + fileName;
				mHandler.sendMessage(msg);
				String name = fileName.toLowerCase();
				if (name != null) {
					if (name.endsWith(".log")) {
						logPaths.add(file.getPath());
						logSize += file.length();
					} else if (name.endsWith(".apk")) {
						apkPaths.add(file.getPath());
						apkSize += file.length();
					}
				}
			} else if (file.isDirectory()) {
				childDirectorys.add(file.getPath());
			}
		}
		boolean childDirectoryHasFile = false;
		for (String childDirectory : childDirectorys) {
			if (scanningDirectorys(childDirectory)) {
				childDirectoryHasFile = true;
			} else {
				emptyChildDirectorys.add(childDirectory);
				emptyDirectorySize++;
			}
		}

		for (String emptyChildDirectory : emptyChildDirectorys) {
			if (hasFile || childDirectoryHasFile) {
				emptyDirectorys.add(emptyChildDirectory);
			}
		}
		childDirectorys.clear();
		emptyChildDirectorys.clear();
		childDirectorys = null;
		emptyChildDirectorys = null;
		if (hasFile) {
			return true;
		}
		return childDirectoryHasFile;
	}
	/**
	 * 删除该目录下的所有内容
	 * @param Path
	 */
	private void deleteFiles(String Path) // 搜索目录
	{
		File[] files = new File(Path).listFiles();
		if (files == null) {
			return;
		}
		for (File file : files) {
			if (!file.canRead()) {
				return;
			}
			if (canceled)
				return;
			FileUtil.delete(file.getPath());
		}
	}
	/**
	 * 获取缩略图文件的路径和大小
	 */
	private void getThumbnails() {
		thumbnailCount = 0;
		thumbnailSize = 0;
		// 缩略图缓存文件夹下的文件
		String thumbnails = Environment.getExternalStorageDirectory()
				+ "/DCIM/.thumbnails";
		File[] files = new File(thumbnails).listFiles();
		if (files == null) {
			return;
		}
		for (File file : files) {
			if (!file.canRead()) {
				return;
			}
			if (file.isFile()) {
				thumbnailCount++;
				thumbnailSize += file.length();
			}
			// FileUtil.delete(file.getPath());//删除文件
		}
		// deleteFiles(thumbnails);
	}
	/**
	 * 获取失效文件的路径和大小
	 */
	private void getlostDirs() {
		lostDirCount = 0;
		lostDirSize = 0;
		// 缩略图缓存文件夹下的文件
		String lostDirs = Environment.getExternalStorageDirectory()
				+ "/LOST.DIR";
		File[] files = new File(lostDirs).listFiles();
		if (files == null) {
			return;
		}
		for (File file : files) {
			if (!file.canRead()) {
				return;
			}
			if (file.isFile()) {
				lostDirCount++;
				lostDirSize += file.length();
			}
			// FileUtil.delete(file.getPath());//删除文件
		}
		// deleteFiles(thumbnails);
	}
	/**
	 * 获取临时文件的数量和大小
	 */
	private void getTmps() {
		tmpCount = 0;
		tmpSize = 0;
		// 缩略图缓存文件夹下的文件
		String tmps = Environment.getExternalStorageDirectory() + "/TMP";
		File[] files = new File(tmps).listFiles();
		if (files == null) {
			return;
		}
		for (File file : files) {
			if (!file.canRead()) {
				return;
			}
			if (file.isFile()) {
				tmpCount++;
				tmpSize += file.length();
			}
			// FileUtil.delete(file.getPath());//删除文件
		}
		// deleteFiles(thumbnails);
	}
	/**
	 * 重新设置控件
	 */
	private void resetView() {
		String file = getContext().getString(R.string.booster_clean_file);
		String size = getContext().getString(R.string.booster_clean_size);
		if (tmpCount > 0) {
			tv_temp_files.setText(file + tmpCount);
			tv_temp_files_size.setText(size + formatSize(tmpSize));
			cb_temp_files.setEnabled(true);
			cb_temp_files.setChecked(true);
			ll_temp_files.setEnabled(true);
		} else {
			tv_temp_files.setText(file + 0);
			tv_temp_files_size.setText(size + "0KB");
			cb_temp_files.setEnabled(false);
			cb_temp_files.setChecked(false);
			ll_temp_files.setEnabled(false);
		}

		if (lostDirCount > 0) {
			tv_residual_files.setText(file + lostDirCount);
			tv_residual_files_size.setText(size + formatSize(lostDirSize));
			cb_residual_files.setEnabled(true);
			cb_residual_files.setChecked(true);
			ll_residual_files.setEnabled(true);
		} else {
			tv_residual_files.setText(file + 0);
			tv_residual_files_size.setText(size + "0KB");
			cb_residual_files.setEnabled(false);
			cb_residual_files.setChecked(false);
			ll_residual_files.setEnabled(false);
		}

		if (thumbnailCount > 0) {
			tv_thumbnail.setText(file + thumbnailCount);
			tv_thumbnail_size.setText(size + formatSize(thumbnailSize));
			cb_thumbnail.setEnabled(true);
			cb_thumbnail.setChecked(true);
			ll_thumbnail.setEnabled(true);
		} else {
			tv_thumbnail.setText(file + 0);
			tv_thumbnail_size.setText(size + "0KB");
			cb_thumbnail.setEnabled(false);
			cb_thumbnail.setChecked(false);
			ll_thumbnail.setEnabled(false);
		}

		int app_logSize = logPaths.size();
		if (app_logSize > 0) {
			tv_app_log.setText(file + app_logSize);
			tv_app_log_size.setText(size + formatSize(logSize));
			cb_app_log.setEnabled(true);
			cb_app_log.setChecked(true);
			ll_app_log.setEnabled(true);
		} else {
			tv_app_log.setText(file + 0);
			tv_app_log_size.setText(size + "0KB");
			cb_app_log.setEnabled(false);
			cb_app_log.setChecked(false);
			ll_app_log.setEnabled(false);
		}

		if (emptyDirectorySize > 0) {
			tv_empty_folders.setText(file + emptyDirectorySize);
			tv_empty_folders_size.setText(size + emptyDirectorySize + "KB");
			cb_empty_folders.setEnabled(true);
			cb_empty_folders.setChecked(true);
			ll_empty_folders.setEnabled(true);
		} else {
			tv_empty_folders.setText(file + 0);
			tv_empty_folders_size.setText(size + "0KB");
			cb_empty_folders.setEnabled(false);
			cb_empty_folders.setChecked(false);
			ll_empty_folders.setEnabled(false);
		}

		if (totalCacheSize > 0) {
			tv_cache.setText(file + countOfCacheApps);
			tv_cache_size.setText(size + formatSize(totalCacheSize));
			cb_cache.setEnabled(true);
			cb_cache.setChecked(true);
			ll_cache.setEnabled(true);
		} else {
			tv_cache.setText(file + 0);
			tv_cache_size.setText(size + "0KB");
			cb_cache.setEnabled(false);
			cb_cache.setChecked(false);
			ll_cache.setEnabled(false);
		}

		int apk_packageSize = apkPaths.size();
		if (apk_packageSize > 0) {
			tv_apk_package.setText(file + apk_packageSize);
			tv_apk_package_size.setText(size + formatSize(apkSize));
			cb_apk_package.setEnabled(true);
			cb_apk_package.setChecked(true);
			ll_apk_package.setEnabled(true);
		} else {
			tv_apk_package.setText(file + 0);
			tv_apk_package_size.setText(size + "0KB");
			cb_apk_package.setEnabled(false);
			cb_apk_package.setChecked(false);
			ll_apk_package.setEnabled(false);
		}

		setClearButton(true);

	}
	/**
	 * 清理垃圾文件
	 */
	private void clear() {
		new Thread(new Runnable() {
			@Override
			public void run() {
				cleanedSize = 0;
				mState = 4;
				mHandler.sendEmptyMessage(2);
				long time = System.currentTimeMillis();
				if (cb_temp_files.isChecked()) {
					if (canceled)
						return;
					mHandler.sendEmptyMessage(MSG_TEMP_FILES_CLEANING);
					String tmps = Environment.getExternalStorageDirectory()
							+ "/TMP";
					deleteFiles(tmps);
					cleanedSize += tmpSize;
					tmpCount = 0;
					tmpSize = 0;
					mHandler.sendEmptyMessage(MSG_TEMP_FILES_CLEANED);
				}
				if (cb_thumbnail.isChecked()) {
					if (canceled)
						return;
					mHandler.sendEmptyMessage(MSG_THUMBNAIL_CLEANING);
					String thumbnails = Environment
							.getExternalStorageDirectory()
							+ "/DCIM/.thumbnails";
					deleteFiles(thumbnails);
					cleanedSize += thumbnailSize;
					thumbnailCount = 0;
					thumbnailSize = 0;
					mHandler.sendEmptyMessage(MSG_THUMBNAIL_CLEANED);
				}
				if (cb_app_log.isChecked()) {
					mHandler.sendEmptyMessage(MSG_APP_LOG_CLEANING);
					for (String logPath : logPaths) {
						if (canceled)
							return;
						FileUtil.delete(logPath);
					}
					cleanedSize += logSize;
					logPaths.clear();
					logSize = 0;
					mHandler.sendEmptyMessage(MSG_APP_LOG_CLEANED);
				}
				if (cb_residual_files.isChecked()) {
					if (canceled)
						return;
					mHandler.sendEmptyMessage(MSG_RESIDUAL_FILES_CLEANING);
					String lostDirs = Environment.getExternalStorageDirectory()
							+ "/LOST.DIR";
					deleteFiles(lostDirs);
					cleanedSize += lostDirSize;
					lostDirCount = 0;
					lostDirSize = 0;
					mHandler.sendEmptyMessage(MSG_RESIDUAL_FILES_CLEANED);
				}
				if (cb_empty_folders.isChecked()) {
					mHandler.sendEmptyMessage(MSG_EMPTY_FOLDERS_CLEANING);
					for (String logPath : emptyDirectorys) {
						if (canceled)
							return;
						FileUtil.delete(logPath);
					}
					cleanedSize += emptyDirectorySize * 1024;
					emptyDirectorys.clear();
					emptyDirectorySize = 0;
					mHandler.sendEmptyMessage(MSG_EMPTY_FOLDERS_CLEANED);
				}
				if (cb_cache.isChecked()) {
					mHandler.sendEmptyMessage(MSG_CACHE_CLEANING);
					if (canceled)
						return;
					clearCache();
					cleanedSize += totalCacheSize;
					totalCacheSize = 0; // 所有应用的缓存总数
					countOfCacheApps = 0; // 有缓存的应用数
					mHandler.sendEmptyMessage(MSG_CACHE_CLEANED);
				}
				if (cb_apk_package.isChecked()) {
					mHandler.sendEmptyMessage(MSG_APK_PACKAGE_CLEANING);
					for (String logPath : apkPaths) {
						if (canceled)
							return;
						FileUtil.delete(logPath);
					}
					cleanedSize += apkSize;
					apkPaths.clear();
					apkSize = 0;
					mHandler.sendEmptyMessage(MSG_APK_PACKAGE_CLEANED);
				}
				long useTime = System.currentTimeMillis() - time;
				if (useTime < 1000) {
					mHandler.sendEmptyMessageDelayed(3, 1000 - useTime);
				} else {
					mHandler.sendEmptyMessage(3);
				}
				if (tmpSize + thumbnailSize + logSize + lostDirSize
						+ emptyDirectorySize <= 0) {
					lastClearAllTime = System.currentTimeMillis();
				}
				mState = 6;
			}
		}).start();
	}
	
	private void addGAreport() {
		GoogleAnalyticsTracker.getInstance().ClickButton("加速", "点击清理", "", 1l);
		if (cb_temp_files.isChecked()) {
			GoogleAnalyticsTracker.getInstance().ClickButton("系统清理统计", "清理Temp File", "", 1l);
		}
		if (cb_thumbnail.isChecked()) {
			GoogleAnalyticsTracker.getInstance().ClickButton("系统清理统计", "清理Thumbnail caches", "", 1l);
		}
		if (cb_app_log.isChecked()) {
			GoogleAnalyticsTracker.getInstance().ClickButton("系统清理统计", "清理APP log", "", 1l);
		}
		if (cb_residual_files.isChecked()) {
			GoogleAnalyticsTracker.getInstance().ClickButton("系统清理统计", "清理Residual files", "", 1l);
		}
		if (cb_empty_folders.isChecked()) {
			GoogleAnalyticsTracker.getInstance().ClickButton("系统清理统计", "清理Empty folders", "", 1l);
		}
		if (cb_cache.isChecked()) {
			GoogleAnalyticsTracker.getInstance().ClickButton("系统清理统计", "清理cache", "", 1l);
		}
		if (cb_apk_package.isChecked()) {
			GoogleAnalyticsTracker.getInstance().ClickButton("系统清理统计", "清理APK Package", "", 1l);
		}

	}
	/**
	 * 清理结束时重新设置控件
	 */
	private void clearOverSetView() {
		if (cb_temp_files.isChecked()) {
			cb_temp_files.setChecked(false);
			cb_temp_files.setEnabled(false);
			tv_temp_files.setText(R.string.booster_clean_cleaned);
			ll_temp_files.setEnabled(false);
		}
		if (cb_thumbnail.isChecked()) {
			cb_thumbnail.setChecked(false);
			cb_thumbnail.setEnabled(false);
			tv_thumbnail.setText(R.string.booster_clean_cleaned);
			ll_thumbnail.setEnabled(false);
		}
		if (cb_app_log.isChecked()) {
			cb_app_log.setChecked(false);
			cb_app_log.setEnabled(false);
			tv_app_log.setText(R.string.booster_clean_cleaned);
			ll_app_log.setEnabled(false);
		}
		if (cb_residual_files.isChecked()) {
			cb_residual_files.setChecked(false);
			cb_residual_files.setEnabled(false);
			tv_residual_files.setText(R.string.booster_clean_cleaned);
			ll_residual_files.setEnabled(false);
		}
		if (cb_empty_folders.isChecked()) {
			cb_empty_folders.setChecked(false);
			cb_empty_folders.setEnabled(false);
			tv_empty_folders.setText(R.string.booster_clean_cleaned);
			ll_empty_folders.setEnabled(false);
		}
		if (cb_cache.isChecked()) {
			cb_cache.setChecked(false);
			cb_cache.setEnabled(false);
			tv_cache.setText(R.string.booster_clean_cleaned);
			ll_cache.setEnabled(false);
		}
		if (cb_apk_package.isChecked()) {
			cb_apk_package.setChecked(false);
			cb_apk_package.setEnabled(false);
			tv_apk_package.setText(R.string.booster_clean_cleaned);
			ll_apk_package.setEnabled(false);
		}
		setClearButton(false);

	}
	/**
	 * 设置Clear按钮 
	 * @param isFirst 是否为第一次设置
	 */
	private void setClearButton(boolean isFirst) {
		int app_logSize = logPaths.size();
		int countSelected = 0;
		long sizeSelected = 0;
		if (cb_temp_files.isChecked()) {
			countSelected += tmpCount;
			sizeSelected += tmpSize;
		}
		if (cb_thumbnail.isChecked()) {
			countSelected += thumbnailCount;
			sizeSelected += thumbnailSize;
		}
		if (cb_app_log.isChecked()) {
			countSelected += app_logSize;
			sizeSelected += logSize;
		}
		if (cb_residual_files.isChecked()) {
			countSelected += lostDirCount;
			sizeSelected += lostDirSize;
		}
		if (cb_empty_folders.isChecked()) {
			countSelected += emptyDirectorySize;
			sizeSelected += emptyDirectorySize * 1024;
		}
		if (cb_cache.isChecked()) {
			countSelected += countOfCacheApps;
			sizeSelected += totalCacheSize;
		}
		if (cb_apk_package.isChecked()) {
			countSelected += apkPaths.size();
			sizeSelected += apkSize;
		}

		int count = tmpCount + lostDirCount + thumbnailCount + app_logSize
				+ emptyDirectorySize + countOfCacheApps + apkPaths.size();

		if (countSelected > 0) {// 选中的清理项
			tvResult.setText(getContext().getString(
					R.string.booster_clean_scan_result, countSelected,
					formatSize(sizeSelected)));
		} else if (cleanedSize > 0) {
			tvResult.setText(getContext().getString(
					R.string.booster_clean_clean_result,
					formatSize(cleanedSize)));
			cleanedSize = 0;
		} else if (count > 0) {// 无选中的清理项 有可清理内容
			tvResult.setText(getContext().getString(
					R.string.booster_clean_scan_result, 0, formatSize(0)));
		} else {
			if (isFirst) {// 第一次进入，显示无需清理
				tvResult.setText(R.string.booster_clean_no_cleaning);
			} else {// 清理后 显示已经清理
				tvResult.setText(R.string.booster_clean_cleaned);
			}
		}

		tvScan.setText("");
		if (countSelected > 0) {
			btn_clear.setEnabled(true);
		} else {
			btn_clear.setEnabled(false);
		}
	}
	/**
	 * 格式化文件的大小 
	 * @param size 文件的大小
	 * @return "1.5KB" 等
	 */
	private String formatSize(long size) {
		// Math.
		String parten = "#.#";
		DecimalFormat decimal = new DecimalFormat(parten);
		if (size < 1024) {
			return size + "B";
		} else if (size < 1024 * 1024) {
			return decimal.format(size / 1024.0) + "KB";
		} else {
			return decimal.format(size / (1024 * 1024.0)) + "MB";
		}
	}
	/**
	 * 检查空白文件夹路径 移除缩略图 临时文件 失效文件的目录
	 */
	private void checkEmptyDirectorys() {
		String thumbnails = Environment.getExternalStorageDirectory()
				+ "/DCIM/.thumbnails";
		String lostDirs = Environment.getExternalStorageDirectory()
				+ "/LOST.DIR";
		String tmps = Environment.getExternalStorageDirectory() + "/TMP";
		emptyDirectorys.remove(thumbnails);
		emptyDirectorys.remove(lostDirs);
		emptyDirectorys.remove(tmps);
	}
	/**
	 * 页面被显示
	 */
	public void onShow() {
		if (System.currentTimeMillis() - lastClearAllTime < 1000 * 30) {
			initData();
			resetView();
		} else if (mState == 0 || mState == 2 || mState == 5) {
			//0未扫描  || 2 扫描取消||5 清理取消
			initData();
			initView();
			scanning();
		}
	}
	/**
	 * 页面被隐藏
	 */
	public void onHide() {
		if (mState == 1) {// 扫描取消
			canceled = true;
			mState = 2;
		} else if (mState == 4) {// 清理取消
			canceled = true;
			mState = 5;
		}
	}
}
