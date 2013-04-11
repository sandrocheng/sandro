package com.tencent.onesecurity.dao;

/**
 * @ClassName: DaoCreator
 * @Description:TODO(这里用一句话描述这个类的作用)
 * @author: lee
 * @date: 2012-10-15 上午09:45:13
 */
public abstract class DaoCreator {

	/**
	 * 生产配置 文件DAO
	 * 
	 * @param context
	 * @return 配置 文件DAO
	 */
	public static ConfigDao createConfigDao() {
		return ConfigDao.getInstance();
	}

	/**
	 * 创建用户信息Dao
	 * 
	 * @return
	 */
	public static UserInfoDao createUserInfoDao() {
		return UserInfoDao.getInstance();
	}
}
