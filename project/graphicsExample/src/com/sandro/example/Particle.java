package com.sandro.example;

import java.util.Random;

public class Particle {

	private static final int P_WIDTH = 5;
	private static final int P_HEIGHT = 5;
	public int x;
	public int y;
	private int dy;
	private int dx;
	
	public int color = 0xFFFFFF;
	
	public Particle(int x,int y,Random random){
		this.x = x;
		this.y = y;
		initSpeed(random);
	}

	private void initSpeed(Random random) {
		dx = 3 - random.nextInt(7);
		dy =  3 - random.nextInt(7);
		if(dx==0 || dy==0){
			dx = getNoNZeroSpeed(random);
			dy = getNoNZeroSpeed(random);
		}
	}
	
	private int getNoNZeroSpeed(Random random){
		while(true){
			int x = 1 - random.nextInt(3);
			if(x!=0){
				return x;
			}
		}
	}
	
	public boolean move(int width,int height,Random random){
		x+=dx;
		y+=dy;
		if(x <P_WIDTH){
			x = P_WIDTH + 1;
			initSpeed(random);
		}
		if(x>=width-P_WIDTH){
			x = width-P_WIDTH - 1;
			initSpeed(random);
		}
		if(y>=height-P_HEIGHT){
			y = height-P_HEIGHT - 1;
			initSpeed(random);		
		}
		if(y<=P_HEIGHT){
			y = P_HEIGHT + 1;
			initSpeed(random);	
		}
		return true;
	}
}
