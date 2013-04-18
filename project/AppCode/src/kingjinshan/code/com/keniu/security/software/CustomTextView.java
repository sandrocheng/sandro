package com.keniu.security.software;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetrics;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout.LayoutParams;
import java.util.Vector;

public class CustomTextView extends View
{
  public int a;
  public int b;
  private Paint c = null;
  private String d = "";
  private float e = 0.0F;

  public CustomTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    Resources localResources = getResources();
    float f1 = localResources.getDisplayMetrics().scaledDensity;
    float f2 = 18.0F * f1;
    int i = localResources.getColor(2131296260);
    this.e = (f1 * 3.0F);
    this.c = new Paint();
    this.c.setAntiAlias(true);
    this.c.setColor(i);
    this.c.setTextSize(f2);
    this.c.setTypeface(Typeface.DEFAULT);
  }

  private int a()
  {
    this.a = 0;
    Paint.FontMetrics localFontMetrics = this.c.getFontMetrics();
    int i = (int)Math.ceil(localFontMetrics.descent - localFontMetrics.top) + (int)this.e;
    int j = 0;
    int k = 0;
    int m = 0;
    if (j < this.d.length())
    {
      char c1 = this.d.charAt(j);
      float[] arrayOfFloat = new float[1];
      String str = String.valueOf(c1);
      this.c.getTextWidths(str, arrayOfFloat);
      k += (int)Math.ceil(arrayOfFloat[0]);
      if (k > this.b)
      {
        int n = m + 1;
        j--;
        m = n;
        k = 0;
      }
      while (true)
      {
        j++;
        break;
        if (j == this.d.length() - 1)
          m++;
      }
    }
    this.a = (2 + i * m);
    return this.a;
  }

  private int a(int paramInt)
  {
    int i = View.MeasureSpec.getMode(paramInt);
    int j = View.MeasureSpec.getSize(paramInt);
    int k;
    if (i == -2147483648)
      k = j;
    while (true)
    {
      this.b = k;
      return k;
      if (i == 1073741824)
        k = j;
      else
        k = 500;
    }
  }

  private void b()
  {
    this.a = 0;
    Paint.FontMetrics localFontMetrics = this.c.getFontMetrics();
    int i = (int)Math.ceil(localFontMetrics.descent - localFontMetrics.top) + (int)this.e;
    int j = 0;
    int k = 0;
    int m = 0;
    if (j < this.d.length())
    {
      char c1 = this.d.charAt(j);
      float[] arrayOfFloat = new float[1];
      String str = String.valueOf(c1);
      this.c.getTextWidths(str, arrayOfFloat);
      k += (int)Math.ceil(arrayOfFloat[0]);
      if (k > this.b)
      {
        int n = m + 1;
        j--;
        m = n;
        k = 0;
      }
      while (true)
      {
        j++;
        break;
        if (j == this.d.length() - 1)
          m++;
      }
    }
    this.a = (2 + i * m);
  }

  public final void a(String paramString)
  {
    this.d = paramString;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    Vector localVector = new Vector();
    Paint.FontMetrics localFontMetrics = this.c.getFontMetrics();
    int i = (int)Math.ceil(localFontMetrics.descent - localFontMetrics.top) + (int)this.e;
    int j = 0;
    int k = 0;
    int m = 0;
    int n = 0;
    if (j < this.d.length())
    {
      char c1 = this.d.charAt(j);
      float[] arrayOfFloat = new float[1];
      String str = String.valueOf(c1);
      this.c.getTextWidths(str, arrayOfFloat);
      n += (int)Math.ceil(arrayOfFloat[0]);
      if (n > this.b)
      {
        k++;
        localVector.addElement(this.d.substring(m, j));
        int i5 = j - 1;
        n = 0;
        int i6 = j;
        j = i5;
        m = i6;
      }
      while (true)
      {
        j++;
        break;
        if (j == this.d.length() - 1)
        {
          k++;
          localVector.addElement(this.d.substring(m, this.d.length()));
        }
      }
    }
    this.a = (2 + k * i);
    paramCanvas.setViewport(this.b, this.b);
    int i1 = (int)Math.ceil(localFontMetrics.descent - localFontMetrics.top) - (int)this.e;
    int i2 = 0;
    int i4;
    for (int i3 = 0; i3 < k; i3 = i4)
    {
      paramCanvas.drawText((String)localVector.elementAt(i3), 2.0F, i1 + i * i2, this.c);
      i4 = i3 + 1;
      i2++;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt1);
    int k;
    if (i == -2147483648)
      k = j;
    while (true)
    {
      this.b = k;
      this.a = 0;
      Paint.FontMetrics localFontMetrics = this.c.getFontMetrics();
      int m = (int)Math.ceil(localFontMetrics.descent - localFontMetrics.top) + (int)this.e;
      int n = 0;
      int i1 = 0;
      int i2 = 0;
      label74: if (n < this.d.length())
      {
        char c1 = this.d.charAt(n);
        float[] arrayOfFloat = new float[1];
        String str = String.valueOf(c1);
        this.c.getTextWidths(str, arrayOfFloat);
        i2 += (int)Math.ceil(arrayOfFloat[0]);
        if (i2 > this.b)
        {
          i1++;
          n--;
          i2 = 0;
        }
        while (true)
        {
          n++;
          break label74;
          if (i != 1073741824)
            break label239;
          k = j;
          break;
          if (n == this.d.length() - 1)
            i1++;
        }
      }
      this.a = (2 + m * i1);
      int i3 = this.a;
      setMeasuredDimension(k, i3);
      setLayoutParams(new LinearLayout.LayoutParams(k, i3));
      super.onMeasure(paramInt1, paramInt2);
      return;
      label239: k = 500;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.CustomTextView
 * JD-Core Version:    0.6.2
 */