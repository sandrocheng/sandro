package com.tencent.widget;

import java.lang.reflect.Method;

import android.util.Log;

import com.tencent.util.VersionUtils;

public class TraceUtils
{
	private static Method sMethodBegin;
	private static Method sMethodEnd;
	
	/**
	 * 调试开关, 要的时候本地打开, 不要提交到SVN上
	 */
	public static final boolean USE_TRACE = false;
	
	
    /**
     * 开始录制trace
     * @param methodName
     */
    public static void traceBegin(String methodName)
    {
    	if(USE_TRACE && VersionUtils.isJellyBean())
    	{
	    	if(sMethodBegin == null)
	    	{
//	    		Class clz;
				try
				{
					Class clz = Class.forName("android.os.Trace");
					Method m = clz.getMethod("traceBegin", Long.TYPE, String.class);
					sMethodBegin = m;
				}
				catch (Throwable e)
				{
					e.printStackTrace();
				}
	    	}
	    	
	    	{
	    		try
				{
	    			sMethodBegin.invoke(null, (1L << 3), methodName);
				}
				catch (Throwable e)
				{
					e.printStackTrace();
				}
	    	}
    	}
    	
    }

    /**
     * 结束录制 trace
     */
    public static void traceEnd()
    {
       	if(USE_TRACE && VersionUtils.isJellyBean())
    	{
	    	if(sMethodEnd == null)
	    	{
//	    		Class clz;
				try
				{
					Class clz = Class.forName("android.os.Trace");
		            Method m = clz.getMethod("traceEnd", Long.TYPE);
					sMethodEnd = m;
				}
				catch (Throwable e)
				{
					e.printStackTrace();
				}
	    	}
//	    	if(sMethodEnd != null)
	    	{
	    		try
				{
	    			sMethodEnd.invoke(null, (1L << 3));
				}
				catch (Throwable e)
				{
					e.printStackTrace();
				}
	    	}
    	}
    }

}
