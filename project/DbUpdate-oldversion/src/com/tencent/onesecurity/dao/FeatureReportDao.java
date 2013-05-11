package com.tencent.onesecurity.dao;


/**
 * Feature上报DAO
 * @ClassName: MessageDao
 * @Description:Feature上报的增，删，改，查
 * @author: Tony
 * @date: 2013-01-21 下午11:52:54
 * 
 */
public class FeatureReportDao {
	/** 表名：Message*/
	public static final String TB_FEATURE = "t_feature_report";				// 消息表
	
	public static final String COLUMN_ID = "ID";
	public static final String COLUMN_FEATURE_ID = "FEATURE_ID";
	public static final String COLUMN_FEATURE_COUNT = "FEATURE_COUNT";
	public static final String COLUMN_FEATURE_DATE = "FEATURE_DATE";

}