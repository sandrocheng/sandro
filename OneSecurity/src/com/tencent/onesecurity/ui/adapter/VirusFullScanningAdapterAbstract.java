/**
 * @ClassName: VirusFullScanningAdapterAbstract
 * @Description:应用列表适配器 Adapter 抽象类
 * @author: hunt
 * @date: 2012-11-1
 */
package com.tencent.onesecurity.ui.adapter;

import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;

import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.model.ScanResultModel;
import com.tencent.onesecurity.util.AppIconUtil;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.qscanner.QScanConstants;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;

/**
 * @ClassName: VirusFullScanningAdapterAbstract
 * @Description:应用列表适配器 Adapter 抽象类
 * @author: hunt
 * @date: 2012-11-1
 */
public abstract class VirusFullScanningAdapterAbstract extends BaseAdapter {

	// Drawable iconDrawable = MainApplication.getContext().getResources()
	// .getDrawable(R.drawable.icon_app_or_apk_default);// bg_safebox_bar

	// 数据源
	private ArrayList<ScanResultModel> appList;

	// Layout 填充器
	private LayoutInflater inflater;

	/** 软件管理相关管理器 Manager */
	private SoftwareManager softwareManager = null;

	/**
	 * Manager是否正在扫毒
	 */
	protected abstract boolean isVirusScanManagerScanning();

	/**
	 * 病毒扫描结果适配器构造
	 */
	public VirusFullScanningAdapterAbstract() {
		super();
	}

	/**
	 * 初始化病毒扫描结果适配器
	 */
	public void initVirusFullScanningAdapterAbstract(
			ArrayList<ScanResultModel> thisVirus) {
		this.inflater = LayoutInflater.from(MainApplication.getContext());
		this.appList = thisVirus;

		// 软件管理相关管理器 Manager
		this.softwareManager = ManagerCreator.getManager(SoftwareManager.class);
	}

	@Override
	public int getCount() {
		return this.appList != null ? this.appList.size() : 0;
	}

	@Override
	public Object getItem(int position) {
		return (this.appList != null && !this.appList.isEmpty()) ? this.appList
				.get(position) : null;
	}

