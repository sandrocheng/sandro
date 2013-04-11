package com.tencent.onesecurity.model;




/**
 * Feature上报体类
 * @ClassName: FeatureReportEntity
 * @Description:Feature上报实体类
 * @author: TONY
 * @date: 2013-01-21 下午01:34:52
 *
 */
public class FeatureReportEntity {
	
	public FeatureReportEntity() {}
	public FeatureReportEntity(int id ,long date) {
		featureId = id;
		featureDate = date;
	}
	
	/** 主键 */
	public int id = -1;
	/** 后台可以识别的featureID */
	public int featureId = 0;
	/** feature使用时间 */
	public long featureDate = 0;
	
	/**
	 * 该行为次数
	 */
	public int featureCount = 1;
}
