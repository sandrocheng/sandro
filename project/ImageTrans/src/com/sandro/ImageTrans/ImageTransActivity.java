package com.sandro.ImageTrans;

import android.app.Activity;
import android.os.Bundle;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.GestureDetector.OnGestureListener;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.ViewFlipper;

public class ImageTransActivity extends Activity implements OnGestureListener {
	
    private ViewFlipper flipper; 
    private GestureDetector detector; 

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.flipper_layout); 
        detector = new GestureDetector(this);
        flipper = (ViewFlipper) this.findViewById(R.id.ViewFlipper1); 

        flipper.addView(addImageView(R.drawable.one)); 
        flipper.addView(addImageView(R.drawable.two)); 
        flipper.addView(addImageView(R.drawable.three)); 
        flipper.addView(addImageView(R.drawable.four)); 

    }
    
    @Override 
    public boolean onTouchEvent(MotionEvent event) { 
        return this.detector.onTouchEvent(event); 
    } 

    private View addImageView(int id) { 
        ImageView iv = new ImageView(this); 
        iv.setImageResource(id); 
        return iv; 
    } 


    @Override
    public void onResume(){
    	super.onResume();
    }

	@Override
	public boolean onDown(MotionEvent arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, 
            float velocityY) {
		  if (e1.getX() - e2.getX() > 120) { 
	            this.flipper.setInAnimation(AnimationUtils.loadAnimation(this, R.anim.push_left_in)); 
	            this.flipper.setOutAnimation(AnimationUtils.loadAnimation(this, R.anim.push_left_out)); 
	            this.flipper.showNext(); 
	            return true; 
	        } else if (e1.getX() - e2.getX() < -120) { 
	            this.flipper.setInAnimation(AnimationUtils.loadAnimation(this, R.anim.push_right_in)); 
	            this.flipper.setOutAnimation(AnimationUtils.loadAnimation(this, R.anim.push_right_out)); 
	            this.flipper.showPrevious(); 
	            return true; 
	        } 
	         
	        return false; 
	}

	@Override
	public void onLongPress(MotionEvent arg0) {
	}

	@Override
	public boolean onScroll(MotionEvent arg0, MotionEvent arg1, float arg2,
			float arg3) {
		return false;
	}

	@Override
	public void onShowPress(MotionEvent arg0) {
	}

	@Override
	public boolean onSingleTapUp(MotionEvent arg0) {
		return false;
	}
  
	
}