package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;

public class ScoreRollBoxView extends View
{
  private static final int MSG_NUMBER_ANIM = 1;
  private static final int MSG_REFLASH = 2;
  private final int END_ANIMATION_FRAME = 20;
  private int Frame;
  private int backTranslateX;
  private Bitmap box;
  private int boxClipH;
  private int boxClipW;
  private int boxClipX;
  private int boxClipY;
  private Rect boxSrcRect;
  private Bitmap cir;
  private Bitmap cirGreed;
  private Bitmap cirOrange;
  private Bitmap cirRed;
  private int clipHeight;
  private int clipWidth;
  private int disY;
  private boolean enableColroScore;
  private int endAnimationFrameOne;
  private int endAnimationFrameThree;
  private int endAnimationFrameTwo;
  private int endRollH;
  private boolean isAnimationing;
  private boolean isEndAnimation;
  private Context mContext;
  private Handler mHandler = new ScoreRollBoxView.1(this);
  private Paint mPaint;
  private Bitmap number;
  private final int numberCount = 10;
  private Bitmap numberGreed;
  private Bitmap numberOrange;
  private Bitmap numberRed;
  private Rect numberSrcRect;
  private int oneNumberTranslateX;
  private int oneTranslateY;
  private Bitmap outBox;
  private Rect outBoxSrcRect;
  private int score;
  private int threeNumberTranslateX;
  private int threeTranslateY;
  private int twoNumberTranslateX;
  private int twoTranslateY;

  public ScoreRollBoxView(Context paramContext)
  {
    super(paramContext);
    initData(paramContext);
  }

