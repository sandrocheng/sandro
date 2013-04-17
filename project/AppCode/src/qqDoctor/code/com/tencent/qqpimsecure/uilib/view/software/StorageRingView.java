package com.tencent.qqpimsecure.uilib.view.software;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetrics;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region.Op;
import android.os.Handler;
import android.util.TypedValue;
import android.view.View;
import ec;

public class StorageRingView extends View
{
  private final int ID = (int)(10.0D * Math.random());
  private final int KAnimateStep = 20;
  private final float KLargeNameTextSize = 13.0F;
  private final float KLargeNumberTextSize = 21.0F;
  private final float KLargePercentTextSize = 13.0F;
  private final int KNameColor = -6710887;
  private final float KNameTextSize = 10.0F;
  private final int KNumberColor = -13421773;
  private final float KNumberTextSize = 18.0F;
  private final String KPercentStr = "%";
  private final float KPercentTextSize = 10.0F;
  private float KSweepInc;
  private Bitmap mBgBitmap;
  private int mBufferBgColor = -1118482;
  private Bitmap mBufferBitmap;
  private Canvas mBufferCanvas;
  private Path mClipPath = new Path();
  Handler mHandler = new StorageRingView.1(this);
  private int mHeight;
  private String mNameStr;
  private float mNameTextSize;
  private float mNowSweep;
  private String mNumberStr;
  private float mNumberTextSize;
  private Paint mPaint = new Paint();
  private float mPercentTextSize;
  private Bitmap mRingBitmap;
  private float mRingCenterX;
  private float mRingCenterY;
  private RectF mRingRect;
  private float mTargetSweep;
  private boolean mUseBufferDraw = false;
  private int mWidth;

  public StorageRingView(Context paramContext)
  {
    super(paramContext);
    this.mPaint.setAntiAlias(true);
    this.mBufferBgColor = paramContext.getResources().getColor(2131296282);
    ec.a();
    ec.a(this);
  }

  private void doBufferDraw(Canvas paramCanvas)
  {
    if (this.mBufferCanvas == null)
    {
      this.mBufferBitmap = Bitmap.createBitmap(this.mWidth, this.mHeight, Bitmap.Config.ARGB_8888);
      this.mBufferCanvas = new Canvas();
      this.mBufferCanvas.setBitmap(this.mBufferBitmap);
    }
    this.mBufferCanvas.clipRect(0.0F, 0.0F, this.mWidth, this.mHeight, Region.Op.REPLACE);
    this.mBufferCanvas.drawColor(this.mBufferBgColor);
    doDraw(this.mBufferCanvas);
    paramCanvas.drawBitmap(this.mBufferBitmap, 0.0F, 0.0F, this.mPaint);
  }

  private void doDraw(Canvas paramCanvas)
  {
    if ((this.mBgBitmap == null) || (this.mRingBitmap == null));
    while (true)
    {
      return;
      paramCanvas.drawBitmap(this.mBgBitmap, 0.0F, 0.0F, this.mPaint);
      drawText(paramCanvas);
      if (!this.mClipPath.isEmpty())
        paramCanvas.clipPath(this.mClipPath);
      paramCanvas.drawBitmap(this.mRingBitmap, 0.0F, 0.0F, this.mPaint);
      if (this.mNowSweep < this.mTargetSweep)
        this.mHandler.sendEmptyMessage(0);
    }
  }

  private void drawText(Canvas paramCanvas)
  {
    setTextSpSize(this.mNumberTextSize);
    float f1 = this.mPaint.measureText(this.mNumberStr);
    setTextSpSize(this.mPercentTextSize);
    float f2 = this.mPaint.measureText("%");
    float f3 = this.mRingCenterX - (f2 + f1) / 2.0F;
    this.mPaint.setTextAlign(Paint.Align.LEFT);
    this.mPaint.setColor(-13421773);
    setTextSpSize(this.mNumberTextSize);
    paramCanvas.drawText(this.mNumberStr, f3, this.mRingCenterY, this.mPaint);
    setTextSpSize(this.mPercentTextSize);
    paramCanvas.drawText("%", f1 + f3, this.mRingCenterY, this.mPaint);
    this.mPaint.setTextAlign(Paint.Align.CENTER);
    this.mPaint.setColor(-6710887);
    setTextSpSize(this.mNameTextSize);
    float f4 = this.mPaint.getFontMetrics().bottom - this.mPaint.getFontMetrics().top;
    paramCanvas.drawText(this.mNameStr, this.mRingCenterX, f4 + this.mRingCenterY, this.mPaint);
  }

