package com.hoi.widget;

import android.content.Context;
import android.os.Handler;
import android.text.Editable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnLongClickListener;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

public class NumberPicker extends LinearLayout
  implements View.OnClickListener, View.OnFocusChangeListener, View.OnLongClickListener
{
  public static final x a = new u();
  public static final x b = new v();
  private static final char[] q = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57 };
  private final Handler c;
  private final Runnable d = new w(this);
  private final EditText e;
  private final InputFilter f;
  private String[] g;
  private int h;
  private int i;
  private int j;
  private int k;
  private aa l;
  private x m;
  private long n = 300L;
  private boolean o;
  private boolean p;
  private NumberPickerButton r;
  private NumberPickerButton s;

  private NumberPicker(Context paramContext)
  {
    this(paramContext, null);
  }

  public NumberPicker(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public NumberPicker(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    setOrientation(1);
    ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903242, this, true);
    this.c = new Handler();
    y localy = new y(this);
    this.f = new z(this);
    this.r = ((NumberPickerButton)findViewById(2131231062));
    this.r.setOnClickListener(this);
    this.r.setOnLongClickListener(this);
    this.r.a(this);
    this.s = ((NumberPickerButton)findViewById(2131231063));
    this.s.setOnClickListener(this);
    this.s.setOnLongClickListener(this);
    this.s.a(this);
    this.e = ((EditText)findViewById(2131230847));
    this.e.setOnFocusChangeListener(this);
    this.e.setFilters(new InputFilter[] { localy });
    this.e.setRawInputType(2);
    if (!isEnabled())
      setEnabled(false);
  }

  private int a(String paramString)
  {
    int i2;
    if (this.g == null)
      i2 = Integer.parseInt(paramString);
    while (true)
    {
      return i2;
      int i1 = 0;
      String str = paramString;
      while (true)
      {
        if (i1 >= this.g.length)
          break label67;
        str = str.toLowerCase();
        if (this.g[i1].toLowerCase().startsWith(str))
        {
          i2 = i1 + this.h;
          break;
        }
        i1++;
      }
      try
      {
        label67: int i3 = Integer.parseInt(str);
        i2 = i3;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        i2 = this.h;
      }
    }
  }

  private void a(View paramView)
  {
    String str = String.valueOf(((TextView)paramView).getText());
    if ("".equals(str))
      g();
    while (true)
    {
      return;
      int i1 = a(str.toString());
      if ((i1 >= this.h) && (i1 <= this.i))
      {
        this.k = this.j;
        this.j = i1;
        f();
      }
      g();
    }
  }

  private void a(CharSequence paramCharSequence)
  {
    int i1 = a(paramCharSequence.toString());
    if ((i1 >= this.h) && (i1 <= this.i))
    {
      this.k = this.j;
      this.j = i1;
      f();
    }
    g();
  }

  private String b(int paramInt)
  {
    if (this.m != null);
    for (String str = this.m.a(paramInt); ; str = String.valueOf(paramInt))
      return str;
  }

  private void c(int paramInt)
  {
    int i1;
    if (paramInt > this.i)
      i1 = this.h;
    while (true)
    {
      this.k = this.j;
      this.j = i1;
      f();
      g();
      return;
      if (paramInt < this.h)
        i1 = this.i;
      else
        i1 = paramInt;
    }
  }

  private void f()
  {
    if (this.l != null)
    {
      aa localaa = this.l;
      localaa.a(this.j);
    }
  }

  private void g()
  {
    int i1;
    String str;
    if (this.g == null)
    {
      EditText localEditText = this.e;
      i1 = this.j;
      if (this.m != null)
      {
        str = this.m.a(i1);
        localEditText.setText(str);
      }
    }
    while (true)
    {
      this.e.setSelection(this.e.getText().length());
      return;
      str = String.valueOf(i1);
      break;
      this.e.setText(this.g[(this.j - this.h)]);
    }
  }

  public final void a()
  {
    if (this.e != null)
    {
      this.e.setFocusable(false);
      this.e.setFocusableInTouchMode(false);
      this.e.setCursorVisible(false);
    }
  }

  public final void a(int paramInt)
  {
    this.j = paramInt;
    g();
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.h = paramInt1;
    this.i = paramInt2;
    this.j = paramInt1;
    g();
  }

  public final void a(int paramInt1, int paramInt2, String[] paramArrayOfString)
  {
    this.g = paramArrayOfString;
    this.h = paramInt1;
    this.i = paramInt2;
    this.j = paramInt1;
    g();
  }

  public final void a(long paramLong)
  {
    this.n = paramLong;
  }

  public final void a(aa paramaa)
  {
    this.l = paramaa;
  }

  public final void a(x paramx)
  {
    this.m = paramx;
  }

  public final void a(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      this.r.setVisibility(4);
      this.s.setVisibility(4);
    }
    while (true)
    {
      return;
      this.r.setVisibility(0);
      this.s.setVisibility(0);
    }
  }

  public final void b()
  {
    this.o = false;
  }

  public final void c()
  {
    this.p = false;
  }

  public final int d()
  {
    a(this.e);
    return this.j;
  }

  public void onClick(View paramView)
  {
    a(this.e);
    if (!this.e.hasFocus())
      this.e.requestFocus();
    if (2131231062 == paramView.getId())
      c(1 + this.j);
    while (true)
    {
      return;
      if (2131231063 == paramView.getId())
        c(this.j - 1);
    }
  }

  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (!paramBoolean)
      a(paramView);
    a(paramView);
  }

  public boolean onLongClick(View paramView)
  {
    this.e.clearFocus();
    if (2131231062 == paramView.getId())
    {
      this.o = true;
      this.c.post(this.d);
    }
    while (true)
    {
      return true;
      if (2131231063 == paramView.getId())
      {
        this.p = true;
        this.c.post(this.d);
      }
    }
  }

  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    this.r.setEnabled(paramBoolean);
    this.s.setEnabled(paramBoolean);
    this.e.setEnabled(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.NumberPicker
 * JD-Core Version:    0.6.2
 */