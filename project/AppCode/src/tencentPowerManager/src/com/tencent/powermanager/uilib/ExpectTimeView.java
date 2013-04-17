package com.tencent.powermanager.uilib;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import cy;

public class ExpectTimeView extends LinearLayout
{
  private int a;
  private int b;
  private int c;
  private int d;
  private int e;
  private Context f = null;
  private TextView g = null;
  private TextView h = null;
  private Handler i = new cy(this);

  public ExpectTimeView(Context paramContext)
  {
    super(paramContext);
    this.f = paramContext;
    a();
  }

  public ExpectTimeView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.f = paramContext;
    a();
  }

  private void a()
  {
    addView(inflate(this.f, 2130903055, null));
    this.g = ((TextView)findViewById(2131230775));
    this.h = ((TextView)findViewById(2131230776));
  }

  private void b()
  {
    if (this.c == 59)
    {
      this.c = 0;
      this.b = (1 + this.b);
    }
    while (true)
    {
      return;
      this.c = (1 + this.c);
    }
  }

  private void c()
  {
    if ((this.c == 0) && (this.b > 0))
    {
      this.c = 59;
      this.b = (-1 + this.b);
    }
    while (true)
    {
      return;
      if ((this.c == 0) && (this.b == 0))
        throw new RuntimeException();
      this.c = (-1 + this.c);
    }
  }

  public void setTextHour(int paramInt)
  {
    if (this.g != null)
      this.g.setText(String.valueOf(paramInt));
  }

  public void setTextMin(int paramInt)
  {
    if (this.h != null)
      this.h.setText(String.valueOf(paramInt));
  }

  public void setTimeText(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.d = paramInt3;
    this.e = paramInt4;
    if ((paramInt1 < 0) || (paramInt2 < 0))
      paramInt1 = paramInt3;
    while (true)
    {
      this.b = paramInt1;
      this.c = paramInt4;
      this.i.sendEmptyMessageDelayed(65537, 20L);
      return;
      if ((paramInt1 - paramInt3 > 3) || ((paramInt1 - paramInt3 == 3) && (paramInt2 > paramInt4)))
        paramInt1 = paramInt3 + 3;
      else if ((paramInt1 - paramInt3 < -3) || ((paramInt1 - paramInt3 == -3) && (paramInt2 < paramInt4)))
        paramInt1 = paramInt3 - 3;
      else
        paramInt4 = paramInt2;
    }
  }

  public void setViewType(int paramInt)
  {
    if (this.a == paramInt);
    while (true)
    {
      return;
      this.a = paramInt;
      switch (paramInt)
      {
      default:
      case 1:
      case 2:
      case 3:
      }
      while (true)
      {
        if (paramInt != 3)
          break label111;
        findViewById(2131230777).setVisibility(0);
        findViewById(2131230774).setVisibility(8);
        break;
        findViewById(2131230773).setBackgroundResource(2130837858);
        continue;
        findViewById(2131230773).setBackgroundResource(2130837859);
        continue;
        findViewById(2131230773).setBackgroundResource(2130837833);
      }
      label111: findViewById(2131230777).setVisibility(8);
      findViewById(2131230774).setVisibility(0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.ExpectTimeView
 * JD-Core Version:    0.6.2
 */