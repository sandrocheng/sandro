package com.tencent.onesecurity.manager.virus;

import java.util.List;

import com.tencent.onesecurity.dao.VirusWhiteListDao;
import com.tencent.onesecurity.model.ScanResultModel;

/**
 * @ClassName: VirusWhiteListManager
 * @Description:白名單管理
 * @author: lee
 * @date: 2013-2-19 上午10:48:23
 */
public class VirusWhiteListManager {

	private VirusWhiteListDao mWhiteListDao;

	private VirusWhiteListManager() {
		mWhiteListDao = new VirusWhiteListDao();
	}

	private static VirusWhiteListManager instance;

	public static VirusWhiteListManager getInstance() {
		if (instance == null) {
			synchronized (VirusWhiteListManager.class) {
				if (instance == null) {
					instance = new VirusWhiteListManager();
				}
			}
		}
		return instance;
	}
	/**
	 * 查询单个应用
	 * 
	 * @param id
	 * @return
	 */
	public ScanResultModel getResultModel(long id) {
		return mWhiteListDao.getScanResultModel(id);
	}
	

	/**
	 * 获取所有列表
	 * 
	 * @return
	 */
	public List<ScanResultModel> getAll() {
		// List<ScanResultModel> allList = mWhiteListDao.getAll();
		// List<ScanResultModel> resultList = new ArrayList<ScanResultModel>();
		// 判断Path是否存在
		// for (ScanResultModel model : allList) {
		// if (new File(model.path).exists()) {
		// resultList.add(model);
		// } else {
		// // 不存在的应用，从DB中删除
		// delete(model.whiteListId);
		// }
		// }

		return mWhiteListDao.getAll();
	}

	/**
	 * 查询单个应用(根据签名和应用名)
	 * 
	 * @param signature
	 * @param appName
	 * @return
	 */
	public ScanResultModel getResultModel(String signature, String packageName) {
		return mWhiteListDao.getScanResultModel(signature, packageName);
	}

	/**
	 * 插入一个应用
	 * 
	 * @param entity
	 * @return
	 */
	public long insert(ScanResultModel entity) {
		return mWhiteListDao.insert(entity);
	}
	/**
	 * 批量插入
	 * @param modelList
	 * @return
	 */
	public boolean insert(List<ScanResultModel> modelList) {
		return mWhiteListDao.insert(modelList) ;
	}
	
	/**
	 * 删除
	 * 
	 * @param id
	 * @return
	 */
	public boolean delete(long id) {
		return mWhiteListDao.delete(id);
	}

	/**
	 * 批量删除
	 * 
	 * @param allLists
	 * @return
	 */
	public boolean delete(List<ScanResultModel> allLists) {
		return mWhiteListDao.delete(allLists);
	}
	
	/**
	 * 判断数据库中是否存在相同签名和应用名的应用
	 * 
	 * @param signature
	 * @param appName
	 * @return
	 */
	public boolean exists(String signature, String packageName) {
		return getResultModel(signature, packageName) == null ? false : true;
	}

}