  public ScoreRollBoxView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initData(paramContext);
  }

  private int dip2px(float paramFloat)
  {
    return (int)(0.5F + paramFloat * this.mContext.getResources().getDisplayMetrics().density);
  }

  private void drawScene(Canvas paramCanvas)
  {
    paramCanvas.clipRect(0, 0, this.clipWidth, this.clipHeight);
    paramCanvas.drawBitmap(this.outBox, this.outBoxSrcRect, this.outBoxSrcRect, this.mPaint);
    paramCanvas.clipRect(this.boxClipX, this.boxClipY, this.boxClipW, this.boxClipH);
    paramCanvas.translate(this.oneNumberTranslateX, this.disY + this.oneTranslateY);
    paramCanvas.drawBitmap(getCurrentNumberImg(), this.numberSrcRect, this.numberSrcRect, this.mPaint);
    paramCanvas.translate(this.twoNumberTranslateX, -this.oneTranslateY + this.twoTranslateY);
    paramCanvas.drawBitmap(getCurrentNumberImg(), this.numberSrcRect, this.numberSrcRect, this.mPaint);
    paramCanvas.translate(this.threeNumberTranslateX, -this.twoTranslateY + this.threeTranslateY);
    paramCanvas.drawBitmap(getCurrentNumberImg(), this.numberSrcRect, this.numberSrcRect, this.mPaint);
    paramCanvas.translate(this.backTranslateX, -this.threeTranslateY - this.disY);
    if (!this.isAnimationing)
      paramCanvas.drawBitmap(getCurrentCirImg(), this.boxSrcRect, this.boxSrcRect, this.mPaint);
    paramCanvas.drawBitmap(this.box, this.boxSrcRect, this.boxSrcRect, this.mPaint);
  }

  private Bitmap getCurrentCirImg()
  {
    Bitmap localBitmap;
    if (this.enableColroScore)
      if ((this.score <= 100) && (this.score >= 80))
        localBitmap = this.cirGreed;
    while (true)
    {
      return localBitmap;
      if ((this.score < 80) && (this.score >= 60))
      {
        localBitmap = this.cirOrange;
      }
      else if ((this.score < 60) && (this.score >= 0))
      {
        localBitmap = this.cirRed;
      }
      else
      {
        localBitmap = this.cir;
        continue;
        localBitmap = this.cir;
      }
    }
  }

  private Bitmap getCurrentNumberImg()
  {
    Bitmap localBitmap;
    if (this.enableColroScore)
      if ((this.score <= 100) && (this.score >= 80))
        localBitmap = this.numberGreed;
    while (true)
    {
      return localBitmap;
      if ((this.score < 80) && (this.score >= 60))
      {
        localBitmap = this.numberOrange;
      }
      else if ((this.score < 60) && (this.score >= 0))
      {
        localBitmap = this.numberRed;
      }
      else
      {
        localBitmap = this.number;
        continue;
        localBitmap = this.number;
      }
    }
  }

  private void initData(Context paramContext)
  {
    this.mContext = paramContext;
    this.Frame = dip2px(13.0F);
    this.mPaint = new Paint();
    this.mPaint.setAntiAlias(true);
    this.mPaint.setStrokeWidth(6.0F);
    this.mPaint.setTextSize(16.0F);
    this.mPaint.setTextAlign(Paint.Align.RIGHT);
    this.mPaint.setColor(-16777216);
    Resources localResources = getResources();
    this.number = BitmapFactory.decodeResource(localResources, 2130838094);
    this.numberGreed = BitmapFactory.decodeResource(localResources, 2130838095);
    this.numberRed = BitmapFactory.decodeResource(localResources, 2130838097);
    this.numberOrange = BitmapFactory.decodeResource(localResources, 2130838096);
    this.box = BitmapFactory.decodeResource(localResources, 2130838098);
    this.outBox = BitmapFactory.decodeResource(localResources, 2130838099);
    this.cirGreed = BitmapFactory.decodeResource(localResources, 2130837824);
    this.cirRed = BitmapFactory.decodeResource(localResources, 2130837825);
    this.cirOrange = BitmapFactory.decodeResource(localResources, 2130837826);
    this.cir = BitmapFactory.decodeResource(localResources, 2130837823);
    this.clipWidth = this.outBox.getWidth();
    this.clipHeight = this.outBox.getHeight();
    this.numberSrcRect = new Rect();
    this.numberSrcRect.left = 0;
    this.numberSrcRect.top = 0;
    this.numberSrcRect.right = this.number.getWidth();
    this.numberSrcRect.bottom = this.number.getHeight();
    this.boxSrcRect = new Rect();
    this.boxSrcRect.left = 0;
    this.boxSrcRect.top = 0;
    this.boxSrcRect.right = this.box.getWidth();
    this.boxSrcRect.bottom = this.box.getHeight();
    this.outBoxSrcRect = new Rect();
    this.outBoxSrcRect.left = 0;
    this.outBoxSrcRect.top = 0;
    this.outBoxSrcRect.right = this.outBox.getWidth();
    this.outBoxSrcRect.bottom = this.outBox.getHeight();
    this.disY = ((this.box.getHeight() - this.number.getHeight() / 10) / 2 + dip2px(2.0F));
    this.boxClipX = dip2px(4.0F);
    this.boxClipY = dip2px(16.0F);
    this.boxClipW = (this.clipWidth - dip2px(6.0F));
    this.boxClipH = (this.clipHeight - dip2px(11.0F));
    this.oneNumberTranslateX = dip2px(17.0F);
    this.twoNumberTranslateX = (this.number.getWidth() + dip2px(19.0F));
    this.threeNumberTranslateX = (this.number.getWidth() + dip2px(18.0F));
    this.backTranslateX = (-dip2px(54.0F) - 2 * this.number.getWidth());
    this.endRollH = (-(this.number.getHeight() - this.number.getHeight() / 10 / 2));
  }

  private void setIsColroScore(boolean paramBoolean)
  {
    this.enableColroScore = paramBoolean;
  }

  private void stopAnimation()
  {
    this.isAnimationing = false;
  }

  public void detroy()
  {
    if (this.number != null)
      this.number.recycle();
    if (this.box != null)
      this.box.recycle();
    if (this.numberGreed != null)
      this.numberGreed.recycle();
    if (this.numberRed != null)
      this.numberRed.recycle();
    if (this.numberOrange != null)
      this.numberOrange.recycle();
    if (this.outBox != null)
      this.outBox.recycle();
    if (this.cirGreed != null)
      this.cirGreed.recycle();
    if (this.cirRed != null)
      this.cirRed.recycle();
    if (this.cirOrange != null)
      this.cirOrange.recycle();
    if (this.cir != null)
      this.cir.recycle();
  }

  public void endScroll()
  {
    this.isEndAnimation = true;
    this.endAnimationFrameOne = 20;
    this.endAnimationFrameTwo = 40;
    this.endAnimationFrameThree = 60;
    this.enableColroScore = true;
  }

  public boolean getAnimationing()
  {
    return this.isAnimationing;
  }

  public int getScore()
  {
    return this.score;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    paramCanvas.save();
    drawScene(paramCanvas);
    paramCanvas.restore();
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(this.outBox.getWidth(), this.outBox.getHeight());
  }

  public void setScore(int paramInt)
  {
    this.isAnimationing = false;
    this.score = paramInt;
    this.oneTranslateY = (-(paramInt / 100) * this.number.getHeight() / 10);
    this.twoTranslateY = (-(paramInt % 100 / 10) * this.number.getHeight() / 10);
    this.threeTranslateY = (-(paramInt % 10) * this.number.getHeight() / 10);
    this.mHandler.sendEmptyMessageDelayed(2, 0L);
  }

  public void startAnimation()
  {
    setScore(369);
    this.isAnimationing = true;
    this.enableColroScore = false;
    this.mHandler.sendEmptyMessage(1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.ScoreRollBoxView
 * JD-Core Version:    0.6.2
 */