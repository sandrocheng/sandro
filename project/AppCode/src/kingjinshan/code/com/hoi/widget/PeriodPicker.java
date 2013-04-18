package com.hoi.widget;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.widget.FrameLayout;

public class PeriodPicker extends FrameLayout
{
  private final NumberPicker a;
  private final NumberPicker b;
  private ad c;
  private int d;
  private int e;

  private PeriodPicker(Context paramContext)
  {
    this(paramContext, null);
  }

  public PeriodPicker(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public PeriodPicker(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903249, this, true);
    this.a = ((NumberPicker)findViewById(2131231503));
    this.a.a(NumberPicker.a);
    this.a.a(100L);
    this.a.a(1, 24);
    this.a.a(new ab(this));
    this.b = ((NumberPicker)findViewById(2131231504));
    this.b.a(NumberPicker.a);
    this.b.a(200L);
    this.b.a(1, 2, getResources().getStringArray(2131165187));
    this.b.a(new ac(this));
    this.b.a();
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

  public final void a(int paramInt1, int paramInt2, ad paramad)
  {
    this.d = paramInt1;
    this.e = paramInt2;
    this.c = paramad;
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
    PeriodPicker.SavedState localSavedState = (PeriodPicker.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    this.d = localSavedState.a();
    this.e = localSavedState.b();
  }

  protected Parcelable onSaveInstanceState()
  {
    return new PeriodPicker.SavedState(super.onSaveInstanceState(), this.d, this.e);
  }

  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    this.a.setEnabled(paramBoolean);
    this.b.setEnabled(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.PeriodPicker
 * JD-Core Version:    0.6.2
 */