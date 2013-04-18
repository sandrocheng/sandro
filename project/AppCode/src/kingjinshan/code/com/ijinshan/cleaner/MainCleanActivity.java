package com.ijinshan.cleaner;

import android.app.TabActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.widget.RadioGroup;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;
import com.ijinshan.cleaner.adapter.CustomTabHost;
import com.jxphone.mosecurity.a.a;

public class MainCleanActivity extends TabActivity
  implements GestureDetector.OnGestureListener, TabHost.OnTabChangeListener
{
  private GestureDetector a;
  private CustomTabHost b;
  private RadioGroup c;
  private int d = 0;

  private void a()
  {
    TabHost.TabSpec localTabSpec = this.b.newTabSpec("0");
    Intent localIntent = new Intent(this, CacheCleanerActivity.class);
    localTabSpec.setIndicator("CacheCleanerActivity").setContent(localIntent);
    this.b.addTab(localTabSpec);
  }

  private void b()
  {
    TabHost.TabSpec localTabSpec = this.b.newTabSpec("1");
    Intent localIntent = new Intent(this, SDcardCleanerActivity.class);
    localTabSpec.setIndicator("SDcardCleanerActivity").setContent(localIntent);
    this.b.addTab(localTabSpec);
  }

  private void c()
  {
    TabHost.TabSpec localTabSpec = this.b.newTabSpec("2");
    Intent localIntent = new Intent(this, HistoryCleanerActivity.class);
    localTabSpec.setIndicator("HistoryCleanerActivity").setContent(localIntent);
    this.b.addTab(localTabSpec);
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    return super.dispatchTouchEvent(paramMotionEvent);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903085);
    if (paramBundle == null)
      a.i(this, "mg_rub_clean_main");
    this.c = ((RadioGroup)findViewById(2131230983));
    this.b = ((CustomTabHost)findViewById(16908306));
    TabHost.TabSpec localTabSpec1 = this.b.newTabSpec("0");
    Intent localIntent1 = new Intent(this, CacheCleanerActivity.class);
    localTabSpec1.setIndicator("CacheCleanerActivity").setContent(localIntent1);
    this.b.addTab(localTabSpec1);
    TabHost.TabSpec localTabSpec2 = this.b.newTabSpec("1");
    Intent localIntent2 = new Intent(this, SDcardCleanerActivity.class);
    localTabSpec2.setIndicator("SDcardCleanerActivity").setContent(localIntent2);
    this.b.addTab(localTabSpec2);
    TabHost.TabSpec localTabSpec3 = this.b.newTabSpec("2");
    Intent localIntent3 = new Intent(this, HistoryCleanerActivity.class);
    localTabSpec3.setIndicator("HistoryCleanerActivity").setContent(localIntent3);
    this.b.addTab(localTabSpec3);
    this.c.check(2131230984);
    this.c.setOnCheckedChangeListener(new z(this));
    this.b.setOnTabChangedListener(this);
    this.a = new GestureDetector(this);
    new aa(this);
  }

  public boolean onDown(MotionEvent paramMotionEvent)
  {
    return false;
  }

  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    return false;
  }

  public void onLongPress(MotionEvent paramMotionEvent)
  {
  }

  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    return false;
  }

  public void onShowPress(MotionEvent paramMotionEvent)
  {
  }

  public boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    return false;
  }

  public void onTabChanged(String paramString)
  {
    int i = Integer.valueOf(paramString).intValue();
    int j = 0;
    if (j < this.b.getChildCount())
    {
      if (j == i)
        this.b.getChildAt(Integer.valueOf(j).intValue());
      while (true)
      {
        j++;
        break;
        this.b.getChildAt(Integer.valueOf(j).intValue());
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.MainCleanActivity
 * JD-Core Version:    0.6.2
 */