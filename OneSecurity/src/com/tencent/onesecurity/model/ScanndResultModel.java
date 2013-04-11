package com.tencent.onesecurity.model;

/**
 * 用于在UI上显示的扫描结果Model
 * 
 * @ClassName: ScanResultModel
 * @Description:用于在UI上显示的扫描结果Model
 * @author: hunt
 * @date: 2012-11-1
 * 
 */
public class ScanndResultModel extends ModelBase {
	private static final long serialVersionUID = -1575655300076170525L;

	// 用于显示的结果类型
	public static final int RESULT_TIPS = 0;
	public static final int RESULT_VIRUS = 1;

	/** 扫描进度 */
	public int progress = 0;

	/** 结果类型（用于显示） 0：提示信息 1：扫描对象（默认） */
	public int resultType = RESULT_VIRUS;
	/** 扫描类型 0：快速扫描（默认） 1：全盘扫描 */
	public int scanType;

	// 详细字段（resultType = RESULT_VIRUS）
	/** 软件名称 */
	public String softName;
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

	// 提示信息（resultType = RESULT_TIPS）
	/** 提示内容 */
	public String tips;
	/** 页面是否选中 */
	public boolean isCheck;

	// 病毒分类标题布局是否已经显示
	public boolean islayTitleShow = false;
	// 杀毒按钮是否已经被点击过
	public boolean isCleared = false;
	// 应用详细信息布局是否已经显示
	public boolean islayDetailShow = false;

	// 应用状态
	public int appState = 0;
	
	// 应用地址
	public int appAddress = 0;
	
	public ScanndResultModel() {
	}
}
