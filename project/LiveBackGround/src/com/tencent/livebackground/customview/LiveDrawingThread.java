package com.tencent.livebackground.customview;

import java.util.ArrayList;
import java.util.concurrent.locks.Lock;

import com.tencent.livebackground.R;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader.TileMode;
import android.os.SystemClock;
import android.view.SurfaceHolder;

class LiveDrawingThread extends Thread {

	private boolean mRun = true;

	private final int FRAME_OFFSET = 50;

	private SurfaceHolder mSurfaceHolder;

	private ArrayList<Particle> mParticleList = new ArrayList<Particle>();

	private ArrayList<Particle> mRecycleList = new ArrayList<Particle>();

	public static int mCanvasWidth;

	public static int mCanvasHeight;

	private Paint mPaint;

	public Lock m_lock;
	private Bitmap m_bitmap;
	private int LIVE_MAGIN_SIZE = -100;
	
    private Bitmap mSrc0;
    private Bitmap mSrcB;
    private Bitmap mDstB;
    private int top = 800;
    private Context mContext;
	PorterDuffXfermode mXfermode = new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP);

	public LiveDrawingThread(SurfaceHolder mSurfaceHolder, Context context) {
		mContext = context;
		this.mSurfaceHolder = mSurfaceHolder;
		this.mPaint = new Paint();
		mPaint.setColor(Color.BLACK);
	}
    static Bitmap makeSrc(int w, int h) {
        Bitmap bm = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(bm);
        Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
		int colors[] = {0xff559bff, 0x0078b3ff};
		LinearGradient mShader = new LinearGradient(0, 0, 0, 240, colors, null, TileMode.REPEAT); 
        p.setShader(mShader);   
        c.drawRect(0, 0, 480, 240, p);
        return bm;
    }
    
	@Override
	public void run() {
		mDstB = makeSrc(480, 240);
//		mDstB = makeDst(W, H);
		mSrc0 = BitmapFactory.decodeResource(mContext.getResources(), R.drawable.head_bg_mobile);
		mSrcB = BitmapFactory.decodeResource(mContext.getResources(), R.drawable.head_bg_mobile_on);
		while (mRun) {
			Canvas c = null;
			try {
				long curTime = SystemClock.uptimeMillis();
				c = mSurfaceHolder.lockCanvas(null);
				synchronized (mSurfaceHolder) {
					doDraw(c);
				}
				long timeOffset = SystemClock.uptimeMillis() - curTime;
				if (timeOffset < FRAME_OFFSET) {
					sleep(FRAME_OFFSET - timeOffset);
				}
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				if (c != null) {
					mSurfaceHolder.unlockCanvasAndPost(c);
				}
			}
			synchronized (mParticleList) {
				if (mParticleList.size() == 0) {
					try {
						mParticleList.wait();
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}
	}

	private void doDraw(Canvas c) {
		if (c == null) {
			return;
		}
		synchronized (mParticleList) {
			mPaint.setColor(Color.BLACK);
			mPaint.setAlpha(255);
			c.drawRect(0, 0, mCanvasWidth, mCanvasHeight, mPaint);
			mPaint.setColor(0xff366dbf);
//			c.drawRect(-LIVE_MAGIN_SIZE, -LIVE_MAGIN_SIZE, mCanvasWidth+LIVE_MAGIN_SIZE, mCanvasHeight+LIVE_MAGIN_SIZE, mPaint);
//			c.drawColor(Color.TRANSPARENT, PorterDuff.Mode.CLEAR);
//			c.drawColor(0x366dbf, PorterDuff.Mode.CLEAR);
//			c.drawColor(Color.TRANSPARENT, PorterDuff.Mode.CLEAR);
//			c.drawBitmap(m_bitmap, 0, 0, mPaint);
			mPaint.setColor(Color.GREEN);
			for (int i = 0; i < mParticleList.size(); i++) {
				Particle p = mParticleList.get(i);
				p.draw(c, System.currentTimeMillis());
				if ((p.x < -LIVE_MAGIN_SIZE && p.mGoVector.x < 0) || (p.x > mCanvasWidth + LIVE_MAGIN_SIZE && p.mGoVector.x > 0) || (p.y < -LIVE_MAGIN_SIZE && p.mGoVector.y < 0)
						|| (p.y > mCanvasHeight + LIVE_MAGIN_SIZE && p.mGoVector.y > 0)
						) {
					Point pos = getRandomPoint();
					p.init(pos.x, pos.y);
				}
			}
			Paint paint = new Paint();
			c.drawBitmap(mSrc0, 0, 0, paint);
            int sc = c.saveLayer(0, 0, mCanvasWidth, mCanvasHeight, null,
                    Canvas.MATRIX_SAVE_FLAG |
                    Canvas.CLIP_SAVE_FLAG |
                    Canvas.HAS_ALPHA_LAYER_SAVE_FLAG |
                    Canvas.FULL_COLOR_LAYER_SAVE_FLAG |
                    Canvas.CLIP_TO_LAYER_SAVE_FLAG);
            c.clipRect(0, top, 480, top+240);
			c.drawBitmap(mSrcB, 0, 0, paint);
			paint.setXfermode(mXfermode);
			c.drawBitmap(mDstB, 0, top, paint);
			paint.setXfermode(null);
			c.restoreToCount(sc);
			top -= 3;
			if(top < -240) {
				top = 800;
			}
		}
	}

	private Point getRandomPoint() {
		Point pos = new Point();
		double localX = Math.cos(Particle.gDirection);
		double localY = Math.sin(Particle.gDirection);
		double randPosition = Math.random();
		double radio = Math.abs(localX)/(Math.abs(localY) + Math.abs(localX));
		if(randPosition > radio) {
			pos.x = (int)((mCanvasWidth+2*LIVE_MAGIN_SIZE) * (randPosition - radio))-LIVE_MAGIN_SIZE;
			if(localY > 0) {
				pos.y = -LIVE_MAGIN_SIZE;
			} else {
				pos.y = mCanvasHeight + LIVE_MAGIN_SIZE;
			}
		} else {
			pos.y = (int)((mCanvasHeight+2*LIVE_MAGIN_SIZE) * randPosition)-LIVE_MAGIN_SIZE;
			if(localX > 0) {
				pos.x = -LIVE_MAGIN_SIZE;
			} else {
				pos.x = mCanvasWidth + LIVE_MAGIN_SIZE;
			}
		}
		if(Math.abs(pos.x) > 1000 || Math.abs(pos.y) > 1000) {
			pos.x = 1000;
			pos.y = 1000;
		}
		return pos;
	}
	
	public void stopDrawing() {
		this.mRun = false;
	}

	public ArrayList<Particle> getParticleList() {
		return mParticleList;
	}

	public ArrayList<Particle> getRecycleList() {
		return mRecycleList;
	}

	public void setSurfaceSize(int width, int height) {
		mCanvasWidth = width;
		mCanvasHeight = height;
		synchronized (mParticleList) {
		if (m_bitmap != null) {
			m_bitmap.recycle();
		}
//		Bitmap bitmap = BitmapFactory.decodeResource(m_Context.getResources(), R.drawable.pattern);
//		m_bitmap = ParticleDrawingThread.createRepeater(mCanvasWidth, mCanvasHeight, bitmap);
		}
	}

	public static Bitmap createRepeater(int width, int height, Bitmap src) {
		int countX = (width + src.getWidth() - 1) / src.getWidth();
		int countY = (height + src.getHeight() - 1) / src.getHeight();
		Bitmap bitmap = Bitmap.createBitmap(width, height, Config.ARGB_8888);
		Canvas canvas = new Canvas(bitmap);
		for (int idy = 0; idy < countY; ++idy) {
			for (int idx = 0; idx < countX; ++idx) {
				canvas.drawBitmap(src, idx * src.getWidth(), idy * src.getHeight(), null);
			}
		}
		return bitmap;
	}
}