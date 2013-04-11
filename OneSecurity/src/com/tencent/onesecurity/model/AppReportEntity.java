package com.tencent.onesecurity.model;




/**
 * Feature上报体类
 * @ClassName: FeatureReportEntity
 * @Description:Feature上报实体类
 * @author: TONY
 * @date: 2013-01-21 下午01:34:52
 *
 */
public class AppReportEntity {
	public static int REPORT_NO = 0;
	public static int REPORT_OK = 1;
	public static int APP_PHONE_UP = 0;
	public static int APP_WHITE = 1;
	public static int APP_VIRUS = 2;
	public static int APP_VIRUS_TRUST = 3;
	public AppReportEntity() {}
	public AppReportEntity(String appName, String packageName, int reportType) {
		this.appName = appName;
		this.packageName = packageName;
		this.reportType = reportType;
	}
	public AppReportEntity(String appName, String packageName, int reportType,String virusName,int virusType){
		this.appName = appName;
		this.packageName = packageName;
		this.reportType = reportType;
		this.virusName = virusName;
		this.virusType = virusType;
	}
	
	/** 主键 */
	public int id = -1;
	/**  */
	public String appName = "";
	/**  */
	public String packageName = "";
	
	public int reportType = 0;
	
	public String virusName = "";
	
	public int virusType = 0;
	
	public int reportState = REPORT_NO;
	
	@Override
	public boolean equals(Object o) {
		AppReportEntity entity = (AppReportEntity)o;
		if(appName.equals(entity.appName)
				&&packageName.equals(entity.packageName)
				&&reportType == entity.reportType
				&&virusName.equals(entity.virusName)
				&&virusType == entity.virusType){
			return true;
		}
		return super.equals(o);
	}
}
