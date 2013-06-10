package org.antivirus.license.qrreader.general;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.google.zxing.ResultPoint;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.antivirus.license.qrreader.camera.CameraManager;

public final class ViewfinderView extends View
{
  private static final long ANIMATION_DELAY = 80L;
  private static final int CURRENT_POINT_OPACITY = 160;
  private static final int MAX_RESULT_POINTS = 20;
  private static final int POINT_SIZE = 6;
  private static final int[] SCANNER_ALPHA = { 0, 64, 128, 192, 255, 192, 128, 64 };
  private CameraManager cameraManager;
  private final int frameColor;
  private final int laserColor;
  private List lastPossibleResultPoints;
  private final int maskColor;
  private final Paint paint = new Paint(1);
  private List possibleResultPoints;
  private Bitmap resultBitmap;
  private final int resultColor;
  private final int resultPointColor;
  private int scannerAlpha;

  public ViewfinderView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    Resources localResources = getResources();
    this.maskColor = localResources.getColor(2131165222);
    this.resultColor = localResources.getColor(2131165218);
    this.frameColor = localResources.getColor(2131165220);
    this.laserColor = localResources.getColor(2131165221);
    this.resultPointColor = localResources.getColor(2131165213);
    this.scannerAlpha = 0;
    this.possibleResultPoints = new ArrayList(5);
    this.lastPossibleResultPoints = null;
  }

  public final void addPossibleResultPoint(ResultPoint paramResultPoint)
  {
    synchronized (this.possibleResultPoints)
    {
      ???.add(paramResultPoint);
      int i = ???.size();
      if (i > 20)
        ???.subList(0, i - 10).clear();
      return;
    }
  }

  public final void drawResultBitmap(Bitmap paramBitmap)
  {
    this.resultBitmap = paramBitmap;
    invalidate();
  }

  public final void drawViewfinder()
  {
    Bitmap localBitmap = this.resultBitmap;
    this.resultBitmap = null;
    if (localBitmap != null)
      localBitmap.recycle();
    invalidate();
  }

  public final void onDraw(Canvas paramCanvas)
  {
    Rect localRect1 = this.cameraManager.getFramingRect();
    if (localRect1 == null);
    while (true)
    {
      return;
      int i = paramCanvas.getWidth();
      int j = paramCanvas.getHeight();
      Paint localPaint = this.paint;
      if (this.resultBitmap != null);
      for (int k = this.resultColor; ; k = this.maskColor)
      {
        localPaint.setColor(k);
        paramCanvas.drawRect(0.0F, 0.0F, i, localRect1.top, this.paint);
        paramCanvas.drawRect(0.0F, localRect1.top, localRect1.left, 1 + localRect1.bottom, this.paint);
        paramCanvas.drawRect(1 + localRect1.right, localRect1.top, i, 1 + localRect1.bottom, this.paint);
        paramCanvas.drawRect(0.0F, 1 + localRect1.bottom, i, j, this.paint);
        if (this.resultBitmap == null)
          break label186;
        this.paint.setAlpha(160);
        paramCanvas.drawBitmap(this.resultBitmap, null, localRect1, this.paint);
        break;
      }
      label186: this.paint.setColor(this.frameColor);
      paramCanvas.drawRect(localRect1.left, localRect1.top, 1 + localRect1.right, 2 + localRect1.top, this.paint);
      paramCanvas.drawRect(localRect1.left, 2 + localRect1.top, 2 + localRect1.left, -1 + localRect1.bottom, this.paint);
      paramCanvas.drawRect(-1 + localRect1.right, localRect1.top, 1 + localRect1.right, -1 + localRect1.bottom, this.paint);
      paramCanvas.drawRect(localRect1.left, -1 + localRect1.bottom, 1 + localRect1.right, 1 + localRect1.bottom, this.paint);
      this.paint.setColor(this.laserColor);
      this.paint.setAlpha(SCANNER_ALPHA[this.scannerAlpha]);
      this.scannerAlpha = ((1 + this.scannerAlpha) % SCANNER_ALPHA.length);
      int m = localRect1.height() / 2 + localRect1.top;
      paramCanvas.drawRect(2 + localRect1.left, m - 1, -1 + localRect1.right, m + 2, this.paint);
      Rect localRect2 = this.cameraManager.getFramingRectInPreview();
      float f1 = localRect1.width() / localRect2.width();
      float f2 = localRect1.height() / localRect2.height();
      List localList1 = this.possibleResultPoints;
      List localList2 = this.lastPossibleResultPoints;
      int n = localRect1.left;
      int i1 = localRect1.top;
      if (localList1.isEmpty())
        this.lastPossibleResultPoints = null;
      while (localList2 != null)
      {
        this.paint.setAlpha(80);
        this.paint.setColor(this.resultPointColor);
        try
        {
          Iterator localIterator2 = localList2.iterator();
          while (localIterator2.hasNext())
          {
            ResultPoint localResultPoint1 = (ResultPoint)localIterator2.next();
            paramCanvas.drawCircle(n + (int)(f1 * localResultPoint1.getX()), i1 + (int)(f2 * localResultPoint1.getY()), 3.0F, this.paint);
          }
        }
        finally
        {
        }
        this.possibleResultPoints = new ArrayList(5);
        this.lastPossibleResultPoints = localList1;
        this.paint.setAlpha(160);
        this.paint.setColor(this.resultPointColor);
        try
        {
          Iterator localIterator1 = localList1.iterator();
          while (localIterator1.hasNext())
          {
            ResultPoint localResultPoint2 = (ResultPoint)localIterator1.next();
            paramCanvas.drawCircle(n + (int)(f1 * localResultPoint2.getX()), i1 + (int)(f2 * localResultPoint2.getY()), 6.0F, this.paint);
          }
        }
        finally
        {
        }
      }
      postInvalidateDelayed(80L, -6 + localRect1.left, -6 + localRect1.top, 6 + localRect1.right, 6 + localRect1.bottom);
    }
  }

  public final void setCameraManager(CameraManager paramCameraManager)
  {
    this.cameraManager = paramCameraManager;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.general.ViewfinderView
 * JD-Core Version:    0.6.2
 */