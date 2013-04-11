package com.tencent.onesecurity.safebox.ui.viewImage;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.DisplayMetrics;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.safebox.util.EncryptWorker;
/**
 * @ClassName: ImageManager
 * @Description:图片解码用管理类。
 * @author: Matt
 * @date: 2012-11-07 15：55
 * 
 */
class ImageManager{
	private HandlerThread mThread;
	private Handler mHandler;
//	private DecodeRunnable mRunnable;
//	private ScaleDecodeRunnable mScaleRunnable;
	private Map<Integer, DecodeFileInfo> mDataMap;
	
	private volatile int curIndex = -1;
	
	
	public int getCurIndex() {
		return curIndex;
	}

	public void setCurIndex(int curIndex) {
		this.curIndex = curIndex;
	}


	//图片管理结构体
	public class DecodeFileInfo{
		String filePath;
		SoftReference<Bitmap> scaleBitmap = null;
		SoftReference<Bitmap> bitmap = null;
		byte[] thumb = null;
		boolean isDelete = false;
		boolean decodeBitmap = false;
		boolean decodeScaleBitmap = false;
		int id = -1;
		DecodeFileInfo(String path, int i, byte[] thumbByte){
			filePath = path;
			id = i;
			thumb = thumbByte;
		}
	}
	/*
	 * 构造函数
	 */
	public ImageManager(Context comtact){
		mDataMap = new ConcurrentHashMap<Integer, DecodeFileInfo>();
		mThread = new HandlerThread("DecodeFileManager");
		mThread.start();	
		mHandler = new Handler(mThread.getLooper());
	}
	
	/*
	 * 资源释放函数.
	 */
	public void destroyManager(){
		mThread.getLooper().quit();
		synchronized(mDataMap){
			for(DecodeFileInfo info : mDataMap.values()){
				if(info.scaleBitmap != null){
					if(info.scaleBitmap.get() != null){
						info.scaleBitmap.get().recycle();
						info.scaleBitmap.clear(); 
					}
				}
				
				if(info.bitmap != null){
					if(info.bitmap.get() != null){
						info.bitmap.get().recycle();
						info.bitmap.clear(); 
					}
				}
			}
			mDataMap.clear();
		}		
	}
	
	/*
	 * 原图片解码
	 */
	public void decodeFile(String filename, int id){
		DecodeFileInfo info = mDataMap.get(id);
		if (info == null) {
			info = new DecodeFileInfo(filename, id, null);
			mDataMap.put(id, info);
		}
		
		info.decodeBitmap = true;
		mHandler.postDelayed(new DecodeRunnable(info), 0);
	}
	/*
	 * 缩略图解码
	 */
	public void scaleDecodeFile(String filename, int id, byte[] thumb){
		synchronized(mDataMap){
			
			DecodeFileInfo info = mDataMap.get(id);
			
			if (info != null) {
				if(info.scaleBitmap != null && info.scaleBitmap.get() != null){
					scaleDecodeComplate(info.scaleBitmap, info.id);
					return;
				}
				
				if (info.decodeScaleBitmap) {
					return ;
				}
				info.decodeScaleBitmap = true;
				mHandler.post(new ScaleDecodeRunnable(id));
				return;
			}
			
			DecodeFileInfo i = new DecodeFileInfo(filename, id, thumb);
			i.decodeScaleBitmap = true;
			mDataMap.put(id, i);
		}
		mHandler.post(new ScaleDecodeRunnable(id));		
		
	}
	
	/*
	 * 移除一个图片
	 */
	public void removeCatch(int id){
		synchronized(mDataMap){
			DecodeFileInfo info = mDataMap.get(id);
			if (info != null) {
				if(info.bitmap != null){
					if(info.bitmap.get() != null){
						info.bitmap.get().recycle();
					}
				}
				if(info.scaleBitmap != null){
					Bitmap b = info.scaleBitmap.get();
					if(b != null && b.isRecycled() == false){
						b.recycle();
						info.scaleBitmap.clear(); 
					}
				}
				mDataMap.remove(id);
			}

		}
	}
	/*
	 * 子类实现方法.原图片解码完成.
	 */
	protected void decodeComplate(SoftReference<Bitmap> bt, int id){
		
	}
	/*
	 * 子类实现方法,缩略图解码完成
	 */
	protected void scaleDecodeComplate(SoftReference<Bitmap> bt, int id){
		
	}
	
