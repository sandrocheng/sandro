package com.tencent.livebackground.customview;

import com.tencent.livebackground.R;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Xfermode;
import android.graphics.Shader.TileMode;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

public class TestImageView extends View {
    private static final int W = 480;
    private static final int H = 800;
    private static final int ROW_MAX = 4;   // number of samples per row
    int iii;
    private Bitmap mSrc0;
    private Bitmap mSrcB;
    private Bitmap mDstB;
    private Shader mBG;     // background checker-board pattern
    // create a bitmap with a circle, used for the "dst" image
    static Bitmap makeDst(int w, int h) {
        Bitmap bm = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(bm);
        Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
 
        c.drawOval(new RectF(0, 0, w*3/4, h*3/4), p);
        return bm;
    }
    
    // create a bitmap with a rect, used for the "src" image
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
    private static final Xfermode[] sModes = {
        new PorterDuffXfermode(PorterDuff.Mode.CLEAR),
        new PorterDuffXfermode(PorterDuff.Mode.SRC),
        new PorterDuffXfermode(PorterDuff.Mode.DST),
        new PorterDuffXfermode(PorterDuff.Mode.SRC_OVER),
        new PorterDuffXfermode(PorterDuff.Mode.DST_OVER),
        new PorterDuffXfermode(PorterDuff.Mode.SRC_IN),
        new PorterDuffXfermode(PorterDuff.Mode.DST_IN),
        new PorterDuffXfermode(PorterDuff.Mode.SRC_OUT),
        new PorterDuffXfermode(PorterDuff.Mode.DST_OUT),
        new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP),
        new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP),
        new PorterDuffXfermode(PorterDuff.Mode.XOR),
        new PorterDuffXfermode(PorterDuff.Mode.DARKEN),
        new PorterDuffXfermode(PorterDuff.Mode.LIGHTEN),
        new PorterDuffXfermode(PorterDuff.Mode.MULTIPLY),
        new PorterDuffXfermode(PorterDuff.Mode.SCREEN)
    };
    
    private static final String[] sLabels = {
        "Clear", "Src", "Dst", "SrcOver",
        "DstOver", "SrcIn", "DstIn", "SrcOut",
        "DstOut", "SrcATop", "DstATop", "Xor",
        "Darken", "Lighten", "Multiply", "Screen"
    };
    
    private Context mContext;
    
    public TestImageView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		// TODO Auto-generated constructor stub
		mContext = context;
		initView();
	}

	public TestImageView(Context context, AttributeSet attrs) {
		super(context, attrs);
		// TODO Auto-generated constructor stub
		mContext = context;
		initView();
	}

	public TestImageView(Context context) {
        super(context);
        mContext = context;
    }
	public void initView() {
		mDstB = makeSrc(W, H);
//		mDstB = makeDst(W, H);
		mSrc0 = BitmapFactory.decodeResource(mContext.getResources(), R.drawable.head_bg_mobile);
		mSrcB = BitmapFactory.decodeResource(mContext.getResources(), R.drawable.head_bg_mobile_on);
//        mDstB = BitmapFactory.decodeResource(mContext.getResources(), R.drawable.bg_scanning_cautions);
        
        // make a ckeckerboard pattern
        Bitmap bm = Bitmap.createBitmap(new int[] { 0xFFFFFFFF, 0xFFCCCCCC,
                                        0xFFCCCCCC, 0xFFFFFFFF }, 2, 2,
                                        Bitmap.Config.RGB_565);
        mBG = new BitmapShader(bm,
                               Shader.TileMode.REPEAT,
                               Shader.TileMode.REPEAT);
        Matrix m = new Matrix();
        m.setScale(6, 6);
        mBG.setLocalMatrix(m);
        iii = 10;
	}
    
    @Override
	public boolean onTouchEvent(MotionEvent event) {
		// TODO Auto-generated method stub
//    	iii++;
//    	iii = iii % 15;
    	this.invalidate();
		return super.onTouchEvent(event);
	}

	@Override 
    protected void onDraw(Canvas canvas) {
        canvas.drawColor(Color.WHITE);
        
        Paint labelP = new Paint(Paint.ANTI_ALIAS_FLAG);
        labelP.setTextAlign(Paint.Align.CENTER);
        
        Paint paint = new Paint();
        paint.setFilterBitmap(false);
        
        canvas.translate(15, 35);
        
        int x = 0;
        int y = 0;

//        for (int i = 0; i < sModes.length; i++) {
            // draw the border
            paint.setStyle(Paint.Style.STROKE);
            paint.setShader(null);
            canvas.drawRect(0, 0,
                            x + W + 0.5f, y + H + 0.5f, paint);
            
            // draw the checker-board pattern
            paint.setStyle(Paint.Style.FILL);
            paint.setShader(mBG);
            canvas.drawRect(x, y, x + W, y + H, paint);
            canvas.drawBitmap(mSrc0, 0, 0, paint);
            
            // draw the src/dst example into our offscreen bitmap
            int sc = canvas.saveLayer(x, y, x + W, y + H, null,
                                      Canvas.MATRIX_SAVE_FLAG |
                                      Canvas.CLIP_SAVE_FLAG |
                                      Canvas.HAS_ALPHA_LAYER_SAVE_FLAG |
                                      Canvas.FULL_COLOR_LAYER_SAVE_FLAG |
                                      Canvas.CLIP_TO_LAYER_SAVE_FLAG);
            canvas.translate(x, y);
            canvas.drawBitmap(mSrcB, 0, 0, paint);
            paint.setXfermode(sModes[iii]);
            canvas.drawBitmap(mDstB, 0, 30, paint);
            paint.setXfermode(null);
            canvas.restoreToCount(sc);
            
            // draw the label
            // draw the label
            canvas.drawText(sLabels[iii],
                            x + W/2, y - labelP.getTextSize()/2, labelP);
            x += W + 10;
            
            // wrap around when we've drawn enough for one row
            if ((iii % ROW_MAX) == ROW_MAX - 1) {
                x = 0;
                y += H + 30;
            }
//        }
    }
}