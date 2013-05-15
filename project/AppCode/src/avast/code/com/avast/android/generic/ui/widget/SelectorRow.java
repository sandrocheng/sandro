package com.avast.android.generic.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Handler.Callback;
import android.os.Message;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.avast.android.generic.aa;
import com.avast.android.generic.ab;
import com.avast.android.generic.ad;
import com.avast.android.generic.d.e;
import com.avast.android.generic.p;
import com.avast.android.generic.util.s;
import com.avast.android.generic.v;

public class SelectorRow extends Row
  implements Handler.Callback
{
  private int a;
  private int b;
  private int[] c;
  private String[] m;
  private int n;
  private String o;
  private int p;
  private u q;

  public SelectorRow(Context paramContext)
  {
    this(paramContext, null);
  }

  public SelectorRow(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, p.a);
  }

  public SelectorRow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void a(int paramInt, boolean paramBoolean)
  {
    this.n = 0;
    int[] arrayOfInt = this.c;
    int i = 0;
    if (arrayOfInt != null);
    while (true)
    {
      if (i < this.c.length)
      {
        if (paramInt == this.c[i])
          this.n = i;
      }
      else
      {
        f();
        if ((paramBoolean) && (this.q != null))
          this.q.a(this, this.n, c());
        return;
      }
      i++;
    }
  }

  private void d()
  {
    if ((e() != null) && (this.g != null))
      e().a(this.g, c());
  }

  private void f()
  {
    String str;
    if (this.m != null)
    {
      str = this.m[this.n].toString();
      if (this.o == null)
        break label47;
      d(String.format(this.o, new Object[] { str }));
    }
    while (true)
    {
      return;
      label47: d(str);
    }
  }

  protected void a()
  {
    inflate(getContext(), v.n, this);
    if (getId() == -1)
      throw new NullPointerException("You have to specify android:id, otherwise the SelectorRow won't work.");
    if (this.b != 0)
      this.m = getResources().getStringArray(this.b);
    if (this.a != 0)
      this.c = getResources().getIntArray(this.a);
    a(new t(this));
    this.n = 0;
    f();
  }

  public void a(int paramInt)
  {
    this.b = paramInt;
    this.m = getResources().getStringArray(this.b);
    f();
  }

  protected void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super.a(paramContext, paramAttributeSet, paramInt);
    this.o = this.f;
    TypedArray localTypedArray1 = paramContext.obtainStyledAttributes(paramAttributeSet, ab.l, paramInt, aa.c);
    this.a = localTypedArray1.getResourceId(1, 0);
    this.b = localTypedArray1.getResourceId(0, 0);
    localTypedArray1.recycle();
    TypedArray localTypedArray2 = paramContext.obtainStyledAttributes(paramAttributeSet, ab.e, 0, 0);
    this.p = localTypedArray2.getInt(3, 0);
    localTypedArray2.recycle();
  }

  public void a(u paramu)
  {
    this.q = paramu;
  }

  public void a(String paramString)
  {
    this.o = paramString;
  }

  public void a(int[] paramArrayOfInt)
  {
    this.a = 0;
    this.c = paramArrayOfInt;
  }

  public void b()
  {
    if (e() != null)
      a(e().b(this.g, this.p), false);
  }

  public void b(int paramInt)
  {
    this.p = paramInt;
  }

  public int c()
  {
    if (this.c != null);
    for (int i = this.c[this.n]; ; i = this.n)
      return i;
  }

  public void c(int paramInt)
  {
    a(paramInt, true);
    d();
  }

  public boolean handleMessage(Message paramMessage)
  {
    if (paramMessage.what == getId())
    {
      this.n = paramMessage.arg1;
      f();
      d();
      if (this.q != null)
        this.q.a(this, this.n, c());
    }
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected void onAttachedToWindow()
  {
    super.onDetachedFromWindow();
    ((s)ad.a(getContext(), s.class)).a(getId(), this);
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    ((s)ad.a(getContext(), s.class)).b(getId(), this);
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SelectorRow.SavedState))
      super.onRestoreInstanceState(paramParcelable);
    while (true)
    {
      return;
      SelectorRow.SavedState localSavedState = (SelectorRow.SavedState)paramParcelable;
      super.onRestoreInstanceState(localSavedState.getSuperState());
      this.n = localSavedState.a;
      f();
    }
  }

  protected Parcelable onSaveInstanceState()
  {
    SelectorRow.SavedState localSavedState = new SelectorRow.SavedState(super.onSaveInstanceState());
    localSavedState.a = this.n;
    return localSavedState;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.SelectorRow
 * JD-Core Version:    0.6.2
 */