  private void setRingSweep(float paramFloat)
  {
    this.mClipPath.reset();
    if (paramFloat < 360.0F)
    {
      this.mClipPath.moveTo(this.mRingCenterX, this.mRingCenterY);
      this.mClipPath.arcTo(this.mRingRect, -90.0F, paramFloat);
      this.mClipPath.close();
    }
    invalidate();
  }

  private void setTextSpSize(float paramFloat)
  {
    Context localContext = getContext();
    if (localContext == null);
    for (Resources localResources = Resources.getSystem(); ; localResources = localContext.getResources())
    {
      this.mPaint.setTextSize(TypedValue.applyDimension(2, paramFloat, localResources.getDisplayMetrics()));
      return;
    }
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (!this.mUseBufferDraw);
    try
    {
      doDraw(paramCanvas);
      if (this.mUseBufferDraw)
        doBufferDraw(paramCanvas);
      return;
    }
    catch (UnsupportedOperationException localUnsupportedOperationException)
    {
      while (true)
        this.mUseBufferDraw = true;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(this.mWidth, this.mHeight);
  }

  public void recycleBitmap()
  {
    if (this.mBgBitmap != null)
    {
      this.mBgBitmap.recycle();
      this.mBgBitmap = null;
    }
    if (this.mRingBitmap != null)
    {
      this.mRingBitmap.recycle();
      this.mRingBitmap = null;
    }
    if (this.mBufferBitmap != null)
    {
      this.mBufferBitmap.recycle();
      this.mBufferBitmap = null;
      this.mBufferCanvas = null;
    }
  }

  public void setPercent(int paramInt, boolean paramBoolean)
  {
    int i = 100;
    if (paramInt > i);
    while (true)
    {
      if (i < 0)
        i = 0;
      this.mNumberStr = String.valueOf(i);
      this.mTargetSweep = (i * 360 / 100.0F);
      if (paramBoolean)
      {
        this.mNowSweep = 0.0F;
        this.KSweepInc = (this.mTargetSweep / 20.0F);
      }
      while (true)
      {
        setRingSweep(this.mNowSweep);
        return;
        this.mNowSweep = this.mTargetSweep;
      }
      i = paramInt;
    }
  }

  public void setRes(int paramInt1, int paramInt2, int paramInt3, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    this.mBgBitmap = BitmapFactory.decodeResource(getResources(), paramInt1);
    this.mRingBitmap = BitmapFactory.decodeResource(getResources(), paramInt2);
    this.mWidth = this.mBgBitmap.getWidth();
    this.mHeight = this.mBgBitmap.getHeight();
    this.mRingCenterX = paramFloat1;
    this.mRingCenterY = paramFloat2;
    float f = 2.0F + Math.min(Math.min(this.mRingCenterX, this.mWidth - this.mRingCenterX), Math.min(this.mRingCenterY, this.mHeight - this.mRingCenterY));
    this.mRingRect = new RectF(this.mRingCenterX - f, this.mRingCenterY - f, f + this.mRingCenterX, f + this.mRingCenterY);
    this.mNameStr = getContext().getString(paramInt3);
    if (paramBoolean)
    {
      this.mNumberTextSize = 21.0F;
      this.mPercentTextSize = 13.0F;
    }
    for (this.mNameTextSize = 13.0F; ; this.mNameTextSize = 10.0F)
    {
      return;
      this.mNumberTextSize = 18.0F;
      this.mPercentTextSize = 10.0F;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.software.StorageRingView
 * JD-Core Version:    0.6.2
 */