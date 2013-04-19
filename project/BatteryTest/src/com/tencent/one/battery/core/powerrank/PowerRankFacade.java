package com.tencent.one.battery.core.powerrank;

import java.util.List;

import android.content.Context;

import com.tencent.one.battery.core.powerrank.model.PowerRankInitModel;
import com.tencent.one.battery.core.powerrank.vo.BatterySipper;

public interface PowerRankFacade {

	/**
	 * 初始化
	 * @param model	  初始化硬件排行的Icon和名称，如果只需要软件排行可以为空
	 * @param context 不可为空
	 * @return
	 */
	public boolean initPowerRank(PowerRankInitModel model, Context context);

	/**
	 * 取得软件排行
	 * 
	 * @return
	 */
	public List<BatterySipper> loadPowerRank();

	/**
	 * 取得硬件排行
	 * 
	 * @return
	 */
	public List<BatterySipper> loadHardWarePowerRank();

}
