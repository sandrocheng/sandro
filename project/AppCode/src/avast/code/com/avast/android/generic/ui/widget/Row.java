package com.avast.android.generic.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Spanned;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.avast.android.generic.aa;
import com.avast.android.generic.ab;
import com.avast.android.generic.d.b;
import com.avast.android.generic.d.c;
import com.avast.android.generic.d.e;
import com.avast.android.generic.p;
import com.avast.android.generic.t;
import com.avast.android.generic.v;

public class Row extends LinearLayout
{
  private final int a = 1;
  private e b;
  protected String d;
  protected int e;
  protected String f;
  protected String g;
  protected View h;
  protected View.OnClickListener i;
  protected TextView j;
  protected TextView k;
  protected int l;

  public Row(Context paramContext)
  {
    super(paramContext);
  }

  public Row(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet, p.c);
  }

  public Row(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet, paramInt);
  }

  protected void a()
  {
    inflate(getContext(), v.k, this);
  }

  protected void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, ab.e, paramInt, aa.b);
    this.g = localTypedArray.getString(0);
    int m = localTypedArray.getResourceId(1, 0);
    if (m != 0)
      this.d = paramContext.getString(m);
    this.e = localTypedArray.getResourceId(4, 0);
    int n = localTypedArray.getResourceId(2, 0);
    if (n != 0)
      this.f = paramContext.getString(n);
    int i1 = localTypedArray.getResourceId(10, 0);
    if (i1 != 0)
      this.h = ((View)getParent()).findViewById(i1);
    this.l = localTypedArray.getResourceId(12, 0);
    setBackgroundResource(localTypedArray.getResourceId(6, 0));
    setClickable(localTypedArray.getBoolean(7, true));
    setFocusable(localTypedArray.getBoolean(8, true));
    if (isInEditMode());
    for (this.b = new b(); ; this.b = new c(paramContext))
    {
      return;
      switch (localTypedArray.getInteger(11, 1))
      {
      case 0:
      default:
        throw new IllegalArgumentException("this dao index is not supported");
      case 1:
      }
    }
  }

  public void a(Spanned paramSpanned)
  {
    String str;
    if (paramSpanned != null)
    {
      str = paramSpanned.toString();
      this.f = str;
      if (this.k != null)
      {
        if (!TextUtils.isEmpty(paramSpanned))
          break label43;
        this.k.setVisibility(8);
      }
    }
    while (true)
    {
      return;
      str = null;
      break;
      label43: this.k.setText(paramSpanned);
      this.k.setVisibility(0);
    }
  }

  protected void a(View.OnClickListener paramOnClickListener)
  {
    this.i = paramOnClickListener;
  }

  public void a(e parame)
  {
    this.b = parame;
    b();
  }

  public void b()
  {
  }

  public void c(String paramString)
  {
    this.d = paramString;
    if (this.j != null)
      this.j.setText(paramString);
  }

  public void d(String paramString)
  {
    this.f = paramString;
    if (this.k != null)
    {
      if (!TextUtils.isEmpty(paramString))
        break label29;
      this.k.setVisibility(8);
    }
    while (true)
    {
      return;
      label29: this.k.setText(paramString);
      this.k.setVisibility(0);
    }
  }

  public e e()
  {
    return this.b;
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (e() != null)
      b();
  }

  protected final void onFinishInflate()
  {
    super.onFinishInflate();
    a();
    this.j = ((TextView)findViewById(t.aZ));
    if (this.j != null)
    {
      this.j.setText(this.d);
      if (this.e != 0)
        this.j.setTextAppearance(getContext(), this.e);
    }
    this.k = ((TextView)findViewById(t.aR));
    if (this.k != null)
    {
      if (!TextUtils.isEmpty(this.f))
        break label121;
      this.k.setVisibility(8);
    }
    while (true)
    {
      if (this.h != null)
        setEnabled(this.h.isEnabled());
      return;
      label121: this.k.setText(this.f);
    }
  }

  public boolean performClick()
  {
    if (this.i != null)
      this.i.onClick(this);
    return super.performClick();
  }

  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    super.setClickable(paramBoolean);
    super.setFocusable(paramBoolean);
    if (this.j != null)
      this.j.setEnabled(paramBoolean);
    if (this.k != null)
      this.k.setEnabled(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.Row
 * JD-Core Version:    0.6.2
 */