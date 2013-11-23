
package com.tencent.livebackground.customview;

import java.util.Random;
import java.util.concurrent.atomic.AtomicLong;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.Paint.Align;

import com.tencent.livebackground.R;
import com.tencent.livebackground.animation.ParticleRenderer;
import com.tencent.livebackground.util.RectPool;

public class Particle {
    public int distFromOrigin = 0;

    public static double gDirection;
    private double localDirection;
    
    public static double gSpeed;
    private double localSpeed;

    public float scale;
    
    public int alpha;

    public float x;

    public float y;
    
    private ParticleRenderer mRenderer;
    
    private static AtomicLong sIdCounter = new AtomicLong(0L);
    
    long localIndex;
    
    public ParticleRenderer getRenderer() {
		return mRenderer;
	}

	public void setRenderer(ParticleRenderer renderer) {
		mRendererCount = 0;
		this.mRenderer = renderer;
		this.mRenderer.setScale(scale);
		this.mRenderer.setAlpha(alpha);
	}

	private Bitmap mBitmap;
    
    private Paint mPaint;
    
    public PointF mGoVector;
    
    public int mRendererCount = 0;

    public Particle(Context context, int x, int y) {
        this.scale = 0.3F + (float)Math.random();
        if(scale > 1.0f) {
        	scale = 1.0f;
        }
        localIndex = sIdCounter.getAndIncrement();
        this.alpha = 15 + new Random().nextInt(5);
        mBitmap = BitmapFactory.decodeResource(context.getResources(), R.drawable.live_ball);
        mPaint = new Paint();
        mGoVector = new PointF(0, 0);
        setWindFromDirectionSpeed(0, 0.62);
        init(x, y);
    }

    public void init(int x, int y) {
        distFromOrigin = 0;
        this.x = x;
        this.y = y;
        Rect rect = RectPool.obtainRect();
        rect.left = x;
        rect.top = y;
        if (mRenderer != null) {
        	mRenderer.start(rect, x, y, this.scale, this.alpha, System.currentTimeMillis());
        }
        RectPool.recycleRect(rect);
    }
    
    public static void setWindFromDirectionSpeed(int angle, double speed) {
    	gDirection = 2 * Math.PI * angle / 360;
    	gSpeed = speed;
    }
    
    private synchronized void move() {
    	if(localDirection != gDirection || localSpeed != gSpeed) {
    		localDirection = gDirection;
    		localSpeed = gSpeed;
            double directionCosine = Math.cos(localDirection);
            double directionSine = Math.sin(localDirection);
            
            mGoVector.x = (float)(directionCosine * (localSpeed + Math.random() * 4 * localSpeed));
            mGoVector.y = (float)(directionSine * (localSpeed + Math.random() * 4 * localSpeed));
    	}
    	x += mGoVector.x;
    	y += mGoVector.y;
    }

    public void draw(Canvas c, long timeMillis) {
    	Rect rect = RectPool.obtainRect();
    	rect.left = (int)x;
    	rect.top = (int)y;
    	if (mRenderer != null) {
			boolean res = mRenderer.draw(mBitmap, c, rect, timeMillis);
			mRenderer.getCurrentRect(rect);
			this.x = rect.left;
			this.y = rect.top;
    		if(!res) {
    			if(mRendererCount > 0) {
    				mRenderer.recycle();
    				mRenderer = null;
    				mRendererCount = 0;
    			} else {
	    			mRendererCount++;
	    			mRenderer.start(rect, (int)(Math.random()*LiveDrawingThread.mCanvasWidth),
	    					(int)(Math.random()*LiveDrawingThread.mCanvasHeight), this.scale, this.alpha, System.currentTimeMillis());
    			}
    		}
    	} else {
    		move();
    		c.save();
    		c.translate(x, y);
    		c.scale(this.scale, this.scale);
    		mPaint.setAlpha(this.alpha);
    		c.drawBitmap(mBitmap, 0, 0, mPaint);
    		mPaint.setColor(Color.RED);
    		mPaint.setTextAlign(Align.CENTER);
    		String strText = String.format("%d", localIndex);
    		c.restore();
    		c.drawText(strText, x, y, mPaint);
    	}
    	RectPool.recycleRect(rect);
    }
}