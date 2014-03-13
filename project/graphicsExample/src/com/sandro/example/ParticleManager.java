package com.sandro.example;

import java.util.Random;

public class ParticleManager {

	private int viewWidth;
	
	private int viewHeight;
	
	private Random random;
	
	private Particle[] particles ;
	
	private final static int INIT_PATRICALES = 1000;
	
	public ParticleManager(int viewWidth,int viewHeight){
		this.viewWidth = viewWidth;
		this.viewHeight = viewHeight;
		random = new Random();
		particles = createParticles(INIT_PATRICALES);
	}
	
	private Particle[] createParticles(int num){
		Particle paricles[] = new Particle[num];
		for(int i = 0;i<num;i++){
			Particle p = new Particle((viewWidth/2 - 35) + random.nextInt(70),random.nextInt(60),random);
			paricles[i] = p;
		}
		return paricles;
	}
	
	public int[] getBitmapArray(int[] bitMapArray){
		for(int i = 0;i<particles.length;i++){
			Particle p = particles[i];
			if(p!=null && !p.move(viewWidth,viewHeight,random)){
				particles[i]=null;
			}
		}
		for(Particle p : particles){
			if(p!=null){
				drawPatricle(bitMapArray,p);
			}
		}
		return bitMapArray;
	}

	private void drawPatricle(int[] bitMapArray, Particle p) {
		bitMapArray[p.y * viewWidth + p.x] = p.color;
		
		bitMapArray[p.y * viewWidth + p.x - 1] = p.color;
		bitMapArray[p.y * viewWidth + p.x + 1] = p.color;
		bitMapArray[(p.y-1) * viewWidth + p.x] = p.color;
		bitMapArray[(p.y+1) * viewWidth + p.x] = p.color;
		
		drawBulr((p.y-1) * viewWidth + p.x - 1,bitMapArray);
		drawBulr((p.y-1) * viewWidth + p.x + 1,bitMapArray);
		drawBulr((p.y+1) * viewWidth + p.x - 1,bitMapArray);
		drawBulr((p.y+1) * viewWidth + p.x + 1,bitMapArray);
		
		drawBulr((p.y-2) * viewWidth + p.x ,bitMapArray);
		drawBulr((p.y+2) * viewWidth + p.x ,bitMapArray);
		drawBulr(p.y * viewWidth + p.x - 2,bitMapArray);
		drawBulr(p.y * viewWidth + p.x + 2,bitMapArray);	
		
		drawBulr((p.y -2) * viewWidth + p.x - 2,bitMapArray);
		drawBulr((p.y -2) * viewWidth + p.x + 2,bitMapArray);	
		drawBulr((p.y +2) * viewWidth + p.x - 2,bitMapArray);
		drawBulr((p.y +2) * viewWidth + p.x + 2,bitMapArray);		
	}
	
	private void drawBulr(int arrayIndex,int[] bitMapArray){
		int upcolor = bitMapArray[arrayIndex-viewWidth] >>16;
		int downcolor = bitMapArray[arrayIndex+viewWidth] >>16;
		int rightcolor = bitMapArray[arrayIndex+1] >>16;
		int leftcolor = bitMapArray[arrayIndex-1] >>16;
		
		int color;
		if(bitMapArray[arrayIndex]==0){
			color = (upcolor + downcolor + rightcolor + leftcolor)/4;
		}else{
			color = (upcolor + downcolor + rightcolor + leftcolor + (bitMapArray[arrayIndex]>>16))/5;
		}
		bitMapArray[arrayIndex] = color << 16 | color << 8 | color;
	}
	
}
