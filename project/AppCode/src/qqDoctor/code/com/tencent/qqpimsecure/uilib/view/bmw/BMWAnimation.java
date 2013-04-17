package com.tencent.qqpimsecure.uilib.view.bmw;

import android.graphics.Matrix;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.animation.RotateAnimation;
import android.view.animation.Transformation;
import java.util.Timer;

public class BMWAnimation extends RotateAnimation
{
  private int dulation = 5000;
  private float fromDegrees = 0.0F;
  private RotateTableView.ProcessChangeListener listener;
  private Handler mHandler = new BMWAnimation.1(this);
  private float nowDifferDegree = 0.0F;
  private float pivotXValue;
  private float pivotYValue;
  private int prePercent = -1;
  private float range = 0.0F;
  private int thisAnimateHeight;
  private int thisAnimateWidth;
  private float toDegrees = 0.0F;
  private float totalDifferDegree = 0.0F;
  private float zeroProcess = 0.0F;

  public BMWAnimation(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    setDuration(this.dulation);
    setFillAfter(true);
    this.fromDegrees = paramFloat1;
    this.toDegrees = paramFloat2;
    this.range = (this.toDegrees - this.fromDegrees);
    this.pivotXValue = paramFloat3;
    this.pivotYValue = paramFloat4;
    this.nowDifferDegree = this.fromDegrees;
    if (this.range == 0.0F);
    for (this.zeroProcess = 0.0F; ; this.zeroProcess = (100.0F * (-this.fromDegrees / this.range)))
      return;
  }

  private int degree2Process(float paramFloat)
  {
    return (int)(paramFloat / (0.01F * this.range) + this.zeroProcess);
  }

  private float process2Degree(int paramInt)
  {
    return (paramInt - this.zeroProcess) * (0.01F * this.range);
  }

  private void reflashInAnimation(int paramInt)
  {
    if (this.prePercent < 0)
    {
      this.prePercent = paramInt;
      this.mHandler.removeMessages(0);
      Message localMessage2 = this.mHandler.obtainMessage(0);
      Bundle localBundle2 = new Bundle();
      localBundle2.putInt("Percent", paramInt);
      localMessage2.setData(localBundle2);
      localMessage2.sendToTarget();
    }
    while (true)
    {
      return;
      int i = Math.abs(this.prePercent - paramInt);
      if (i != 0)
      {
        int j = (int)(this.dulation / i);
        this.mHandler.removeMessages(0);
        Message localMessage1 = this.mHandler.obtainMessage(0);
        Bundle localBundle1 = new Bundle();
        localBundle1.putInt("Percent", this.prePercent);
        localMessage1.setData(localBundle1);
        localMessage1.sendToTarget();
        new Timer().schedule(new BMWAnimation.2(this, paramInt, j), 20L);
      }
    }
  }

  private void reflashPercentImage(int paramInt)
  {
    this.prePercent = paramInt;
    if ((paramInt <= 100) || (paramInt >= 0))
      this.listener.onChange(this.prePercent);
  }

  public void addListener(RotateTableView.ProcessChangeListener paramProcessChangeListener)
  {
    this.listener = paramProcessChangeListener;
  }

  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    Matrix localMatrix = paramTransformation.getMatrix();
    this.nowDifferDegree = (this.fromDegrees + paramFloat * this.totalDifferDegree);
    localMatrix.postRotate(this.nowDifferDegree, this.thisAnimateWidth * this.pivotXValue, this.thisAnimateHeight * this.pivotYValue);
  }

  public void initialize(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.initialize(paramInt1, paramInt2, paramInt3, paramInt4);
    this.thisAnimateWidth = paramInt1;
    this.thisAnimateHeight = paramInt2;
  }

  public void resetAnimation(int paramInt)
  {
    this.fromDegrees = this.nowDifferDegree;
    this.toDegrees = process2Degree(paramInt);
    this.totalDifferDegree = (this.toDegrees - this.fromDegrees);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.bmw.BMWAnimation
 * JD-Core Version:    0.6.2
 */