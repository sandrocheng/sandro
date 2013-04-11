package com.sandro.ImageTrans;

import java.io.InputStream;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.os.Bundle;
import android.view.View;

public class AlphaBitmapActivity extends Activity{

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(new SampleView(this));
    }
    
    private static class SampleView extends View{
    	private Bitmap mBitmap;
    	
    	private Bitmap mBitmap2;
    	
    	private Bitmap mBitmap3;
    	private Shader mShader;
    	
    	public SampleView(Context context){
    		super(context);
    		setFocusable(true);
    		
    		InputStream is = context.getResources().openRawResource(R.drawable.full_scan_laser);
    		mBitmap = BitmapFactory.decodeStream(is);
    		
    		mBitmap2 = mBitmap.extractAlpha();
    		
    		/**
    		 * 其实这都是色彩的存储方法：我们知道ARGB指的是一种色彩模式，里面A代表Alpha，
    		 * R表示red，G表示green，B表示blue，其实所有的可见色都是由红绿蓝组成的，所以红绿蓝又称为三原色，
    		 * 每个原色都存储着所表示颜色的信息值
				说白了ALPHA_8就是Alpha由8位组成
				ARGB_4444就是由4个4位组成即16位，
				ARGB_8888就是由4个8位组成即32位，
				RGB_565就是R为5位，G为6位，B为5位共16位

				由此可见：
				ALPHA_8 代表8位Alpha位图
				ARGB_4444 代表16位ARGB位图
				ARGB_8888 代表32位ARGB位图
				RGB_565 代表8位RGB位图

				位图位数越高代表其可以存储的颜色信息越多，当然图像也就越逼真
    		 */
    		mBitmap3 = Bitmap.createBitmap(200, 200, Bitmap.Config.ALPHA_8);
    		drawIntoBitmap(mBitmap3);
            mShader = new LinearGradient(0, 0, 100, 70, new int[] {
                    Color.RED, Color.GREEN, Color.BLUE,Color.RED },
                    null, Shader.TileMode.REPEAT);
    	}
    	
        private static void drawIntoBitmap(Bitmap bm) {
            float x = bm.getWidth();
            float y = bm.getHeight();
            Canvas c = new Canvas(bm);
            Paint p = new Paint();
            p.setAntiAlias(true);
            
            p.setAlpha(0x80);
            c.drawCircle(x/2, y/2, x/2, p);
            
            p.setAlpha(0x30);
            p.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
            p.setTextSize(60);
            p.setTextAlign(Paint.Align.CENTER);
            Paint.FontMetrics fm = p.getFontMetrics();
            c.drawText("Alpha", x/2, (y-fm.ascent)/2, p);
        }
    	
    	@Override
    	protected void onDraw(Canvas canvas){
    		canvas.drawColor(Color.WHITE);
    		
    		int x = 10;
    		int y = 10;
    		Paint p = new Paint();
            p.setColor(Color.BLUE);
            canvas.drawBitmap(mBitmap, x, y, p);
            
            x += mBitmap.getWidth() + 5;
            
            canvas.drawBitmap(mBitmap2, x, y, p);
            
            y+=mBitmap3.getHeight() + 5;
            p.setShader(mShader);
            canvas.drawBitmap(mBitmap3, 10, y, p);
    	}
    }
}
