package com.hoi.widget;

import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.widget.FrameLayout;

public class BinaryPicker extends FrameLayout
{
  private final NumberPicker a;
  private final NumberPicker b;
  private c c;
  private int d;
  private int e;

  private BinaryPicker(Context paramContext)
  {
    this(paramContext, null);
  }

  public BinaryPicker(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public BinaryPicker(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903249, this, true);
    this.a = ((NumberPicker)findViewById(2131231503));
    this.a.a(NumberPicker.b);
    this.a.a(100L);
    this.a.a(new a(this));
    this.b = ((NumberPicker)findViewById(2131231504));
    this.b.a(NumberPicker.b);
    this.b.a(200L);
    this.b.a(new b(this));
    if (!isEnabled())
      setEnabled(false);
  }

  private void c()
  {
    this.a.a(this.d);
    this.b.a(this.e);
  }

  public final int a()
  {
    return this.d;
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.d = paramInt1;
    this.e = paramInt2;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, String[] paramArrayOfString)
  {
    this.a.a(paramInt1, paramInt2);
    this.b.a(paramInt3, paramInt4, paramArrayOfString);
    this.b.a();
    NumberPicker localNumberPicker = this.b;
    if (paramInt3 < paramInt4);
    for (boolean bool = true; ; bool = false)
    {
      localNumberPicker.a(bool);
      return;
    }
  }

  public final void a(int paramInt1, int paramInt2, c paramc)
  {
    this.d = paramInt1;
    this.e = paramInt2;
    this.c = paramc;
    this.a.a(this.d);
    this.b.a(this.e);
  }

  public final int b()
  {
    return this.e;
  }

  protected void dispatchRestoreInstanceState(SparseArray paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    BinaryPicker.SavedState localSavedState = (BinaryPicker.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    this.d = localSavedState.a();
    this.e = localSavedState.b();
  }

  protected Parcelable onSaveInstanceState()
  {
    return new BinaryPicker.SavedState(super.onSaveInstanceState(), this.d, this.e);
  }

  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    this.a.setEnabled(paramBoolean);
    this.b.setEnabled(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.BinaryPicker
 * JD-Core Version:    0.6.2
 */