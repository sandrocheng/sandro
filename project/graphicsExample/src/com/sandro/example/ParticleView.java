package com.sandro.example;

import java.util.Random;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;

public class ParticleView extends View{

	private static final int VIEW_WIDTH = 480;
	
	private static final int VIEW_HEIGHT = 300;
	
	private Paint mPaint;
	
	private int[] bitMapArray = new int[VIEW_WIDTH * VIEW_HEIGHT];
	
	private Random random = new Random();
	
	public ParticleView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		init(context);
	}

	public ParticleView(Context context, AttributeSet attrs) {
		super(context, attrs);
		init(context);
	}
	
	public ParticleView(Context context) {
		super(context);
		init(context);
	}	
	
	private void init(Context context){
		mPaint = new Paint();
		for(int i = VIEW_WIDTH * (VIEW_HEIGHT - 1);i< bitMapArray.length;i++ ){
			int r = random.nextInt(255);
			bitMapArray[i] = r<<16 | r<<8 | r;
			if(i<bitMapArray.length -3){
				bitMapArray[i+1] = r<<16 | r<<8 | r;
				bitMapArray[i+2] = r<<16 | r<<8 | r;
			}
		}
	}
	
	@Override
	protected void onDraw(Canvas canvas){
		canvas.drawBitmap(bitMapArray, 0, VIEW_WIDTH, 0, 0, VIEW_WIDTH, VIEW_HEIGHT - 3, false, mPaint);
	}	
	
	int count;
	double piRate = Math.PI/180;
	boolean dir = false;
	boolean initMId = false;
	int fullColor = 2550;
	int dcolor = 0;
	boolean end =false;
	public boolean changeView(){	
		if(end){
			return false;
		}
		long time = System.currentTimeMillis();
		int ran = random.nextInt(20) - 10;
		dcolor +=4;
		fullColor-=dcolor/10;
		if(fullColor<10){
			bitMapArray = null;
			bitMapArray = new int[VIEW_WIDTH * VIEW_HEIGHT];
			this.invalidate();
			end = true;
			return false;
		}
		int colorrandom = random.nextInt(fullColor/10);
		int colorrandom1= fullColor/10 - colorrandom;
		count++;
		mPaint = new Paint();
		for(int i = VIEW_WIDTH * (VIEW_HEIGHT - 1);i< bitMapArray.length;i++ ){
			int r;
			if(fullColor>2000){
				r= colorrandom + (int)(colorrandom1*Math.sin((i + count + ran)%(VIEW_WIDTH - 100) * piRate));
			}else{
				r= colorrandom + (int)(colorrandom1*Math.cos((i + count + ran)%(VIEW_WIDTH -100) * piRate));
			}
			if(r>255){
				r = 255;
			}
			bitMapArray[i] = r<<16 | r<<8 | r;
		}
		if(!initMId){
			for (int j = 0; j < VIEW_HEIGHT; j++) {
				for (int i = VIEW_WIDTH / 2 - 20; i < VIEW_WIDTH / 2 + 20; i++) {
					
					int color =0;
					if(j>VIEW_HEIGHT-255){
						color = j - (VIEW_HEIGHT-255);
					}
					bitMapArray[j * VIEW_WIDTH + i] = color<<16 | color<<8 | color;
				}
			}
			initMId = true;
		}

		for(int i = VIEW_WIDTH * (VIEW_HEIGHT - 1) - 1;i>=VIEW_WIDTH;i-- ){
			int colorbotom = bitMapArray[i + VIEW_WIDTH] >> 16;
			if(colorbotom == 0){
				continue;
			}
			
			int currow = i / VIEW_WIDTH;
			int lefrow = (i - 1) / VIEW_WIDTH;
			int rightrow = (i + 1) / VIEW_WIDTH;
			if (currow == lefrow && currow == rightrow) {
				int colorleft = bitMapArray[i - 1] >> 16;
				int colorright = bitMapArray[i + 1] >> 16;
				int color;
				if(fullColor<1300){
					color = (colorbotom + colorleft + colorright) / 3;		
				}else{
					int colleftdown = bitMapArray[i - 1 + VIEW_WIDTH] >> 16;
					int colorrightdown = bitMapArray[i + 1 + VIEW_WIDTH] >> 16;
					color = (colorbotom + colorleft + colorright + colleftdown + colorrightdown) / 5;					
				}
				
				bitMapArray[i] = color << 16 | color << 8 | color;
			} else {
				int color = colorbotom / 3;
				bitMapArray[i] = color << 16 | color << 8 | color;
			}
		}
		Log.i("sandro", "" + (System.currentTimeMillis() - time));
		this.invalidate();
		return true;
	}

}
