package com.tencent.onesecurity.manager.virus;

import java.util.ArrayList;
import java.util.HashMap;

import com.tencent.onesecurity.manager.virus.VirusScanEngine.IEngineDiscardFinishListener;
import com.tencent.onesecurity.model.ScanResultModel;
import com.tencent.onesecurity.util.Log;

/**
 * 病毒扫描Manager
 * 
 * @ClassName: VirusScanManager
 * @Description:封装病毒扫描模块的全部逻辑
 * @author: Jess Yan
 * @date: 2012-10-11 下午12:02:17
 * 
 */
public class VirusScanManager implements IEngineDiscardFinishListener{

	public static final int HANDLER_USER_UNINSTALLED_APK = 9001; // 用户卸载了一个应用

	// handler 通知标识
	public static final int HANDLER_SCAN_START = 9101; // 开始扫描
	public static final int HANDLER_PACKAGE_SCANNING = 9102; // 包扫描中
	public static final int HANDLER_CLOUD_SCANNING = 9103; // 云查杀
	public static final int HANDLER_CLOUD_ERROR = 9104; // 云查杀错误
	public static final int HANDLER_SDCARD_SCANNING = 9105; // SD card 扫描
	public static final int HANDLER_SCAN_PAUSED = 9106; // 暂停扫描
	public static final int HANDLER_SCAN_CONTINUE = 9107; // 继续扫描
	public static final int HANDLER_SCAN_CANCEL = 9108; // 取消扫描
	public static final int HANDLER_SCAN_FINISH = 9109; // 结束扫描
	public static final int HANDLER_SCANNER_RUNNING = 9110; // 扫描中
	public static final int HANDLER_SCANNER_PREPARING = 9111; // 准备扫描
	public static final int HANDLER_ASK_USER_CLOUD_SCAN = 9112; // 通知UI显示询问用户是否进行云查杀的Dialog
	public static final int HANDLER_JUMP_TO_SCAN_RESULT = 9113; // 跳转到扫毒结果画面

	/** 单例 */
	private static VirusScanManager instance = null;

	/**
	 * 私有构造方法
	 */
	private VirusScanManager() {
		;
	}

	/**
	 * 获得单例的VirusScanManager对象
	 * 
	 * @return
	 */
	public static VirusScanManager getInstance() {
		if (instance == null) {
			synchronized (VirusScanManager.class) {
				if (instance == null) {
					instance = new VirusScanManager();
				}
			}
		}
		return instance;
	}
	
	/** 病毒扫描引擎池  */
	private HashMap<String, VirusScanEngine> virusEngineMap = new HashMap<String, VirusScanEngine>();
	/** 弃用的引擎池  */
	private ArrayList<VirusScanEngine> discardVirusEngineList = new ArrayList<VirusScanEngine>();
	
	/**
	 * 根据一个业务名称（Key）获得一个扫描引擎
	 * @param key
	 * @return
	 */
	public synchronized VirusScanEngine getVirusEngine(String key) {
		if (key == null || "".equals(key)) return null;
		
		VirusScanEngine engine = null;
		
		// 检查是否已经存在key的Engine
		if (virusEngineMap.containsKey(key)) {
			VirusScanEngine existEngine = virusEngineMap.get(key);
			if (existEngine.isRunning()) {
				existEngine.discard();
				
				// 废弃正在执行中的Engine，加入销毁池
				moveEngineToDiscardList(existEngine);
				
				// 从Engine池中移除
				virusEngineMap.remove(key);

				// 创建新的Engine
				engine = createVirusScanEngine(key);
				Log.d("VirusScanEngine", "Create a new virus engine, discard old one.");
			} else {
				// Engine池中有可以再使用的
				engine = existEngine;
			}
		} else {
			// 创建新的Engine
			engine = createVirusScanEngine(key);
		}
		
		// log
		// 输出engine池
		for (Object obj : virusEngineMap.values()) {
			Log.d("VirusScanEngine", "engine maps:" + obj.hashCode());
		}
		// 输出discard池
		for (Object obj : discardVirusEngineList) {
			Log.d("VirusScanEngine", "discard list:" + obj.hashCode());
		}
		
		return engine;
	}
	
