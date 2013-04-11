package com.tencent.onesecurity.util;

import java.io.InputStream;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Bitmap.Config;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.safebox.util.FileWorker;

/**
 * Bitmap工具类
 * 
 * 从QD1.2迁移过来
 * @author Jess Yan
 */
public class BitmapUtil {

	/**
	 * 根据InputStream创建inPurgeable = true的Bitmap
	 * @param is 输入流
	 * @return Bitmap
	 */
	public static Bitmap createPurgeableBitmap(InputStream is) {
		Bitmap bm = null;
		try {
			bm = BitmapFactory.decodeStream(is, null, getPurgeableBitmapOptions());
		} catch (OutOfMemoryError e) {
			System.gc();
		}
		return bm;
	}
	
	/**
	 * 根据resId创建inPurgeable = true的Bitmap
	 * @param res
	 * @param resId 资源Id
	 * @return	Bitmap
	 */
	public static Bitmap createPurgeableBitmap(Resources res, int resId) {
		Bitmap bm = null;
		try {
			bm = BitmapFactory.decodeResource(res, resId, getPurgeableBitmapOptions());
		} catch (OutOfMemoryError e) {
			System.gc();
		}
		return bm;
	}	
	
	/**
	 * 根据文件创建inPurgeable = true的Bitmap
	 * @param resPath 文件路径
	 * @return Bitmap
	 */
	public static Bitmap createPurgeableBitmap(String resPath) {
		Bitmap bm = null;
		try {
			bm = BitmapFactory.decodeFile(resPath, getPurgeableBitmapOptions());
		} catch (OutOfMemoryError e) {
			System.gc();
		}
		return bm;
	}
	
	/**
	 * 根据文件创建inPurgeable = true的Bitmap
	 * @param data 字节数据
	 * @param offset 数据的开始位置
	 * @param length 数据的长度
	 * @return
	 */
	public static Bitmap createPurgeableBitmap(byte[] data, int offset, int length) {
		Bitmap bm = null;
		try {
			bm = BitmapFactory.decodeByteArray(data, offset, length, getPurgeableBitmapOptions());
		} catch (OutOfMemoryError e) {
			System.gc();
		}
		return bm;
	}
	
	/**
	 * 创建Bitmap时，获得可被系统回收的Options
	 * @return
	 */
	private static BitmapFactory.Options getPurgeableBitmapOptions() {
		BitmapFactory.Options opts = new BitmapFactory.Options();
		opts.inPreferredConfig = Config.RGB_565;
		opts.inPurgeable = true;
		opts.inInputShareable = true;
		opts.inTargetDensity = MainApplication.getContext().getResources().getDisplayMetrics().densityDpi;
		return opts;
	}
	
	/**
	 * 用于获得图片的宽和高，但不用加载整个图片到内存。
	 * 
	 * 详细参照inJustDecodeBounds参数
	 * @param res
	 * @param resId
	 * @return
	 */
	public static Bitmap createJustBoundsBitmap(Resources res, int resId) {
		Bitmap bm = null;
		try {
			bm = BitmapFactory.decodeResource(res, resId, getJustBoundsOptions());
		} catch (OutOfMemoryError e) {
			System.gc();
		}
		return bm;
	}
	
	/**
	 * 获得只得到图片宽高的Option参数
	 * @return
	 */
	private static BitmapFactory.Options getJustBoundsOptions() {
		BitmapFactory.Options opts = new BitmapFactory.Options();
		opts.inJustDecodeBounds = true;
		return opts;
	}
	// == JOY OPZ start ==
	public static Bitmap getThumbFromData(int size, byte []data, String newName) {
		Bitmap bm = null;
		try {
			
			BitmapFactory.Options bounds = new BitmapFactory.Options();
		    bounds.inJustDecodeBounds = true;
		    BitmapFactory.decodeByteArray(data, 0, data.length, bounds);
		    
		    if ((bounds.outWidth == -1) || (bounds.outHeight == -1))
		        return null;
	
		    int originalSize = (bounds.outHeight > bounds.outWidth) ? bounds.outHeight
		            : bounds.outWidth;
			
		    bounds.inJustDecodeBounds = false;
		    bounds.inSampleSize = originalSize / size;
		    bounds.inPurgeable = true;
		    
		    // 内存过大优化 2013.02.18 start
		    Bitmap bmT = BitmapFactory.decodeByteArray(data, 0, data.length, bounds);
		    
		    FileWorker.writeThumb(bmT, newName);
		    bmT.recycle();

		    bm = FileWorker.readThumb(newName);
		    // 内存过大优化 2013.02.18 end
	    
//	    	bm = BitmapFactory.decodeByteArray(data, 0, data.length, bounds);
		} catch (OutOfMemoryError e) {
			System.gc();
		}
	    
	    return bm;
	}
	
	public static Bitmap getThumbFromPath (int size, String imgPath) {
		Bitmap bm = null;
	    try {
	    	
			BitmapFactory.Options bounds = new BitmapFactory.Options();
		    bounds.inJustDecodeBounds = true;
		    BitmapFactory.decodeFile(imgPath, bounds);
		    
		    if ((bounds.outWidth == -1) || (bounds.outHeight == -1))
		        return null;
	
		    int originalSize = (bounds.outHeight > bounds.outWidth) ? bounds.outHeight
		            : bounds.outWidth;
		    bounds.inJustDecodeBounds = false;
		    bounds.inPurgeable = true;
		    bounds.inSampleSize = originalSize / size;
	    
	    	bm = BitmapFactory.decodeFile(imgPath, bounds);
		} catch (OutOfMemoryError e) {
			System.gc();
		}
	    
	    return bm;
	}
	
}
