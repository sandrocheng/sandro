package com.tencent.onesecurity.usage.winmess;

import java.util.ArrayList;


import com.tencent.onesecurity.dao.AppReportDao;
import com.tencent.onesecurity.model.AppReportEntity;

/**
 * 行为统计管理类 (非线程)行为统计数据 (注意：退出程序的时候需要 调用 destroyAndSave() 进行销毁操作) 进行保存到数据库的机会：
 * 1、数据有变化的时候保存一次 2、调用clean 清理数据之后
 * 
 * @author potatoxu
 * 
 */
public class WinmessAppReportManager {
	/**
	 * 单次获取feature的条数
	 */
	private final int MAX_FEATUER_NUM = 5;
	/**
	 * 行为统计管理实例
	 */
	private static WinmessAppReportManager instance = null;
	/**
	 * 行为统计Dao实例
	 */
	private AppReportDao appReportDao;
	
	private WinmessAppReportManager() {
		appReportDao = new AppReportDao();
	}

	/**
	 * 获取行为统计管理实例
	 * 
	 * @param context
	 * @return 行为统计管理实例
	 */
	public synchronized static WinmessAppReportManager getInstance() {
		if (instance == null) {
			instance = new WinmessAppReportManager();
		}
		
		return instance;
	}
	
	/**
	 * 保存病毒上报统计数据，即时写入数据库
	 * 
	 *            行为类型
	 */
	public void saveVirusData(String appName, String packageName, int reportType, String virusName, int virusType) {
		AppReportEntity appReportEntity = new AppReportEntity(appName, packageName, reportType, virusName, virusType);
		appReportDao.insertOrUpdata(appReportEntity);
	}
	/**
	 * 保存白名单上报统计数据，即时写入数据库
	 * 
	 * @param actionType
	 *            行为类型
	 */
	public void saveBoosterData(String appName, String packageName, int reportType) {
		AppReportEntity appReportEntity = new AppReportEntity(appName, packageName, reportType);
		appReportDao.insertOrUpdata(appReportEntity);
		
	}
	
	
	/**
	 * 获取部分统计数据 长度为 MAX_FEATUER_NUM
	 * @return
	 */
	public ArrayList<AppReportEntity> getData() {
		int num = Math.min(MAX_FEATUER_NUM, getReportDataCnt());
		ArrayList<AppReportEntity> appReportEntitys = null;
		
		String sql = "select " + "* "
							+ " FROM " + AppReportDao.TB_APP_REPORT
							+ " WHERE " + AppReportDao.COLUMN_REPORT_STATE
							+ " = " + AppReportEntity.REPORT_NO 
							+ " ORDER BY " + AppReportDao.COLUMN_ID 
							+ " ASC";
	
		appReportEntitys = appReportDao.queryReportData(sql, num);
		return appReportEntitys;

	}
	
	/**
	 * 更新数据
	 * @param featureReportEntitys
	 * @return
	 */
	public int updataReportData(ArrayList<AppReportEntity> appReportEntitys) {
		if(appReportEntitys == null || appReportEntitys.size() <= 0){
			return -1;
		}
		return appReportDao.updata(appReportEntitys);
	}
	
	/**
	 * 清除所有消息
	 * @return
	 */
	public int clearAllReportData() { 
		return appReportDao.delete(null, null);
	}

	/**
	 * 获得未读消息数。
	 * 条件：COLUMN_REPORT_STATE = 0 ;
	 * @return
	 */
	public int getReportDataCnt() {
		int cnt = 0;
		String sql = "select " + AppReportDao.COLUMN_ID
							+ " FROM " + AppReportDao.TB_APP_REPORT
							+ " WHERE " + AppReportDao.COLUMN_ID + " >= 0"
							+ " AND " + AppReportDao.COLUMN_REPORT_STATE
							+ " = " + AppReportEntity.REPORT_NO ;
		cnt = appReportDao.queryReportDataCnt(sql);
		return cnt;
	}
	
	/**
	 * 当不再使用的时候需要将其销毁
	 */
	public void destroyAndSave() {
		instance = null;
		appReportDao = null;
	}


}
