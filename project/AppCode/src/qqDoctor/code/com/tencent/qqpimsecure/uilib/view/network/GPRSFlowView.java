package com.tencent.qqpimsecure.uilib.view.network;

import a;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.util.AttributeSet;
import android.view.View;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;
import gw;
import it;
import iu;
import java.util.Date;
import java.util.List;

public class GPRSFlowView extends View
{
  private static int DATE_TEXT_SIZE;
  private int DATE_HEIGHT;
  private int DATE_PADDING_TOP;
  private int POST_HEIGHT;
  private int POST_WIDTH;
  private int TEXT_PADDING_BUTTOM;
  private int VIEW_EACH_WIDTH;
  float dataX;
  float dataY = this.POST_HEIGHT + 0.5F * this.DATE_HEIGHT;
  int imageColor;
  int imageColorBlue = Color.argb(200, 106, 176, 230);
  int imageColorRed = Color.argb(200, 255, 102, 85);
  private List<NetworkInfoEntity> mNetWorkDatas;
  private it mNetworkDao;
  Paint mPaint;
  Paint mPaint2;
  Paint mPaint3;
  Paint mPaint4;
  Paint mPaint5;
  float paddingLeftLarge = 26.0F * this.percentH;
  float paddingLeftSmall = 14.0F * this.percentH;
  private float percentH = 1.0F;
  private float percentW = 1.0F;
  int textColor;
  int textColorBlue = Color.argb(255, 0, 0, 0);
  int textColorRed = Color.argb(255, 255, 102, 85);
  private int totalWidth;

  public GPRSFlowView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public GPRSFlowView(Context paramContext, List<NetworkInfoEntity> paramList)
  {
    super(paramContext);
    setFocusable(false);
    this.VIEW_EACH_WIDTH = 50;
    this.POST_WIDTH = 16;
    this.POST_HEIGHT = 190;
    this.TEXT_PADDING_BUTTOM = 7;
    this.DATE_HEIGHT = 25;
    this.DATE_PADDING_TOP = 8;
    DATE_TEXT_SIZE = 18;
    if (gw.b != 800)
      this.percentH = ((float)(gw.b / 800.0D));
    if (gw.a != 480)
      this.percentW = ((float)(gw.a / 480.0D));
    if (this.percentH != 1.0F)
    {
      this.POST_HEIGHT = ((int)(this.POST_HEIGHT * this.percentH));
      this.TEXT_PADDING_BUTTOM = ((int)(this.TEXT_PADDING_BUTTOM * this.percentH));
      this.DATE_HEIGHT = ((int)(this.DATE_HEIGHT * this.percentH));
      this.DATE_PADDING_TOP = ((int)(this.DATE_PADDING_TOP * this.percentH));
    }
    if (this.percentW != 1.0F)
    {
      this.VIEW_EACH_WIDTH = ((int)(this.VIEW_EACH_WIDTH * this.percentW));
      this.POST_WIDTH = ((int)(this.POST_WIDTH * this.percentW));
    }
    if (this.percentH > this.percentW);
    for (float f = DATE_TEXT_SIZE * this.percentW; ; f = DATE_TEXT_SIZE * this.percentH)
    {
      DATE_TEXT_SIZE = (int)f;
      this.mNetWorkDatas = paramList;
      this.mNetworkDao = new iu(QQPimApplication.a());
      this.totalWidth = (1 + getGPRSFlowColumnWidth() * (1 + this.mNetWorkDatas.size()));
      this.mPaint = new Paint();
      this.mPaint.setColor(getResources().getColor(2131296286));
      this.mPaint.setTextSize(DATE_TEXT_SIZE);
      this.mPaint.setAntiAlias(true);
      this.mPaint2 = new Paint();
      this.mPaint2.setColor(getResources().getColor(2131296295));
      this.mPaint2.setStrokeWidth(this.DATE_HEIGHT);
      this.mPaint3 = new Paint();
      this.mPaint3.setColor(getResources().getColor(2131296311));
      this.mPaint3.setStyle(Paint.Style.FILL);
      this.mPaint4 = new Paint();
      this.mPaint4.setStrokeWidth(this.POST_WIDTH);
      this.mPaint5 = new Paint();
      this.mPaint5.setStrokeWidth(1.0F);
      this.mPaint5.setTextSize(DATE_TEXT_SIZE);
      this.mPaint5.setAntiAlias(true);
      this.textColorBlue = Color.argb(255, 0, 0, 0);
      this.textColorRed = Color.argb(255, 255, 102, 85);
      this.imageColorBlue = Color.argb(200, 106, 176, 230);
      this.imageColorRed = Color.argb(200, 255, 102, 85);
      this.dataY = (this.POST_HEIGHT + 0.5F * this.DATE_HEIGHT);
      this.paddingLeftLarge = (26.0F * this.percentH);
      this.paddingLeftSmall = (14.0F * this.percentH);
      return;
    }
  }

