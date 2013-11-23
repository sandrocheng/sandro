
package com.tencent.livebackground.customview;

import java.util.ArrayList;
import java.util.Random;

import android.content.Context;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;

import com.tencent.livebackground.animation.ParticleRenderer;
import com.tencent.livebackground.util.RectPool;

public class LiveView extends SurfaceView implements SurfaceHolder.Callback {

    private LiveDrawingThread mDrawingThread;

    private ArrayList<Particle> mParticleList;

    private ArrayList<Particle> mRecycleList;

    private Context mContext;
    
    private float angle;
    
    private int touchCount = 0;
    
    private float shapeArray[] = {0.06f, 0.2f, 0.81f, 0.20f, 0.11f, 0.42f, 0.77f, 0.42f, 0.24f, 0.64f, 0.65f, 0.64f,0.24f, 0.08f, 0.65f, 0.08f, 0.44f, 0.80f, 0.44f, 0.04f};

    public LiveView(Context context) {
        super(context);
        SurfaceHolder holder = getHolder();
//        holder.setFormat(PixelFormat.TRANSLUCENT);
        holder.addCallback(this);
        holder.setFormat(PixelFormat.TRANSPARENT);
        this.mContext = context;

    }
    public LiveView(Context context, AttributeSet attrs) {
        super(context, attrs);
        SurfaceHolder holder = getHolder();
        holder.addCallback(this);
        this.mContext = context;

    }
    @Override
    public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
        mDrawingThread.setSurfaceSize(width, height);
    }

    @Override
    public void surfaceCreated(SurfaceHolder holder) {
        mDrawingThread = new LiveDrawingThread(holder, mContext);
        mParticleList = mDrawingThread.getParticleList();
        mRecycleList = mDrawingThread.getRecycleList();
        mDrawingThread.start();
        this.startPowerShow(5);
    }

    @Override
    public void surfaceDestroyed(SurfaceHolder holder) {
        boolean retry = true;
        mDrawingThread.stopDrawing();
        while (retry) {
            try {
                synchronized (mParticleList) {
                    mParticleList.notifyAll();
                }
                mDrawingThread.join();
                retry = false;
            } catch (InterruptedException e) {
            }
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
//        Particle p;
//        int recycleCount = 0;
//
//        if (mRecycleList.size() > 1)
//            recycleCount = 2;
//        else
//            recycleCount = mRecycleList.size();
//        synchronized (mParticleList) {
//            for (int i = 0; i < recycleCount; i++) {
//                p = mRecycleList.remove(0);
//                p.init((int)event.getX(), (int)event.getY());
//                mParticleList.add(p);
//            }
//
//            for (int i = 0; i < 2 - recycleCount; i++)
//                mParticleList.add(new Particle(mContext, (int)event.getX(), (int)event.getY()));
//            mParticleList.notify();
//        }
    	
    	

		if (touchCount > 0) {
			synchronized (mParticleList) {
				int count = mParticleList.size();
				Particle p;
				for (int i = 0; i < count; i++) {
					p = mParticleList.get(i);
					Rect rect = RectPool.obtainRect();
					if(p.getRenderer() == null) {
						p.setRenderer(ParticleRenderer.obtain());
					}
					rect.left = (int) p.x;
					rect.top = (int) p.y;
					if(2*i < shapeArray.length) {
						p.getRenderer().start(rect, (int) (event.getX() + shapeArray[2*i]*100-50),
								(int) (event.getY() + shapeArray[2*i+1]*100-50), 0.3f, 53, System.currentTimeMillis());
						} else {
							p.getRenderer().start(rect, (int) (event.getX()),
									(int) (event.getY()), 0.3f, 53, System.currentTimeMillis());
						}
					RectPool.recycleRect(rect);
				}
			}
		} else {
		}
		Particle.setWindFromDirectionSpeed((int)angle, 0.62);
		angle += 45;
		touchCount++;
        return super.onTouchEvent(event);
    }
    
    public void startPowerShow(int ParticleNum) {
//        Particle p;
		if (ParticleNum == 0)
			return;
        int recycleCount = 0;

        if (mRecycleList.size() > ParticleNum)
            recycleCount = ParticleNum;
        else
            recycleCount = mRecycleList.size();
        Particle p;
        synchronized (mParticleList) {
            for (int i = 0; i < recycleCount; i++) {
                p = mRecycleList.remove(0);
                p.init(new Random().nextInt((int)this.getWidth()), (int)this.getHeight()+100-(new Random().nextInt(130)));
                mParticleList.add(p);
            }
            for (int i = 0; i < ParticleNum; i++) {
                mParticleList.add(new Particle(mContext, new Random().nextInt((int)this.getWidth()), (int)(new Random().nextInt(this.getHeight()))));
            }
            mParticleList.notify();
        }
    }
}
