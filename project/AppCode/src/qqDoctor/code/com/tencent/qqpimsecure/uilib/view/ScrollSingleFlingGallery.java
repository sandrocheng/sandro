package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.view.deskassistance.DeskAssistanceWindow;

public class ScrollSingleFlingGallery extends SingleFlingGallery
{
  private Path mPath = new Path();
  private int mZoomInSide = -1;

  public ScrollSingleFlingGallery(Context paramContext)
  {
    super(paramContext);
  }

  public ScrollSingleFlingGallery(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public ScrollSingleFlingGallery(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void cutCanvas(Canvas paramCanvas)
  {
    paramCanvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
    int i = getHeight();
    int j = getWidth();
    int k = (int)(0.5F + 2.0F * QQPimApplication.a().getResources().getDisplayMetrics().density);
    int m = i / 2;
    this.mPath.reset();
    if (this.mZoomInSide == DeskAssistanceWindow.ZOOM_IN_SIDE_LEFT)
    {
      this.mPath.moveTo(0.0F, 0.0F);
      this.mPath.lineTo(j - m - k, 0.0F);
      RectF localRectF2 = new RectF(j - i - k, 0.0F, j - k, i);
      this.mPath.arcTo(localRectF2, -90.0F, 180.0F);
      this.mPath.lineTo(j - m - k, getHeight());
      this.mPath.lineTo(0.0F, getHeight());
    }
    while (true)
    {
      this.mPath.close();
      paramCanvas.clipPath(this.mPath);
      return;
      if (this.mZoomInSide == DeskAssistanceWindow.ZOOM_IN_SIDE_RIGHT)
      {
        this.mPath.moveTo(j, getHeight());
        this.mPath.lineTo(m + k, getHeight());
        this.mPath.lineTo(m + k, i);
        RectF localRectF1 = new RectF(k, 0.0F, i, i);
        this.mPath.arcTo(localRectF1, 90.0F, 180.0F);
        this.mPath.lineTo(j, 0.0F);
      }
    }
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    cutCanvas(paramCanvas);
    super.dispatchDraw(paramCanvas);
  }

  public void setZoomSide(int paramInt)
  {
    this.mZoomInSide = paramInt;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.ScrollSingleFlingGallery
 * JD-Core Version:    0.6.2
 */