	@Override
	public long getItemId(int position) {
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {

		// 列表Item类
		ItemHolder itemHolder = null;

		// Cell 复用
		if (convertView == null) {
			convertView = (LinearLayout) inflater.inflate(
					R.layout.layout_virus_full_sacnning_item, parent, false);
			itemHolder = new ItemHolder(convertView);
			convertView.setTag(itemHolder);
		} else {
			itemHolder = (ItemHolder) convertView.getTag();
		}

		if (itemHolder != null) {

			ScanResultModel scanResult = appList.get(position);

			// APP 包名
			itemHolder.packageName = scanResult.packageName;
			// APK 路径
			itemHolder.path = scanResult.path;
			// 软件扫描位置类型
			itemHolder.softScanAddress = scanResult.softScanAddress;

			if (ScanResultModel.SOFT_SCAN_ADDRESS_SD == itemHolder.softScanAddress) {
				itemHolder.imageAppHead
						.setImageDrawable(AppIconUtil.getApkIcon(itemHolder.path));
			} else {
				itemHolder.imageAppHead
						.setImageDrawable(AppIconUtil.getAppIcon(itemHolder.packageName));
			}

			// 设置 应用分类标题布局 可见性
			this.setLayTitleVisibility(position, scanResult, itemHolder);
			// 设置 应用分类详细布局 可见性
			this.setLayBodyVisibility(position, scanResult, itemHolder);

		}

		return convertView;
	}

	/**
	 * 设置 应用分类标题布局 可见性
	 */
	private void setLayTitleVisibility(int position,
			ScanResultModel scanResult, ItemHolder itemHolder) {

		// 上一个Cell对应的应用分类
		ScanResultModel scanResultLast = null;

		// 不是第一行,可以取得上一个Cell对应的应用分类
		if (0 != position) {
			scanResultLast = appList.get(position - 1);
		}

		// 是第一行 或者 该行 应用分类与上一行对应的 应用分类不同的情况, 该行 应用分类的标题可见
		// 否则该行 应用分类的标题不可见
		if (null == scanResultLast
				|| (null != scanResultLast && scanResultLast.softScanAddress != scanResult.softScanAddress)) {

			String strFormat = "";

			// 应用分类决定标题
			if (ScanResultModel.SOFT_SCAN_ADDRESS_PKG == scanResult.softScanAddress) {

				strFormat = MainApplication.getContext().getResources()
						.getString(R.string.vvcl_local_scanning);

			} else if (ScanResultModel.SOFT_SCAN_ADDRESS_SD == scanResult.softScanAddress) {

				strFormat = MainApplication.getContext().getResources()
						.getString(R.string.vvcl_sd_card_scanning);
			} else if (ScanResultModel.SOFT_SCAN_ADDRESS_CLOUD == scanResult.softScanAddress) {

				if (isVirusScanManagerScanning()) {
					strFormat = MainApplication.getContext().getResources()
							.getString(R.string.vvcl_cloud_scanning);
				} else {
					strFormat = MainApplication.getContext().getResources()
							.getString(R.string.vvcl_cloud_scanned);
				}
			} else if (ScanResultModel.SOFT_SCAN_ADDRESS_INITIALIZATION == scanResult.softScanAddress) {
				strFormat = MainApplication.getContext().getResources()
						.getString(R.string.vvcl_initializing);
			}

			itemHolder.textTitle.setText(strFormat);

			itemHolder.layTitle.setVisibility(View.VISIBLE);

			// 设置该应用分类数据源
			scanResult.islayTitleShow = true;

		} else {
			itemHolder.textTitle.setText("");
			itemHolder.layTitle.setVisibility(View.GONE);
			// 设置 应用分类数据源
			scanResult.islayTitleShow = false;
		}
	}

	/**
	 * 设置 应用分类详细布局 可见性
	 */
	private void setLayBodyVisibility(int position, ScanResultModel scanResult,
			ItemHolder itemHolder) {

		// 云ScanResultModel, 仅显示题头不显示详细内容
		if (ScanResultModel.SOFT_SCAN_ADDRESS_CLOUD == scanResult.softScanAddress
				|| ScanResultModel.SOFT_SCAN_ADDRESS_INITIALIZATION == scanResult.softScanAddress) {
			itemHolder.layBody.setVisibility(View.GONE);
		} else {

			itemHolder.layBody.setVisibility(View.VISIBLE);
			
			
			// lee 20130116 灰度2.0二次修订，增加安装包区分
			String appName = scanResult.softName;
			if (scanResult.softScanAddress == ScanResultModel.SOFT_SCAN_ADDRESS_SD) {
				appName += MainApplication.getContext().getResources().getString(R.string.vvcl_apk_differentiate);
			}
			// 应用名 TextView
			itemHolder.textAppName.setText(appName);
			

			// 应用状态 ImageView
			switch (scanResult.type) {
			// lee 20130116 灰度2.0二次修订 风险类标记为对号
			// case QScanConstants.TYPE_AD_BLOCK:
			// case QScanConstants.TYPE_NOT_OFFICIAL:
			// case QScanConstants.TYPE_RISK:
			// itemHolder.imageAppStates.setImageDrawable(MainApplication
			// .getContext().getResources()
			// .getDrawable(R.drawable.icon_virus_fullscan_unknow));
			// break;
			case QScanConstants.TYPE_VIRUS:
				itemHolder.imageAppStates.setImageDrawable(MainApplication
						.getContext().getResources()
						.getDrawable(R.drawable.icon_virus_fullscan_findvirus));
				break;
			case QScanConstants.TYPE_OK:
			case QScanConstants.TYPE_UNKNOWN:
			case QScanConstants.TYPE_AD_BLOCK: // lee 20130116 灰度2.0二次修订 风险类标记为对号
			case QScanConstants.TYPE_NOT_OFFICIAL:
			case QScanConstants.TYPE_RISK:
				itemHolder.imageAppStates.setImageDrawable(MainApplication
						.getContext().getResources()
						.getDrawable(R.drawable.icon_virus_report_title_bar_no_virus));
				break;
			default:
				break;
			}
		}
	}

	/**
	 * 取得APP Icon
	 */
	private Drawable getAppIcon(String pkgName) {
		
		try {
			// 根据包名获取应用程序的Icon
			AppEntity appEntity = this.softwareManager.getAppInfo(pkgName,
					AppEntity.FLAG_ICON);

			if (null != appEntity) {
				return appEntity.getIcon();
			}

		} catch (Exception e) {
			e.printStackTrace();

			return MainApplication.getContext().getResources()
					.getDrawable(R.drawable.icon_common_question_mark);
		}

		return MainApplication.getContext().getResources()
				.getDrawable(R.drawable.icon_common_question_mark);
	}

	/**
	 * 取得APK Icon
	 */
	public Drawable getApkIcon(String Path) {
		
		// 未安装的程序通过apk文件获取icon
		String apkPath = Path; // apk 文件所在的路径
		String PATH_PackageParser = "android.content.pm.PackageParser";
		String PATH_AssetManager = "android.content.res.AssetManager";

		try {
			Class<?> pkgParserCls = Class.forName(PATH_PackageParser);
			Class<?>[] typeArgs = { String.class };
			Constructor<?> pkgParserCt = pkgParserCls.getConstructor(typeArgs);
			Object[] valueArgs = { apkPath };
			Object pkgParser = pkgParserCt.newInstance(valueArgs);
			DisplayMetrics metrics = new DisplayMetrics();
			metrics.setToDefaults();
			typeArgs = new Class<?>[] { File.class, String.class,
					DisplayMetrics.class, int.class };
			Method pkgParser_parsePackageMtd = pkgParserCls.getDeclaredMethod(
					"parsePackage", typeArgs);
			valueArgs = new Object[] { new File(apkPath), apkPath, metrics, 0 };
			Object pkgParserPkg = pkgParser_parsePackageMtd.invoke(pkgParser,
					valueArgs);
			Field appInfoFld = pkgParserPkg.getClass().getDeclaredField(
					"applicationInfo");
			ApplicationInfo info = (ApplicationInfo) appInfoFld
					.get(pkgParserPkg);
			Class<?> assetMagCls = Class.forName(PATH_AssetManager);
			Object assetMag = assetMagCls.newInstance();
			typeArgs = new Class[1];
			typeArgs[0] = String.class;
			Method assetMag_addAssetPathMtd = assetMagCls.getDeclaredMethod(
					"addAssetPath", typeArgs);
			valueArgs = new Object[1];
			valueArgs[0] = apkPath;
			assetMag_addAssetPathMtd.invoke(assetMag, valueArgs);
			Resources res = MainApplication.getContext().getResources();// edit
			typeArgs = new Class[3];
			typeArgs[0] = assetMag.getClass();
			typeArgs[1] = res.getDisplayMetrics().getClass();
			typeArgs[2] = res.getConfiguration().getClass();
			Constructor<Resources> resCt = Resources.class
					.getConstructor(typeArgs);
			valueArgs = new Object[3];
			valueArgs[0] = assetMag;
			valueArgs[1] = res.getDisplayMetrics();
			valueArgs[2] = res.getConfiguration();
			res = (Resources) resCt.newInstance(valueArgs);
			if (info != null) {
				if (info.icon != 0) {
					Drawable icon = res.getDrawable(info.icon);
					return icon;
				}
			}
		} catch (Exception e) {

			e.printStackTrace();

			return MainApplication.getContext().getResources()
					.getDrawable(R.drawable.icon_common_question_mark);
		}

		return MainApplication.getContext().getResources()
				.getDrawable(R.drawable.icon_common_question_mark);
	}

	/**
	 * 列表Item类
	 * 
	 * @author hunt
	 * @date 1012-10-31
	 */
	private class ItemHolder {

		// 病毒分类标题布局 LinearLayout
		private FrameLayout layTitle = null;
		// 病毒分类详细布局 RelativeLayout
		private RelativeLayout layBody = null;
		// 病毒分类标题 TextView
		private TextView textTitle = null;
		// 应用头像 ImageView
		private ImageView imageAppHead = null;
		// 应用名 TextView
		private TextView textAppName = null;
		// 应用状态 ImageView
		private ImageView imageAppStates = null;

		// APP 包名
		private String packageName = null;
		// APK 路径
		private String path = null;
		// 软件扫描位置类型
		private int softScanAddress = 0;

		/**
		 * 列表Item类构造
		 */
		private ItemHolder(View view) {

			// 病毒分类标题布局 LinearLayout
			this.layTitle = (FrameLayout) view
					.findViewById(R.id.item_virus_full_scanning_lay_title);
			// 病毒分类详细布局 RelativeLayout
			this.layBody = (RelativeLayout) view
					.findViewById(R.id.item_virus_full_scanning_lay_body);
			// 病毒分类标题 TextView
			this.textTitle = (TextView) view
					.findViewById(R.id.item_virus_full_scanning_text_title);

			// 应用头像 ImageView
			this.imageAppHead = (ImageView) view
					.findViewById(R.id.item_virus_full_scanning_image_app_head);
			// 应用名 TextView
			this.textAppName = (TextView) view
					.findViewById(R.id.item_virus_full_scanning_text_app_name);
			// 应用状态 ImageView
			this.imageAppStates = (ImageView) view
					.findViewById(R.id.item_virus_full_scanning_image_state);
		}

	}
}
