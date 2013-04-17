package com.tencent.powermanager.uilib;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Shader.TileMode;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import com.tencent.powermanager.service.BatteryEventReceiver;

public class BatteryFlowView extends View
{
  private static float a = 0.75F;
  private static int c;
  private static int f;
  private static int i;
  private static int j = 15;
  private float b;
  private int d;
  private int e;
  private int g;
  private int h;
  private int k = 3;
  private int l = 5;
  private float m = 1.0F;
  private float n = 1.0F;
  private int[] o;
  private int p;
  private int q;
  private int r;
  private int s;
  private Paint t;
  private Paint u;
  private Paint v;
  private Paint w;
  private Paint x;
  private Path y;

  public BatteryFlowView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    c();
  }

  public BatteryFlowView(Context paramContext, int[] paramArrayOfInt)
  {
    super(paramContext);
    this.b = 13.8F;
    c = 55;
    this.e = 4;
    this.g = 33;
    this.h = 8;
    f = 12;
    i = 15;
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    if (localDisplayMetrics.heightPixels != 800)
      this.m = ((float)(localDisplayMetrics.heightPixels / 800.0D));
    if (localDisplayMetrics.widthPixels != 480)
      this.n = ((float)(localDisplayMetrics.widthPixels / 480.0D));
    if (this.m != 1.0F)
    {
      c = (int)(c * this.m);
      this.e = ((int)(this.e * this.m));
      this.g = ((int)(this.g * this.m));
      this.h = ((int)(this.h * this.m));
    }
    this.d = (c * this.k);
    if (this.n != 1.0F)
      this.b *= this.n;
    float f1;
    if (this.m > this.n)
    {
      f1 = f * this.n;
      f = (int)f1;
      if (this.m <= this.n)
        break label302;
    }
    label302: for (float f2 = i * this.n; ; f2 = i * this.m)
    {
      i = (int)f2;
      a(paramArrayOfInt);
      c();
      return;
      f1 = f * this.m;
      break;
    }
  }

  private void a(Canvas paramCanvas, int paramInt, long paramLong)
  {
    float f1 = paramInt * this.b + j;
    int i1;
    float f2;
    Paint localPaint;
    String str;
    int i2;
    Bitmap localBitmap2;
    label124: int i5;
    float f7;
    float f8;
    if (paramInt < this.l / 2)
    {
      i1 = 1;
      f2 = 0.01F * this.d * (float)paramLong * a;
      localPaint = new Paint();
      localPaint.setColor(-1);
      localPaint.setTextSize(i);
      localPaint.setAntiAlias(true);
      str = paramLong + "%";
      i2 = str.length();
      if (i1 == 0)
        break label291;
      if (!BatteryEventReceiver.c)
        break label244;
      localBitmap2 = BitmapFactory.decodeResource(getResources(), 2130837764);
      i5 = (int)(f1 + 0.1D * localBitmap2.getWidth());
      f7 = i;
      if (i2 > 2)
        break label258;
      f8 = 1.1F;
    }
    float f5;
    Object localObject;
    int i4;
    while (true)
    {
      f5 = f1 + f8 * f7;
      localObject = localBitmap2;
      i4 = i5;
      float f6 = this.d - f2 - ((Bitmap)localObject).getHeight() - this.e;
      paramCanvas.drawBitmap((Bitmap)localObject, i4, f6, null);
      if (f2 >= 0.0F)
        paramCanvas.drawText(str, f5, f6 + 1.15F * i, localPaint);
      return;
      i1 = 0;
      break;
      label244: localBitmap2 = BitmapFactory.decodeResource(getResources(), 2130837763);
      break label124;
      label258: if (i2 <= 3)
        f8 = 0.9F;
      else if (i2 <= 4)
        f8 = 0.6F;
      else
        f8 = 0.5F;
    }
    label291: Bitmap localBitmap1;
    label308: int i3;
    float f3;
    float f4;
    if (BatteryEventReceiver.c)
    {
      localBitmap1 = BitmapFactory.decodeResource(getResources(), 2130837761);
      i3 = (int)(f1 - 0.5D * localBitmap1.getWidth());
      f3 = i;
      if (i2 > 2)
        break label376;
      f4 = 0.7F;
    }
    while (true)
    {
      f5 = f1 - f4 * f3;
      localObject = localBitmap1;
      i4 = i3;
      break;
      localBitmap1 = BitmapFactory.decodeResource(getResources(), 2130837762);
      break label308;
      label376: if (i2 <= 3)
        f4 = 1.0F;
      else
        f4 = 1.2F;
    }
  }

  private void a(int[] paramArrayOfInt)
  {
    int i1 = 0;
    if (paramArrayOfInt == null)
      paramArrayOfInt = new int[0];
    if (paramArrayOfInt.length < 32);
    for (this.p = 32; ; this.p = paramArrayOfInt.length)
    {
      this.o = new int[this.p];
      while (i1 < paramArrayOfInt.length)
      {
        this.o[i1] = paramArrayOfInt[i1];
        i1++;
      }
    }
    if (paramArrayOfInt.length < 32)
      for (int i2 = paramArrayOfInt.length; i2 < this.p; i2++)
        this.o[i2] = -1;
    this.q = ((int)(this.b * this.p + j));
  }

  private void b(Canvas paramCanvas, int paramInt, long paramLong)
  {
    float f1 = paramInt * this.b + j;
    int i1 = (int)(0.01D * this.d * paramLong * a);
    Bitmap localBitmap1 = BitmapFactory.decodeResource(getResources(), 2130837765);
    float f2 = this.n;
    float f3 = this.m;
    int i2 = localBitmap1.getWidth();
    int i3 = localBitmap1.getHeight();
    int i4;
    if (f2 < 1.0F)
    {
      i4 = (int)(f2 * i2);
      if (f3 >= 1.0F)
        break label208;
    }
    label208: for (int i5 = (int)(f3 * i3); ; i5 = i3)
    {
      float f4 = i4 / i2;
      float f5 = i5 / i3;
      Matrix localMatrix = new Matrix();
      localMatrix.postScale(f4, f5);
      Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1, 0, 0, i2, i3, localMatrix, true);
      paramCanvas.drawBitmap(localBitmap2, (int)(f1 - 0.5D * localBitmap2.getWidth()), (int)(this.d - i1 - 0.5D * localBitmap2.getHeight()), null);
      return;
      i4 = i2;
      break;
    }
  }

  private void c()
  {
    this.y = new Path();
    this.r = -3551792;
    this.s = -3551792;
    this.t = new Paint();
    this.t.setColor(this.s);
    this.t.setTextSize(f);
    this.t.setAntiAlias(true);
    this.u = new Paint();
    this.u.setColor(-3551792);
    this.v = new Paint();
    this.v.setColor(-3551792);
    this.v.setStrokeWidth(3.0F);
    this.w = new Paint();
    this.w.setColor(this.r);
    this.w.setStyle(Paint.Style.FILL);
    this.x = new Paint();
    this.x.setStyle(Paint.Style.STROKE);
    this.x.setColor(this.r);
    DashPathEffect localDashPathEffect = new DashPathEffect(new float[] { 5.0F, 5.0F, 5.0F, 5.0F }, 1.0F);
    this.x.setPathEffect(localDashPathEffect);
  }

  public final int a()
  {
    return this.d + this.g;
  }

  public final int b()
  {
    return this.q;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    this.t.setTextSize((int)(0.5F + 12.0F * getContext().getResources().getDisplayMetrics().density));
    paramCanvas.drawColor(-1051657);
    float f1 = this.d / this.k;
    for (int i1 = 0; i1 < this.k; i1++)
    {
      for (int i11 = 0; i11 <= 1 + this.o.length; i11++)
        if (i11 % this.l == 0.0F)
        {
          float f6 = this.b * i11 + j;
          paramCanvas.drawLine(f6, 0.0F, f6, this.d, this.w);
        }
      float f5 = f1 * i1;
      this.y.moveTo(j, f5);
      this.y.lineTo(this.q - j, f5);
      paramCanvas.drawPath(this.y, this.x);
    }
    float f2 = this.d + 0.5F * this.g;
    paramCanvas.drawLine(j, this.d, this.q - j, this.d, this.v);
    paramCanvas.drawLine(j, this.d + this.g, this.q - j, this.d + this.g, this.u);
    int i2 = 0;
    long l1 = -1L;
    int i3 = 0;
    long l4;
    int i6;
    int i9;
    int i10;
    String str1;
    label393: String str2;
    if (i2 < this.o.length)
    {
      l4 = this.o[i2];
      if (i2 % this.l != -1 + this.l)
        break label993;
      i6 = i3 + 1;
      long l5 = 60 * (1000 * (5 * (i6 * this.l)));
      i9 = (int)l5 / 3600000;
      i10 = (int)(l5 % 3600000L) / 60000;
      if (i9 < 10)
      {
        str1 = "0" + i9;
        if (i10 >= 10)
          break label812;
        str2 = "0" + i10;
        label420: paramCanvas.drawText(str1 + ":" + str2, (float)((0.5D + i2) * this.b), f2 + 0.6F * this.h, this.t);
      }
    }
    while (true)
    {
      if (l4 > 0L)
      {
        float f3 = (i2 - 1) * this.b + j;
        float f4 = i2 * this.b + j;
        int i7 = (int)(0.01D * this.d * l4 * a);
        int i8 = (int)(0.01D * this.d * l1 * a);
        if (l1 > 0L)
        {
          Paint localPaint1 = new Paint();
          localPaint1.setColor(-7816248);
          localPaint1.setStrokeWidth(3.0F);
          localPaint1.setAntiAlias(true);
          paramCanvas.drawLine(f3, this.d - i8, f4, this.d - i7, localPaint1);
          Paint localPaint2 = new Paint();
          localPaint2.setAntiAlias(true);
          localPaint2.setColor(-65536);
          localPaint2.setStyle(Paint.Style.FILL);
          localPaint2.setStrokeWidth(3.0F);
          Path localPath = new Path();
          localPath.moveTo(f3, this.d);
          localPath.lineTo(f3, this.d - i8);
          localPath.lineTo(f4, this.d - i7);
          localPath.lineTo(f4, this.d);
          localPath.close();
          localPaint2.setShader(new LinearGradient(0.0F, 0.0F, 0.0F, this.d, new int[] { 864598984, 872415231 }, new float[] { 0.5F, 1.0F }, Shader.TileMode.CLAMP));
          paramCanvas.drawPath(localPath, localPaint2);
        }
      }
      i2++;
      l1 = l4;
      i3 = i6;
      break;
      str1 = String.valueOf(i9);
      break label393;
      label812: str2 = String.valueOf(i10);
      break label420;
      for (int i4 = 0; i4 < this.o.length; i4++)
      {
        long l3 = this.o[i4];
        if ((i4 % this.l == 0) && (l3 > 0L))
          b(paramCanvas, i4, l3);
      }
      if (this.o[0] < 0);
      label991: 
      while (true)
      {
        return;
        for (int i5 = 0; ; i5++)
        {
          if (i5 >= this.o.length)
            break label991;
          if (((i5 < -1 + this.o.length) && (this.o[(i5 + 1)] < 0)) || (i5 == -1 + this.o.length))
          {
            long l2 = this.o[i5];
            b(paramCanvas, i5, l2);
            if (BatteryEventReceiver.c)
            {
              a(paramCanvas, i5, BatteryEventReceiver.a);
              break;
            }
            a(paramCanvas, i5, l2);
            break;
          }
        }
      }
      label993: i6 = i3;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.BatteryFlowView
 * JD-Core Version:    0.6.2
 */