	protected void scaleDecodeFaild(int imgId){
		
	}
	
	protected void decodeFaild(int imgId) {
		
	}
	/*
	 * 缩略图缩小比例计算函数
	 */
	public static int computeSampleSize(BitmapFactory.Options options, 
            int minSideLength, int maxNumOfPixels) { 
        int initialSize = computeInitialSampleSize(options, minSideLength, 
                maxNumOfPixels); 
      
        int roundedSize; 
        if (initialSize <= 8) { 
            roundedSize = 1; 
            while (roundedSize < initialSize) { 
                roundedSize <<= 1; 
            } 
        } else { 
            roundedSize = (initialSize + 7) / 8 * 8; 
        } 
      
        return roundedSize; 
    } 
	/*
	 * 缩略图缩小比例计算函数
	 */      
    private static int computeInitialSampleSize(BitmapFactory.Options options, 
            int minSideLength, int maxNumOfPixels) { 
        double w = options.outWidth; 
        double h = options.outHeight; 
      
        int lowerBound = (maxNumOfPixels == -1) ? 1 : 
                (int) Math.ceil(Math.sqrt(w * h / maxNumOfPixels)); 
        int upperBound = (minSideLength == -1) ? 128 : 
                (int) Math.min(Math.floor(w / minSideLength), 
                Math.floor(h / minSideLength)); 
      
        if (upperBound < lowerBound) { 
            // return the larger one when there is no overlapping zone. 
            return lowerBound; 
        } 
      
        if ((maxNumOfPixels == -1) && 
                (minSideLength == -1)) { 
            return 1; 
        } else if (minSideLength == -1) { 
            return lowerBound; 
        } else { 
            return upperBound; 
        } 
    }    
    
    private DisplayMetrics getDisplayMetrics() {
    	android.view.WindowManager wm = (android.view.WindowManager) MainApplication.getContext().getSystemService(Context.WINDOW_SERVICE);
		DisplayMetrics metrics = new DisplayMetrics();
		wm.getDefaultDisplay().getMetrics(metrics);
		return metrics;
    }
    

    /*
     * 原图片解码Runnable
     */
	class DecodeRunnable implements Runnable{
		private DecodeFileInfo decInfo;
		DecodeRunnable(DecodeFileInfo decInfo) {
			this.decInfo = decInfo;
		}
		@Override
		public void run() {
			try {
				if (curIndex != decInfo.id && curIndex != -1) {
					return ;
				}
				
				decodeRun();
			} catch (IOException e) {
			}
		
		}

		/*
	     * 原图片解码处理
	     */
		public void decodeRun() throws IOException{
			
			DisplayMetrics metrics = getDisplayMetrics();
			
			Bitmap bt = null;
			int inSampleSize = 1;
			for(int i = 0; i < 3; i++){

				BitmapFactory.Options opts = new BitmapFactory.Options();
				opts.inJustDecodeBounds = false;
				opts.inSampleSize = inSampleSize;
				// JOY SAFEBOX 0322
				if (metrics.widthPixels<=300) {
					opts.inPreferredConfig = Bitmap.Config.RGB_565;
				}
				try {
					BitmapFactory.Options.class.getField("inNativeAlloc").setBoolean(opts, true);
				} catch (IllegalArgumentException e1) {
				} catch (SecurityException e1) {
				} catch (IllegalAccessException e1) {
				} catch (NoSuchFieldException e1) {
				} 
				
				MyDecodeFileInputStream fileInputStream = null;
				try{
					fileInputStream = new MyDecodeFileInputStream(decInfo.filePath, EncryptWorker.HEAD_LENGTH);
				} catch (IOException e) {
					decodeFaild(decInfo.id);	
					return;
				}
				try{				
					bt = BitmapFactory.decodeStream(fileInputStream, null, opts);
				}catch (OutOfMemoryError err) {
					bt = null;
					inSampleSize = inSampleSize * 2;
				}
				fileInputStream.close();
				if(bt != null){
					break;
				}
				
			}
			
			if (curIndex != decInfo.id && curIndex != -1) {
				decInfo.decodeBitmap = false;
				
				if (bt != null && bt.isRecycled() == false) {
					bt.recycle();
				}
				return ;
			}
			
			if(bt != null){
				decInfo.bitmap = new SoftReference<Bitmap>(bt);
				decodeComplate(decInfo.bitmap, decInfo.id);
			}else {
				decodeFaild(decInfo.id);
			}
			
			decInfo.decodeBitmap = false;
		}	
	}
	
	
	/*
	 * 缩略图解码Runnable
	 */
	class ScaleDecodeRunnable implements Runnable{
		private int index;
		ScaleDecodeRunnable (int index) {
			this.index = index;
		}
		@Override
		public void run() {
			try {
				scaleDecodeRun(index);
			} catch (IOException e) {
			}
		}
	}
	
