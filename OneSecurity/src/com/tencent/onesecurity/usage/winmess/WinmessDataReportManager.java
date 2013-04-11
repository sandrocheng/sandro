package com.tencent.onesecurity.usage.winmess;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;


import com.tencent.onesecurity.dao.FeatureReportDao;
import com.tencent.onesecurity.model.FeatureReportEntity;

/**
 * 行为统计管理类 (非线程)行为统计数据 (注意：退出程序的时候需要 调用 destroyAndSave() 进行销毁操作) 进行保存到数据库的机会：
 * 1、数据有变化的时候保存一次 2、调用clean 清理数据之后
 * 
 * @author potatoxu
 * 
 */
public class WinmessDataReportManager {
	/**
	 * 单次获取feature的条数
	 */
	private final int MAX_FEATUER_NUM = 5;
	/**
	 * 行为统计管理实例
	 */
	private static WinmessDataReportManager instance = null;
	/**
	 * 行为统计Dao实例
	 */
	private FeatureReportDao featureReportDao;
	
	private SimpleDateFormat simpleDateFormat;
	
	private WinmessDataReportManager() {
		featureReportDao = new FeatureReportDao();
		simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.CHINA);
	}

	/**
	 * 获取行为统计管理实例
	 * 
	 * @param context
	 * @return 行为统计管理实例
	 */
	public synchronized static WinmessDataReportManager getInstance() {
		if (instance == null) {
			instance = new WinmessDataReportManager();
		}
		
		return instance;
	}
	
	/**
	 * 保存行为统计数据，即时写入数据库
	 * 
	 * @param actionType
	 *            行为类型
	 */
	public void saveActionData(int actionType) {

		long opdate = getOpdate();
		featureReportDao.insertOrUpdataFeature(new FeatureReportEntity(actionType, opdate));
		
	}
	
	public long getOpdate() {
		return Long.valueOf(simpleDateFormat.format(new Date()));
	}
	
	/**
	 * 获取全部统计数据
	 * @return
	 */
	public ArrayList<FeatureReportEntity> getAllData() {
		ArrayList<FeatureReportEntity> featureReportEntitys = null;
		
		String sql = "select " + FeatureReportDao.COLUMN_ID + ", "
							+ FeatureReportDao.COLUMN_FEATURE_ID + ", "
							+ FeatureReportDao.COLUMN_FEATURE_COUNT + ", "
							+ FeatureReportDao.COLUMN_FEATURE_DATE
							+ " FROM " + FeatureReportDao.TB_FEATURE;
		
		featureReportEntitys = featureReportDao.queryReportData(sql, -1);
		return featureReportEntitys;

	}
	
	/**
	 * 获取部分统计数据 长度为 MAX_FEATUER_NUM
	 * @return
	 */
	public ArrayList<FeatureReportEntity> getData() {
		int num = Math.min(MAX_FEATUER_NUM, getReportDataCnt());
		ArrayList<FeatureReportEntity> featureReportEntitys = null;
		
		long lastDate = featureReportDao.getLastDate();
		
		String sql = "select " + FeatureReportDao.COLUMN_ID + ", "
							+ FeatureReportDao.COLUMN_FEATURE_ID + ", "
							+ FeatureReportDao.COLUMN_FEATURE_COUNT + ", "
							+ FeatureReportDao.COLUMN_FEATURE_DATE
							+ " FROM " + FeatureReportDao.TB_FEATURE
							+ " WHERE " + FeatureReportDao.COLUMN_FEATURE_DATE
							+ " = " + lastDate 
							+ " ORDER BY " + FeatureReportDao.COLUMN_ID 
							+ " ASC";
	
		featureReportEntitys = featureReportDao.queryReportData(sql, num);
		return featureReportEntitys;

	}
	
	/**
	 * 清空数据
	 * @param featureReportEntitys
	 * @return
	 */
	public int clearReportData(ArrayList<FeatureReportEntity> featureReportEntitys) {
		if(featureReportEntitys == null || featureReportEntitys.size() <= 0){
			return -1;
		}
		return featureReportDao.deleteData(featureReportEntitys);
	}
	
	/**
	 * 清除所有消息
	 * @return
	 */
	public int clearAllReportData() { 
		return featureReportDao.deleteMessage(null, null);
	}

	/**
	 * 获得未读消息数。
	 * 条件：a.已展示FLG = 1 b.已读FLG = 0;
	 * @return
	 */
	public int getReportDataCnt() {
		int cnt = 0;
		String sql = "select " + FeatureReportDao.COLUMN_ID
							+ " FROM " + FeatureReportDao.TB_FEATURE
							+ " WHERE " + FeatureReportDao.COLUMN_ID + " >= 0";
		cnt = featureReportDao.queryReportDataCnt(sql);
		return cnt;
	}
	
	/**
	 * 当不再使用的时候需要将其销毁
	 */
	public void destroyAndSave() {
		instance = null;
		featureReportDao = null;
	}


}
