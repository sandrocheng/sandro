package com.tencent.powermanager.uilib.button;

import a.a;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

public class ButtonView extends LinearLayout
  implements View.OnTouchListener
{
  private Context a;
  private TextView b;
  private TextView c;
  private ImageView d;
  private ImageView e;
  private ImageView f;
  private FrameLayout g;
  private int h;
  private TextView i;
  private TextView j;
  private ImageView k;
  private ImageView l;
  private ImageView m;
  private Drawable n;
  private Drawable o;

  public ButtonView(Context paramContext, int paramInt)
  {
    super(paramContext);
    setOnTouchListener(this);
    this.a = paramContext;
    this.h = paramInt;
    a(paramInt);
  }

  public ButtonView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setOnTouchListener(this);
    this.a = paramContext;
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, a.a.ButtonView);
    int i1 = localTypedArray.getInteger(0, 2);
    String str = localTypedArray.getString(1);
    int i2 = localTypedArray.getInteger(2, 0);
    this.h = i1;
    a(i1);
    if (str != null)
      setText(str);
    if (i2 != 0)
      setTextSize(i2);
  }

  private void a(int paramInt)
  {
    setMinimumWidth((int)(0.5F + 260.0F * this.a.getResources().getDisplayMetrics().density));
    this.g = ((FrameLayout)LayoutInflater.from(this.a).inflate(2130903056, null));
    this.b = ((TextView)this.g.findViewById(2131230825));
    this.c = ((TextView)this.g.findViewById(2131230824));
    this.d = ((ImageView)this.g.findViewById(2131230826));
    this.e = ((ImageView)this.g.findViewById(2131230779));
    this.l = ((ImageView)this.g.findViewById(2131230780));
    this.i = ((TextView)this.g.findViewById(2131230823));
    this.j = ((TextView)this.g.findViewById(2131230822));
    this.k = ((ImageView)this.g.findViewById(2131230778));
    this.m = ((ImageView)this.g.findViewById(2131230827));
    setButtonByType(paramInt);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    addView(this.g, localLayoutParams);
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((!isEnabled()) || (!isClickable()));
    while (true)
    {
      return false;
      switch (paramMotionEvent.getAction())
      {
      case 2:
      default:
        break;
      case 0:
        if (this.d.getVisibility() == 0)
        {
          this.d.setImageDrawable(this.o);
        }
        else if (this.h != 7)
        {
          if (this.h == 8)
            continue;
          this.b.setTextColor(getResources().getColor(2131034132));
          this.c.setTextColor(getResources().getColor(2131034133));
        }
        break;
      case 1:
      case 3:
      case 4:
        if (this.d.getVisibility() == 0)
          this.d.setImageDrawable(this.n);
        else
          switch (this.h)
          {
          default:
            break;
          case 1:
            this.b.setTextColor(getResources().getColor(2131034130));
            this.c.setTextColor(getResources().getColor(2131034131));
            break;
          case 2:
          case 6:
            this.b.setTextColor(getResources().getColor(2131034129));
            this.c.setTextColor(getResources().getColor(2131034128));
            break;
          case 3:
            this.b.setTextColor(getResources().getColor(2131034140));
            this.c.setTextColor(getResources().getColor(2131034128));
            break;
          case 4:
            this.b.setTextColor(getResources().getColor(2131034129));
            this.c.setTextColor(getResources().getColor(2131034128));
            break;
          case 5:
            this.b.setTextColor(getResources().getColor(2131034129));
            this.c.setTextColor(getResources().getColor(2131034128));
            break;
          case 7:
            this.b.setTextColor(-1);
            this.c.setTextColor(-10066330);
          }
        break;
      }
    }
  }

  public void setButtonByType(int paramInt)
  {
    this.h = paramInt;
    switch (paramInt)
    {
    case 7:
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    }
    while (true)
    {
      return;
      setBackgroundResource(2130837758);
      this.b.setTextColor(getResources().getColor(2131034130));
      this.c.setTextColor(getResources().getColor(2131034131));
      continue;
      setBackgroundResource(2130837760);
      this.b.setTextColor(getResources().getColor(2131034129));
      this.c.setTextColor(getResources().getColor(2131034128));
      continue;
      setBackgroundResource(2130837760);
      this.b.setTextColor(getResources().getColor(2131034140));
      this.c.setTextColor(getResources().getColor(2131034128));
      continue;
      setBackgroundResource(2130837759);
      this.b.setTextColor(getResources().getColor(2131034129));
      this.c.setTextColor(getResources().getColor(2131034128));
      continue;
      setBackgroundResource(2130837759);
      this.b.setTextColor(getResources().getColor(2131034129));
      this.c.setTextColor(getResources().getColor(2131034128));
      this.e.setVisibility(0);
      continue;
      setBackgroundResource(2130837760);
      this.b.setTextColor(getResources().getColor(2131034129));
      this.c.setTextColor(getResources().getColor(2131034128));
      this.m.setVisibility(0);
      continue;
      setBackgroundResource(2130837823);
      this.b.setTextColor(getResources().getColor(2131034136));
    }
  }

  public void setButtonContentImgID(int paramInt1, int paramInt2)
  {
    this.n = this.a.getResources().getDrawable(paramInt1);
    this.o = this.a.getResources().getDrawable(paramInt2);
    this.d.setVisibility(0);
    this.d.setImageDrawable(this.n);
    this.b.setVisibility(8);
    this.c.setVisibility(8);
  }

  public void setButtonEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    if (paramBoolean)
      setButtonByType(this.h);
    while (true)
    {
      return;
      setBackgroundResource(2130837757);
      this.b.setTextColor(getResources().getColor(2131034134));
      this.c.setTextColor(getResources().getColor(2131034135));
    }
  }

  public void setButtonIcon(Drawable paramDrawable)
  {
    if (this.f == null)
      this.f = new ImageView(this.a);
    if (paramDrawable == null)
    {
      this.f.setVisibility(8);
      removeAllViews();
      LinearLayout.LayoutParams localLayoutParams3 = new LinearLayout.LayoutParams(-1, -1);
      addView(this.g, localLayoutParams3);
    }
    while (true)
    {
      return;
      removeAllViews();
      LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(30, 30);
      localLayoutParams1.gravity = 19;
      localLayoutParams1.leftMargin = 10;
      localLayoutParams1.topMargin = 5;
      localLayoutParams1.bottomMargin = 5;
      addView(this.f, localLayoutParams1);
      this.f.setVisibility(0);
      this.f.setImageDrawable(paramDrawable);
      LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-2, -2);
      localLayoutParams2.leftMargin = 10;
      localLayoutParams2.gravity = 16;
      addView(this.g, localLayoutParams2);
    }
  }

  public void setButtonRightImage(int paramInt)
  {
    if ((paramInt == 0) || (this.l == null));
    while (true)
    {
      return;
      this.l.setImageResource(paramInt);
    }
  }

  public void setCheckBoxState(boolean paramBoolean)
  {
    if (paramBoolean)
      this.m.setImageResource(2130837767);
    while (true)
    {
      return;
      this.m.setImageResource(2130837766);
    }
  }

  public void setPreImageVisible(boolean paramBoolean)
  {
    if (paramBoolean)
      this.k.setVisibility(0);
    while (true)
    {
      return;
      this.k.setVisibility(8);
    }
  }

  public void setPreposition(String paramString)
  {
    if (paramString == null)
    {
      this.i.setVisibility(8);
      this.j.setVisibility(8);
    }
    while (true)
    {
      return;
      this.i.setVisibility(0);
      this.j.setVisibility(0);
      this.i.setText(paramString);
      this.j.setText(paramString);
    }
  }

  public void setRightImageVisible(boolean paramBoolean)
  {
    if (paramBoolean)
      this.l.setVisibility(0);
    while (true)
    {
      return;
      this.l.setVisibility(8);
    }
  }

  public void setText(String paramString)
  {
    if (paramString == null);
    while (true)
    {
      return;
      this.b.setText(paramString);
    }
  }

  public void setTextSize(float paramFloat)
  {
    this.b.setTextSize(paramFloat);
    this.c.setTextSize(paramFloat);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.button.ButtonView
 * JD-Core Version:    0.6.2
 */