	/*
	 * 缩略图解码处理
	 */
	public void scaleDecodeRun(int index) throws IOException{
		
		DecodeFileInfo info = null;
		synchronized(mDataMap){
			info = mDataMap.get(index);
		}
		if(info == null){
			return;
		}
		MyDecodeFileInputStream fileInputStream = null;

		try {
			fileInputStream = new MyDecodeFileInputStream(info.filePath, EncryptWorker.HEAD_LENGTH);
		} catch (IOException e) {
			scaleDecodeFaild(info.id);
			
			return;
		}
		
		Bitmap bt = null;
		BitmapFactory.Options opts = new BitmapFactory.Options();
		opts.inJustDecodeBounds = true;
		opts.inSampleSize = 1;
		BitmapFactory.decodeStream(fileInputStream, null, opts);
		
		android.view.WindowManager wm = (android.view.WindowManager) MainApplication.getContext().getSystemService(Context.WINDOW_SERVICE);
		DisplayMetrics metrics = new DisplayMetrics();
		wm.getDefaultDisplay().getMetrics(metrics);
		int width = metrics.widthPixels;
		
		int sampleSize = computeSampleSize(opts, -1, width*width);
		if (sampleSize == 1) {
			sampleSize = 3;
		}
		
		opts.inSampleSize = sampleSize; 
		opts.inJustDecodeBounds = false;
	
		try {
			BitmapFactory.Options.class.getField("inNativeAlloc").setBoolean(opts, true);
		} catch (IllegalArgumentException e1) {
		} catch (SecurityException e1) {
		} catch (IllegalAccessException e1) {
		} catch (NoSuchFieldException e1) {
		} 

		fileInputStream.close();
		fileInputStream = new MyDecodeFileInputStream(info.filePath, EncryptWorker.HEAD_LENGTH);
		try{
			bt = BitmapFactory.decodeStream(fileInputStream, null, opts);

		}catch (OutOfMemoryError err) {
			bt = null;
        }
		
		fileInputStream.close();

		if(bt != null){
			info.scaleBitmap = new SoftReference<Bitmap>(bt);
			scaleDecodeComplate(info.scaleBitmap, info.id);
		}else {
			scaleDecodeFaild(info.id);
		}
		
		info.decodeScaleBitmap = false;
	}
	
	//加密图片解密类
	class MyDecodeFileInputStream extends DecodeFileInputStream{

		public MyDecodeFileInputStream(String name, int headerlenth)
				throws FileNotFoundException {
			super(name, headerlenth);
		}

		@Override
		protected void decodeFileHead(byte[] fileHead) {
			byte[] h = EncryptWorker.decryptFileHead(fileHead);
			
			System.arraycopy(h, 0, fileHead, 0, h.length);
		}

		
	}
	
	// JOY OO
	public void clearOldBigBitmap(final ViewPagerItem v, final int index,final  int rotate) {
		
		DecodeFileInfo info = mDataMap.get(index);
		if (info != null) {
			if ( info.scaleBitmap != null && info.scaleBitmap.get() != null) {
				v.setImageRotateBitmapResetBase(new RotateBitmap(info.scaleBitmap.get(), rotate), true);
			} else {
				v.setImageRotateBitmapResetBase(new RotateBitmap(null, 0), true);
			}
			
			mHandler.post(new ClearThread(info));
		}
		
	}
	
	private class ClearThread implements Runnable {
		private DecodeFileInfo mInfo;
		ClearThread(DecodeFileInfo info) {
			mInfo = info;
		}
		
		public void run() {
			if (mInfo.id != curIndex && mInfo.bitmap != null && mInfo.bitmap.get() != null && mInfo.bitmap.get().isRecycled() == false) {
				mInfo.bitmap.get().recycle();
			}
		}
	}
}
