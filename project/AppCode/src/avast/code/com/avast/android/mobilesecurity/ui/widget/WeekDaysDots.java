package com.avast.android.mobilesecurity.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.util.Calendar;

public class WeekDaysDots extends LinearLayout
{
  private ImageView[] a = new ImageView[7];

  public WeekDaysDots(Context paramContext)
  {
    super(paramContext);
    a();
  }

  public WeekDaysDots(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }

  public WeekDaysDots(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }

  private void a()
  {
    inflate(getContext(), 2130903211, this);
    int i = Calendar.getInstance().getFirstDayOfWeek();
    for (int j = 0; j < 7; j++)
    {
      int k = (j - (i - 2)) % 7;
      ImageView localImageView = (ImageView)findViewWithTag("weekDot" + k);
      this.a[j] = localImageView;
    }
  }

  public void a(int paramInt)
  {
    int i = 1;
    int j = 0;
    if (j < 7)
    {
      if ((paramInt & i) > 0)
        this.a[j].setImageResource(2130837849);
      while (true)
      {
        i *= 2;
        j++;
        break;
        this.a[j].setImageResource(2130837848);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.WeekDaysDots
 * JD-Core Version:    0.6.2
 */