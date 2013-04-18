package com.hoi.widget;

import android.content.Context;
import android.os.Handler;
import android.text.Editable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnLongClickListener;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

public class HorizontalNumberPicker extends LinearLayout
  implements View.OnClickListener, View.OnFocusChangeListener, View.OnLongClickListener
{
  public static final j a = new h();
  private static final char[] p = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57 };
  private final Handler b;
  private final Runnable c = new i(this);
  private final EditText d;
  private final InputFilter e;
  private String[] f;
  private int g;
  private int h;
  private int i;
  private int j;
  private m k;
  private j l;
  private long m = 300L;
  private boolean n;
  private boolean o;
  private HorizontalNumberPickerButton q;
  private HorizontalNumberPickerButton r;

  private HorizontalNumberPicker(Context paramContext)
  {
    this(paramContext, null);
  }

  public HorizontalNumberPicker(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public HorizontalNumberPicker(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    Log.d("HorizontalNumberPicker", "mCurrent1=" + this.i);
    setOrientation(1);
    ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903113, this, true);
    this.b = new Handler();
    k localk = new k(this);
    this.e = new l(this);
    this.q = ((HorizontalNumberPickerButton)findViewById(2131231062));
    this.q.setOnClickListener(this);
    this.q.setOnLongClickListener(this);
    this.q.a(this);
    this.r = ((HorizontalNumberPickerButton)findViewById(2131231063));
    this.r.setOnClickListener(this);
    this.r.setOnLongClickListener(this);
    this.r.a(this);
    this.d = ((EditText)findViewById(2131230847));
    this.d.setOnFocusChangeListener(this);
    this.d.setOnClickListener(this);
    this.d.setFilters(new InputFilter[] { localk });
    this.d.setRawInputType(2);
    if (!isEnabled())
      setEnabled(false);
  }

  private int a(String paramString)
  {
    int i2;
    if (this.f == null)
      i2 = Integer.parseInt(paramString);
    while (true)
    {
      return i2;
      int i1 = 0;
      String str = paramString;
      while (true)
      {
        if (i1 >= this.f.length)
          break label67;
        str = str.toLowerCase();
        if (this.f[i1].toLowerCase().startsWith(str))
        {
          i2 = i1 + this.g;
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
        i2 = this.g;
      }
    }
  }

  private void a(int paramInt1, int paramInt2, String[] paramArrayOfString)
  {
    this.f = paramArrayOfString;
    this.g = paramInt1;
    this.h = paramInt2;
    this.i = paramInt1;
    g();
  }

  private void a(View paramView)
  {
    Log.d("validateInput", "mCurrent=" + this.i);
    String str = String.valueOf(((TextView)paramView).getText());
    if ("".equals(str))
      g();
    while (true)
    {
      return;
      int i1 = a(str.toString());
      if ((i1 >= this.g) && (i1 <= this.h))
      {
        this.j = this.i;
        this.i = i1;
        f();
      }
      g();
    }
  }

  private void a(j paramj)
  {
    this.l = paramj;
  }

  private void a(m paramm)
  {
    this.k = paramm;
  }

  private void a(CharSequence paramCharSequence)
  {
    int i1 = a(paramCharSequence.toString());
    if ((i1 >= this.g) && (i1 <= this.h))
    {
      this.j = this.i;
      this.i = i1;
      f();
    }
    g();
  }

  private String b(int paramInt)
  {
    if (this.l != null);
    for (String str = this.l.a(paramInt); ; str = String.valueOf(paramInt))
      return str;
  }

  private void c(int paramInt)
  {
    int i1;
    if (paramInt > this.h)
      i1 = this.g;
    while (true)
    {
      this.j = this.i;
      this.i = i1;
      f();
      g();
      return;
      if (paramInt < this.g)
        i1 = this.h;
      else
        i1 = paramInt;
    }
  }

  private void f()
  {
    if (this.k != null);
  }

  private void g()
  {
    int i1;
    String str;
    if (this.f == null)
    {
      EditText localEditText = this.d;
      i1 = this.i;
      if (this.l != null)
      {
        str = this.l.a(i1);
        localEditText.setText(str);
      }
    }
    while (true)
    {
      this.d.setSelection(this.d.getText().length());
      return;
      str = String.valueOf(i1);
      break;
      this.d.setText(this.f[(this.i - this.g)]);
    }
  }

  public final void a()
  {
    this.m = 200L;
  }

  public final void a(int paramInt)
  {
    this.i = paramInt;
    g();
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.g = paramInt1;
    this.h = paramInt2;
    this.i = paramInt1;
    g();
  }

  public final void b()
  {
    this.n = false;
  }

  public final void c()
  {
    this.o = false;
  }

  public final int d()
  {
    a(this.d);
    return this.i;
  }

  public void onClick(View paramView)
  {
    a(this.d);
    if (!this.d.hasFocus())
      this.d.requestFocus();
    if (2131231062 == paramView.getId())
      c(1 + this.i);
    while (true)
    {
      return;
      if (2131231063 == paramView.getId())
        c(this.i - 1);
    }
  }

  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (!paramBoolean)
      a(paramView);
  }

  public boolean onLongClick(View paramView)
  {
    this.d.clearFocus();
    if (2131231062 == paramView.getId())
    {
      this.n = true;
      this.b.post(this.c);
    }
    while (true)
    {
      return true;
      if (2131231063 == paramView.getId())
      {
        this.o = true;
        this.b.post(this.c);
      }
    }
  }

  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    this.q.setEnabled(paramBoolean);
    this.r.setEnabled(paramBoolean);
    this.d.setEnabled(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.HorizontalNumberPicker
 * JD-Core Version:    0.6.2
 */