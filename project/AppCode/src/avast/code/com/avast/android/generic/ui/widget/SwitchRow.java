package com.avast.android.generic.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.ImageView;
import com.avast.android.generic.d.e;
import com.avast.android.generic.p;
import com.avast.android.generic.t;
import com.avast.android.generic.v;

public class SwitchRow extends Row
{
  private ImageView a;
  private CompoundButton b;
  private boolean c;
  private int m;
  private ab n;
  private boolean o = false;
  private boolean p = false;

  public SwitchRow(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, p.c);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, com.avast.android.generic.ab.e, p.c, com.avast.android.generic.aa.b));
    b(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, com.avast.android.generic.ab.f, p.c, com.avast.android.generic.aa.b));
  }

  public SwitchRow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, com.avast.android.generic.ab.e, paramInt, com.avast.android.generic.aa.b));
  }

  protected void a()
  {
    View localView = inflate(getContext(), v.i, this);
    this.a = ((ImageView)localView.findViewById(t.aJ));
    if (this.m != 0)
    {
      this.a.setVisibility(0);
      this.a.setImageResource(this.m);
    }
    this.b = ((CompoundButton)localView.findViewById(t.F));
    this.b.setId(-1);
    this.b.setChecked(this.c);
    post(new z(this));
    this.b.setOnCheckedChangeListener(new aa(this));
  }

  protected void a(Context paramContext, TypedArray paramTypedArray)
  {
    this.c = paramTypedArray.getBoolean(3, false);
    paramTypedArray.recycle();
  }

  public void b()
  {
    if (e() != null)
      this.o = true;
    try
    {
      this.b.setChecked(e().b(this.g, this.c));
      return;
    }
    finally
    {
      this.o = false;
    }
  }

  protected void b(Context paramContext, TypedArray paramTypedArray)
  {
    this.m = paramTypedArray.getResourceId(3, 0);
    paramTypedArray.recycle();
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SwitchRow.SavedState))
      super.onRestoreInstanceState(paramParcelable);
    while (true)
    {
      return;
      SwitchRow.SavedState localSavedState = (SwitchRow.SavedState)paramParcelable;
      super.onRestoreInstanceState(localSavedState.getSuperState());
      this.o = true;
      try
      {
        this.b.setChecked(localSavedState.a);
        this.o = false;
        setEnabled(localSavedState.b);
      }
      finally
      {
        this.o = false;
      }
    }
  }

  protected Parcelable onSaveInstanceState()
  {
    SwitchRow.SavedState localSavedState = new SwitchRow.SavedState(super.onSaveInstanceState());
    localSavedState.a = this.b.isChecked();
    localSavedState.b = isEnabled();
    return localSavedState;
  }

  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    super.setFocusable(paramBoolean);
    super.setClickable(paramBoolean);
    this.b.setEnabled(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.SwitchRow
 * JD-Core Version:    0.6.2
 */