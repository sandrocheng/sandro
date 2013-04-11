package com.tencent.onesecurity.model;

import android.graphics.drawable.Drawable;

import com.tencent.onesecurity.util.FileUtil;
import com.tencent.tmsecure.module.qscanner.QScanConstants;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;

/**
 * 用于在UI上显示的扫描结果Model
 * 
 * @ClassName: ScanResultModel
 * @Description:用于在UI上显示的扫描结果Model
 * @author: Jess Yan
 * @date: 2012-10-15 下午03:14:01
 * 
 */
public class ScanResultModel extends ModelBase {//  implements Parcelable
	private static final long serialVersionUID = -1575655300076170525L;

	// 本地Sdcard卡路径
	private static String SDCARD_PATH = FileUtil.getSDCardDir().getPath();
	private static String SDCARD_EXT_PATH = "/mnt/sdcard-ext";
	
	/** 软件扫描位置类型(PAK/SD/CLOUD) */
	public static final int SOFT_SCAN_ADDRESS_PKG = 0;
	public static final int SOFT_SCAN_ADDRESS_SD = 1;
	public static final int SOFT_SCAN_ADDRESS_CLOUD = 2;
	public static final int SOFT_SCAN_ADDRESS_INITIALIZATION = 3;
	
	/**增加病毒类型 9 非现行官方,临时写在这里*/
	public static final int TYPE_NOT_OFFICIAL = 9 ;

	/** 扫描进度  0 - 100的值*/
	public int progress = 0;

	// 详细字段（resultType = RESULT_VIRUS）
	public Drawable appIcon;
	/** 软件名称 */
	public String softName;
	/** 软件扫描位置(PAK/SD/CLOUD) UI用 */
	public int softScanAddress;
	/** 病毒类型 */
	public int type;
	/** 结果建议 */
	public int advice;
	/** 病毒名称 */
	public String virusName;
	/** 病毒描述 */
	public String virusDesc;
	/** 包名 */
	public String packageName;
	/** 文件路径 sd扫描时 */
	public String path;
	public int apkType;
	/** 是否显示Title信息 UI用 */
	public boolean islayTitleShow;
	/**app签名 ,只有白名单中才有*/
	public String signature ;
	/**白名单数据库ID*/
	public long whiteListId ;
	/**加入白名单时间*/
	public long addWhiteListTime ;
	// // 病毒分类标题布局是否已经显示
	// public boolean islayTitleShow = false;
	// 杀毒按钮是否已经被点击过
	public boolean isCleared = false;
	// 应用详细信息布局是否已经显示
	public boolean islayDetailShow = false;
	// 是否被用户加入trust列表（UI上的操作）
	public int trustFlg = 0;	// 0: 未加入白名单 1：已加入白名单 2：用户刚加入白名单，用于处理UI状态
	
	public ScanResultModel() {

	}

	/**
	 * 用QScanResultEntity对象构造UI显示的ScanResultModel
	 * 
	 * @param scanningResult
	 */
	public ScanResultModel(QScanResultEntity scanningResult) {
		
		if (scanningResult.packageName != null && 
				scanningResult.packageName.startsWith(FileUtil.getSDCardDir().toString())) {
			
		}
		// 软件名称
		this.softName = scanningResult.softName;
		// 软件扫描位置(PAK/SD/CLOUD) UI用
		this.softScanAddress = ScanResultModel.SOFT_SCAN_ADDRESS_PKG;
		// 病毒类型
		this.type = scanningResult.type;
		// 结果建议
		this.advice = scanningResult.advice;
		// 病毒名称
		this.virusName = scanningResult.name;
		// 病毒描述
		this.virusDesc = scanningResult.discription;
		// 包名
		this.packageName = scanningResult.packageName;
		// 文件路径 sd扫描时
		this.path = scanningResult.path;
		this.apkType = scanningResult.apkType;
		// 是否显示Title信息 UI用
		this.islayTitleShow = false;
		// 签名
		this.signature = scanningResult.certMd5 ;
		
		// 如果apk在sdcard中，说明是SDCard扫描
		if(isInSdCard(this.path)) {
			this.softScanAddress = ScanResultModel.SOFT_SCAN_ADDRESS_SD;
		}
	}

	/**
	 * 判断给定路径是否在Sdcard中
	 * @return
	 */
	private boolean isInSdCard(String pkgPath) {
		boolean ret = false;
		if (pkgPath == null) return false;
		if (pkgPath.startsWith(SDCARD_PATH) ||
			pkgPath.startsWith(SDCARD_EXT_PATH)) {
			ret = true;
		}
		
		return ret;
	}
	/**
	 * 根据扫描结果，判断是否是问题apk（病毒，高风险，恶意等）
	 * 
	 * @param resultModel
	 * @return
	 */
	public boolean isProblemApk() {
		boolean isProblemApk = false;
		switch (this.type) {
		case QScanConstants.TYPE_AD_BLOCK:
		case QScanConstants.TYPE_NOT_OFFICIAL:
		case QScanConstants.TYPE_RISK:
		case QScanConstants.TYPE_VIRUS:
			isProblemApk = true;
			break;
		case QScanConstants.TYPE_OK:
		case QScanConstants.TYPE_UNKNOWN:
			isProblemApk = false;
			break;
		}

		return isProblemApk;
	}
//	@Override
//	public int describeContents() {
//		return 0;
//	}
//
//	@Override
//	public void writeToParcel(Parcel out, int flags) {
//		out.writeInt(progress);
//		out.writeString(softName);
//	}
//
//	public static final Parcelable.Creator<ScanResultModel> CREATOR = new Parcelable.Creator<ScanResultModel>() {
//		public ScanResultModel createFromParcel(Parcel in) {
//			return new ScanResultModel();
//		}
//
//		public ScanResultModel[] newArray(int size) {
//			return new ScanResultModel[size];
//		}
//	};
}