  private void CanvasFlowAndImagesChild(Canvas paramCanvas, int paramInt, NetworkInfoEntity paramNetworkInfoEntity, double paramDouble, boolean paramBoolean)
  {
    long l1 = paramNetworkInfoEntity.mUsedForDay;
    if (l1 <= 0L);
    label51: label197: label235: 
    while (true)
    {
      return;
      long l2 = this.mNetworkDao.getTotalForMonth();
      int i;
      if ((!paramBoolean) || (l2 == 0L))
      {
        this.imageColor = this.imageColorBlue;
        this.textColor = this.textColorBlue;
        this.mPaint4.setColor(this.imageColor);
        this.mPaint5.setColor(this.textColor);
        if (l1 >= 1024L)
          break label197;
        i = 0;
      }
      while (true)
      {
        if (i <= 0)
          break label235;
        int j = (paramInt + 1) * this.VIEW_EACH_WIDTH;
        int k = this.POST_HEIGHT;
        int m = k - i;
        paramCanvas.drawLine(j, k, j, m, this.mPaint4);
        String str = a.c(l1);
        float f = getOffset(str.length());
        paramCanvas.drawText(str, j - f, m - this.TEXT_PADDING_BUTTOM, this.mPaint5);
        break;
        this.imageColor = this.imageColorRed;
        this.textColor = this.textColorRed;
        break label51;
        i = (int)(paramDouble * l1);
        if (i <= 0)
          i = 1;
        if (i > this.POST_HEIGHT)
          i = (int)(0.8F * this.POST_HEIGHT);
      }
    }
  }

  private double getGPRSLengthCount()
  {
    int i = this.POST_HEIGHT;
    int j = 0;
    long l1 = 0L;
    long l2;
    if (j < this.mNetWorkDatas.size())
    {
      l2 = ((NetworkInfoEntity)this.mNetWorkDatas.get(j)).mUsedForDay;
      if (l2 <= l1)
        break label70;
    }
    label70: for (long l3 = l2; ; l3 = l1)
    {
      j++;
      l1 = l3;
      break;
      return 0.8D * i / l1;
    }
  }

  private float getOffset(int paramInt)
  {
    float f;
    if (paramInt <= 2)
      f = 11.0F;
    while (true)
    {
      if (this.percentH != 1.0F)
        f *= this.percentH;
      return f;
      if (paramInt <= 3)
        f = 15.0F;
      else if (paramInt <= 4)
        f = 20.0F;
      else if (paramInt <= 5)
        f = 28.0F;
      else
        f = 32.0F;
    }
  }

  private int getOutOfTotalDataIndex()
  {
    int i = 0;
    int j;
    if (this.mNetWorkDatas == null)
      j = -1;
    while (true)
    {
      return j;
      j = 0;
      while (true)
      {
        if (j >= this.mNetWorkDatas.size())
          break label70;
        int k = (int)(i + ((NetworkInfoEntity)this.mNetWorkDatas.get(j)).mUsedForDay);
        if (k > this.mNetworkDao.getTotalForMonth())
          break;
        j++;
        i = k;
      }
      label70: j = -1;
    }
  }

  public int getGPRSFlowColumnWidth()
  {
    return this.VIEW_EACH_WIDTH;
  }

  public int getGPRSFlowHeight()
  {
    return this.POST_HEIGHT + this.DATE_HEIGHT;
  }

  public int getViewWidth()
  {
    return this.totalWidth;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i = getOutOfTotalDataIndex();
    double d = getGPRSLengthCount();
    for (int j = 0; j <= 1 + this.mNetWorkDatas.size(); j++)
    {
      float f3 = j * this.VIEW_EACH_WIDTH;
      paramCanvas.drawLine(f3, 0.0F, f3, this.POST_HEIGHT, this.mPaint3);
    }
    float f1 = this.POST_HEIGHT / 4.0F;
    for (int k = 0; k < 4; k++)
    {
      float f2 = f1 * k;
      paramCanvas.drawLine(0.0F, f2, this.totalWidth, f2, this.mPaint3);
    }
    paramCanvas.drawLine(0.0F, this.dataY, this.totalWidth, this.dataY, this.mPaint2);
    int m = 0;
    NetworkInfoEntity localNetworkInfoEntity;
    if (m < this.mNetWorkDatas.size())
    {
      localNetworkInfoEntity = (NetworkInfoEntity)this.mNetWorkDatas.get(m);
      int n = 1 + localNetworkInfoEntity.mStartDate.getMonth();
      if (n > 9)
      {
        this.dataX = (this.VIEW_EACH_WIDTH - this.paddingLeftLarge);
        label207: paramCanvas.drawText(n + "." + localNetworkInfoEntity.mStartDate.getDate(), this.dataX + m * this.VIEW_EACH_WIDTH, this.dataY + this.DATE_PADDING_TOP, this.mPaint);
        if ((i < 0) || (m < i))
          break label319;
      }
    }
    label319: for (boolean bool = true; ; bool = false)
    {
      CanvasFlowAndImagesChild(paramCanvas, m, localNetworkInfoEntity, d, bool);
      m++;
      break;
      this.dataX = (this.VIEW_EACH_WIDTH - this.paddingLeftSmall);
      break label207;
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.network.GPRSFlowView
 * JD-Core Version:    0.6.2
 */