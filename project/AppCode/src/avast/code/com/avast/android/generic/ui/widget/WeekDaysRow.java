package com.avast.android.generic.ui.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ToggleButton;
import com.avast.android.generic.aa;
import com.avast.android.generic.ab;
import com.avast.android.generic.d;
import com.avast.android.generic.d.e;
import com.avast.android.generic.p;
import com.avast.android.generic.v;
import java.util.Calendar;

public class WeekDaysRow extends Row
{
  private ToggleButton[] a = new ToggleButton[7];
  private int b;
  private int c;
  private boolean m = false;
  private ah n;
  private CompoundButton.OnCheckedChangeListener o = new ag(this);

  public WeekDaysRow(Context paramContext)
  {
    super(paramContext);
  }

  public WeekDaysRow(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, p.b);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, ab.e, p.b, aa.a));
  }

  public WeekDaysRow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, ab.e, paramInt, aa.a));
  }

  private void a(Context paramContext, TypedArray paramTypedArray)
  {
    this.b = paramTypedArray.getInteger(3, 0);
    paramTypedArray.recycle();
  }

  private void b(int paramInt)
  {
    int i = 0;
    int j = 1;
    if (i < 7)
    {
      if ((paramInt & j) > 0)
        this.a[i].setChecked(true);
      while (true)
      {
        j *= 2;
        i++;
        break;
        this.a[i].setChecked(false);
      }
    }
    this.c = paramInt;
  }

  protected void a()
  {
    inflate(getContext(), v.o, this);
    int i = Calendar.getInstance().getFirstDayOfWeek();
    int j = getResources().getConfiguration().orientation;
    int k = 0;
    if (k < 7)
    {
      int i1 = (k + 7 + (i - 2)) % 7;
      ToggleButton localToggleButton = (ToggleButton)findViewWithTag("" + k);
      localToggleButton.setOnCheckedChangeListener(this.o);
      if (j == 1);
      for (String str = d.a(getContext(), i1); ; str = d.b(getContext(), i1))
      {
        localToggleButton.setText(str);
        localToggleButton.setTextOn(str);
        localToggleButton.setTextOff(str);
        this.a[k] = localToggleButton;
        k++;
        break;
      }
    }
  }

  public void a(int paramInt)
  {
    b(paramInt);
    e().a(this.g, d.b(paramInt));
  }

  public void a(ah paramah)
  {
    this.n = paramah;
  }

  public void b()
  {
    this.m = true;
    try
    {
      b(d.c(e().b(this.g, this.b)));
      return;
    }
    finally
    {
      this.m = false;
    }
  }

  public int c()
  {
    return this.c;
  }

  public void setEnabled(boolean paramBoolean)
  {
    int i = 0;
    super.setEnabled(paramBoolean);
    super.setFocusable(false);
    super.setClickable(false);
    while (i < this.a.length)
    {
      this.a[i].setEnabled(paramBoolean);
      this.a[i].setFocusable(paramBoolean);
      this.a[i].setClickable(paramBoolean);
      i++;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.WeekDaysRow
 * JD-Core Version:    0.6.2
 */