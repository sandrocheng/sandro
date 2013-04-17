package com.tencent.qqpimsecure.uilib.view.network;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import java.util.Timer;

public class FlowPercentView extends ImageView
{
  long HighSpeed = 10L;
  private int currentImageRes;
  private boolean isRestart = true;
  private FrameLayout.LayoutParams layoutParams;
  long lowSpeed = 30L;
  private Context mContext;
  private Handler mHandler = new FlowPercentView.1(this);
  private ProcessChangeListener mListener;
  private float mOriButtomHeight;
  private int mOriHeight;
  private float mOriTopHeight;
  float paramA = (float)(this.lowSpeed - this.HighSpeed) / (this.slowSpeedPercent * this.slowSpeedPercent);
  private float prePercent = 100.0F;
  float slowSpeedPercent = 45.0F;

  public FlowPercentView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    this.layoutParams = new FrameLayout.LayoutParams(this.mContext, paramAttributeSet);
  }

  private long equation(float paramFloat)
  {
    return ()(this.paramA * Math.pow(paramFloat - this.slowSpeedPercent, 2.0D) + this.HighSpeed);
  }

  public void addChangeListener(ProcessChangeListener paramProcessChangeListener)
  {
    this.mListener = paramProcessChangeListener;
  }

  public float getPrePercent()
  {
    return this.prePercent;
  }

  public boolean isReStart()
  {
    return this.isRestart;
  }

  public void reflashInAnimation(float paramFloat, long paramLong)
  {
    Message localMessage = this.mHandler.obtainMessage();
    Bundle localBundle = new Bundle();
    localBundle.putFloat("Percent", this.prePercent);
    localMessage.setData(localBundle);
    localMessage.sendToTarget();
    new Timer().schedule(new FlowPercentView.2(this, paramFloat), paramLong);
  }

  public void reflashPercentImage(float paramFloat)
  {
    this.prePercent = paramFloat;
    if ((paramFloat > 100.0F) || (paramFloat < 0.0F))
      throw new IllegalArgumentException("^^ wrong percent" + paramFloat + " in reflesh percent image");
    int i;
    float f;
    if (paramFloat > 10.0F)
    {
      i = 2130837534;
      if (this.currentImageRes != i)
        this.currentImageRes = i;
      setImageResource(this.currentImageRes);
      this.layoutParams.gravity = 80;
      this.mOriHeight = getDrawable().getIntrinsicHeight();
      this.mOriButtomHeight = (0.093023F * this.mOriHeight);
      this.mOriTopHeight = (0.038F * this.mOriHeight);
      if (paramFloat > 0.0F)
        break label195;
      f = 0.0F;
    }
    while (true)
    {
      this.layoutParams.height = ((int)(f + this.mOriButtomHeight));
      setLayoutParams(this.layoutParams);
      invalidate();
      if (this.mListener != null)
        this.mListener.onChange(this.prePercent);
      return;
      if (paramFloat > 0.0F)
      {
        i = 2130837536;
        break;
      }
      i = 2130837535;
      break;
      label195: if (paramFloat >= 100.0F)
        f = this.mOriHeight - this.mOriButtomHeight;
      else
        f = 0.01F * (paramFloat * (this.mOriHeight - this.mOriButtomHeight - this.mOriTopHeight));
    }
  }

  protected void sendChangeOnSpeed(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (paramFloat1 == 0.0F);
    while (true)
    {
      return;
      Message localMessage = this.mHandler.obtainMessage();
      Bundle localBundle = new Bundle();
      localBundle.putFloat("Percent", paramFloat3);
      localMessage.setData(localBundle);
      localMessage.sendToTarget();
      long l = equation(100.0F - paramFloat2 * 100.0F / paramFloat1);
      try
      {
        Thread.sleep(l);
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }

  public void setPrePercent(float paramFloat)
  {
    this.prePercent = paramFloat;
  }

  public void setReStart(boolean paramBoolean)
  {
    this.isRestart = paramBoolean;
  }

  public static abstract interface ProcessChangeListener
  {
    public abstract void onChange(float paramFloat);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.network.FlowPercentView
 * JD-Core Version:    0.6.2
 */