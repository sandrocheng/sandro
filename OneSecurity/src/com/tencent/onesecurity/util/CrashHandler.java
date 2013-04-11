package com.tencent.onesecurity.util;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.Thread.UncaughtExceptionHandler;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;

import com.tencent.onesecurity.common.ApplicationConfig;

/**  
 * UncaughtException处理类,当程序发生Uncaught异常的时候,有该类  
 * 来接管程序,并记录 发送错误报告.  
 *  
 */  
public class CrashHandler implements UncaughtExceptionHandler {   
    /** Debug Log tag*/  
    public static final String TAG = "CrashHandler";   
    /** 是否开启日志输出,在Debug状态下开启,  
     * 在Release状态下关闭以提示程序性能  
     * */  
    public static final boolean DEBUG = true;   
    /** 系统默认的UncaughtException处理类 */  
    private Thread.UncaughtExceptionHandler mDefaultHandler;   
    /** CrashHandler实例 */  
    private static CrashHandler INSTANCE;   
    /** 程序的Context对象 */  
    private Context mContext;   

    /** 使用Properties来保存设备的信息和错误堆栈信息*/  
//    private Properties mDeviceCrashInfo = new Properties();
//    private static final String STACK_TRACE = "STACK_TRACE";   
    /** 错误报告文件的扩展名 */  
//    private static final String CRASH_REPORTER_EXTENSION = ".cr";   

    /** 保证只有一个CrashHandler实例 */  
    private CrashHandler() {}   
    /** 获取CrashHandler实例 ,单例模式*/  
    public static CrashHandler getInstance() {   
        if (INSTANCE == null) {   
            INSTANCE = new CrashHandler();   
        }   
        return INSTANCE;   
    }   

    /**  
     * 初始化,注册Context对象,  
     * 获取系统默认的UncaughtException处理器,  
     * 设置该CrashHandler为程序的默认处理器  
     *   
     * @param ctx  
     */  
    public void init(Context ctx) {   
        mContext = ctx;   
        mDefaultHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);   
    }   
//    private Thread mThread = null;
//    private Throwable mEx = null;
    /**  
     * 当UncaughtException发生时会转入该函数来处理  
     */  
    @Override  
    public void uncaughtException(Thread thread, Throwable ex) {  
//    	mThread = thread;
//    	mEx = ex;
    	Log.e("com.tencent.onesecurity", "uncaughtException---------------------------------");
        if(ApplicationConfig.EXCEPTIONUPLOAD){
	        if (!handleException(ex) && mDefaultHandler != null) {
	            mDefaultHandler.uncaughtException(thread, ex);	
	        }
        }else{
        	 mDefaultHandler.uncaughtException(thread, ex);
        }
    }   

    /**  
     * 自定义错误处理,收集错误信息  
     * 发送错误报告等操作均在此完成.  
     * 开发者可以根据自己的情况来自定义异常处理逻辑  
     * @param ex  
     * @return true:如果处理了该异常信息;否则返回false  
     */  
    private boolean handleException(Throwable e) {
        if (e == null) {   
            return false;   
        }

        //使用Toast来显示异常信息
        new Thread() {   
            @Override  
            public void run() {   
                Looper.prepare();   
                Toast.makeText(mContext, "One security has encountered a problem and need to close. We are sorry for the inconvenience.", Toast.LENGTH_LONG).show();
                Looper.loop();   
            }   

        }.start();
        
        Writer info = new StringWriter();   
        PrintWriter printWriter = new PrintWriter(info);   
        e.printStackTrace(printWriter);     
        
        String s = info.toString(); 
        printWriter.close();
        Log.e(mContext.getPackageName(), s);
//		SendMailUtil mail = new SendMailUtil(new SendMailListener(){
//
//			@Override
//			public void sendMailDone() {
//				if(null != mDefaultHandler){
//					mDefaultHandler.uncaughtException(mThread, mEx);
//				}
//			}
//		});
		
//		mail.Send("该Crash从未捕获的异常中获得，出错的代码段中未加入Try Catch。\r\n" + s, mContext);
        return true;   
    }
    
//    /**  
//     * 保存错误信息到文件中  
//     * @param ex  
//     * @return  
//     */  
//    private String saveCrashInfoToFile(Throwable ex) {   
//        Writer info = new StringWriter();   
//        PrintWriter printWriter = new PrintWriter(info);   
//        ex.printStackTrace(printWriter);   
//
//        Throwable cause = ex.getCause();   
//        while (cause != null) {   
//            cause.printStackTrace(printWriter);   
//            cause = cause.getCause();   
//        }   
//
//        String result = info.toString();   
//        printWriter.close();   
//        mDeviceCrashInfo.put(STACK_TRACE, result);   
//
//        FileOutputStream trace = null;
//        try {
//            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd_HHmmss");
//            String fileName = "crash_" + dateFormat.format(new Date()) + CRASH_REPORTER_EXTENSION;   
//            File cr = new File(Environment.getExternalStorageDirectory() + "/qqlog/", fileName);
//            if (!cr.exists()) {
//            	File tempPath = cr.getParentFile();
//                tempPath.mkdirs();
//                cr.createNewFile();
//            }
//            trace = new FileOutputStream(cr);
//            mDeviceCrashInfo.store(trace, "");
//            trace.flush();   
//            return fileName;   
//        } catch (Exception e) {
//        	e.printStackTrace();
//            Log.e(TAG, "an error occured while writing crash file...");   
//        } finally {
//        	if (trace != null) {
//        		try {
//					trace.close();
//				} catch (IOException e) {
//					e.printStackTrace();
//				}
//        	}
//        }
//        return null;   
//    }
}  