	/**
	 * 根据业务名，返回扫描结果
	 * @param key
	 * @return
	 */
	public ArrayList<ScanResultModel> getResult(String key) {
		VirusScanEngine virusScanEngine = virusEngineMap.get(key);
		if (virusScanEngine != null) {
			return virusScanEngine.getScanResult();
		}
		return null;
	}
	
	/**
	 * 移除指定业务名的扫描结果
	 * @param key
	 */
	public void removeResult(String key) {
		VirusScanEngine virusScanEngine = virusEngineMap.get(key);
		if (virusScanEngine != null && virusScanEngine.getScanResult() != null){
			virusScanEngine.getScanResult().remove(key);
		}
	}
	
	/**
	 * 从engine池中移除指定业务的Engine
	 * @param key
	 */
	public void releaseEngine(String key) {
		if (virusEngineMap.containsKey(key)) {
			if (virusEngineMap.get(key).getScanResult() != null) {
				virusEngineMap.get(key).getScanResult().clear();
				virusEngineMap.get(key).getScanResult().remove(key);
			}
			virusEngineMap.remove(key);	
		}
	}
	
	/**
	 * 判断是否有正在被用户使用的Engine
	 * @return
	 */
	public boolean hasOthersUsing() {
		boolean hasEngineRunning = false;
		
		for(VirusScanEngine engine : virusEngineMap.values()) {
			if (engine.isUsing()) {
				hasEngineRunning = true;
				break;
			}
		}
		
		return hasEngineRunning;
	}
	
	/**
	 * 得到弃用但还在运行中的engine列表
	 * @return
	 */
	public int getDiscarEngineSize() {
		if (discardVirusEngineList == null) return 0;
		return discardVirusEngineList.size();
	}
	
	/**
	 * 创建一个杀毒引擎
	 * @param key
	 * @return
	 */
	private VirusScanEngine createVirusScanEngine(String key) {

		VirusScanEngine engine = new VirusScanEngine(this);
		
		// 保存在engine池，如果key已经存在，覆盖之
		virusEngineMap.put(key, engine);
		engine.name = key;
		
		return engine;
	}
	
	/**
	 * 移除engine到弃用池
	 * @param engine
	 */
	private void moveEngineToDiscardList(VirusScanEngine engine) {
		
		int size = discardVirusEngineList.size();
		boolean hasNullObj = false;
		for (int i = 0; i < size; i++) {
			if (discardVirusEngineList.get(i) == null) {
				hasNullObj = true;
				discardVirusEngineList.add(i, engine);
				return;
			}
		}
		if (hasNullObj == false) {
			discardVirusEngineList.add(engine);
		}
	}

	@Override
	public void engineDiscardFinish(VirusScanEngine engine) {
		// 先去掉该engine的监听，即去掉对manager的引用
		engine.removeEngineDiscardListener();
		if (discardVirusEngineList.remove(engine)) {
			Log.d("VirusScanEngine", "Delete a discarded engine. " + engine.hashCode());
		}
	}
	
	////////////////////
	////////////////////
	public void printEngineInfo() {
		Log.d("VirusScanEngine", "--Print engine infos:");
		if (this.virusEngineMap == null) return;
		for (VirusScanEngine engine : this.virusEngineMap.values()) {
			Log.d("VirusScanEngine", "Engine:" + engine.name + " hashCode:" + engine.hashCode() + " " + engine.getScanResult());
		}
	}
	public void printDiscardEngineInfo() {
		Log.d("VirusScanEngine", "--Print discarded engine infos:");
		if (this.discardVirusEngineList == null) return;
		for (VirusScanEngine engine : this.discardVirusEngineList) {
			Log.d("VirusScanEngine", "Discard Engine:" + engine.name + " hashCode:" + engine.hashCode() + " " + engine.getScanResult());
		}
	}
	
}
