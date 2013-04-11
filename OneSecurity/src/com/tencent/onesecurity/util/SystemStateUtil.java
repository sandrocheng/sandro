package com.tencent.onesecurity.util;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;

import android.os.Debug;

/**
 * 
 * @ClassName: SystemStateUtil
 * @Description:获得当前进程内存使用情况、cpu使用百分比
 * @author: Gary Yuan
 * @date: 2012-10-15 下午12:02:17
 *
 */
public class SystemStateUtil {

	private static SystemStateUtil instance = null;
	
	long total = 0;
    long idle = 0;
    double usage = 0;
	
    /**
     * 私有构造方法
     */
    private SystemStateUtil() {
    	msystemInfo = new SytemStateInfo();
    }
	
	/**
	 * 获得单例的VirusScanManager对象
	 * 
	 * @return
	 */
    public static SystemStateUtil getInstance() {
        if (instance == null) {
            synchronized (SystemStateUtil.class) {
                if (instance == null) {
                    instance = new SystemStateUtil();
                }
            }
        }
        return instance;
    }
    
    public class SytemStateInfo{
    
    	public int dalvikPrivateDirty;
    	public int nativePrivateDirty;
    	public int otherPrivateDirty;
    	public int uss;
    	public double usage;
    	
    }
    
    
    private SytemStateInfo msystemInfo = null;
    /**
     * 获得内存信息
     * 
     */
    public SytemStateInfo GetSytemStateInfo(){
    
        try {
        	
			Debug.MemoryInfo m = new Debug.MemoryInfo();
			Debug.getMemoryInfo(m);
//			Log.i("GetSytemStateInfo",String.valueOf(m.dalvikPrivateDirty)); //dalvik所使用的内存
//			Log.i("GetSytemStateInfo",String.valueOf(m.nativePrivateDirty)); //native堆使用的内存。应该指使用C\C++在堆上分配的内存
//			Log.i("GetSytemStateInfo",String.valueOf(m.otherPrivateDirty));  //指除dalvik和native使用的内存。但是具体是指什么呢？至少包括在C\C++分配的非堆内存，比如分配在栈上的内存。
		    

			msystemInfo.dalvikPrivateDirty = m.dalvikPrivateDirty;
			msystemInfo.nativePrivateDirty = m.nativePrivateDirty;
			msystemInfo.otherPrivateDirty = m.otherPrivateDirty;
			msystemInfo.uss = m.dalvikPrivateDirty + m.nativePrivateDirty + m.otherPrivateDirty;
			
            BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/stat")),1000);
            String load = reader.readLine();
            reader.close();     

            String[] toks = load.split(" ");

            long currTotal = Long.parseLong(toks[2]) + Long.parseLong(toks[3]) + Long.parseLong(toks[4]) + Long.parseLong(toks[7]);
            long currIdle = Long.parseLong(toks[5]);

            usage =(currTotal - total) * 100.0f / (currTotal - total + currIdle - idle);
            total = currTotal;
            idle = currIdle;
            
//            Log.i("GetSytemStateInfo",String.valueOf(usage)); //cpu使用百分比
            msystemInfo.usage = usage;
            
            return msystemInfo;
        }
        catch (Exception e) {
            //CrashUtil.exceptionUpload(e); // 弹出程序崩溃信息，并让用户选择是否发mail上报Crash堆栈列表
        }
        return null;

    }
    
    
    
}
