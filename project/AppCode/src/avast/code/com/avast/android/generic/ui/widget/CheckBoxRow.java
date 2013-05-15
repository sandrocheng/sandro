package com.avast.android.generic.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CheckBox;
import com.avast.android.generic.aa;
import com.avast.android.generic.ab;
import com.avast.android.generic.d.e;
import com.avast.android.generic.p;
import com.avast.android.generic.t;
import com.avast.android.generic.v;

public class CheckBoxRow extends Row
{
  private CheckBox a;
  private boolean b;
  private c c;
  private boolean m = false;
  private boolean n = false;

  public CheckBoxRow(Context paramContext)
  {
    super(paramContext);
  }

  public CheckBoxRow(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, p.c);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, ab.e, p.c, aa.b));
  }

  public CheckBoxRow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, ab.e, paramInt, aa.b));
  }

  protected void a()
  {
    this.a = ((CheckBox)inflate(getContext(), v.E, this).findViewById(t.Z));
    this.a.setId(-1);
    this.a.setChecked(this.b);
    a(new a(this));
    this.a.setOnCheckedChangeListener(new b(this));
  }

  protected void a(Context paramContext, TypedArray paramTypedArray)
  {
    this.b = paramTypedArray.getBoolean(3, false);
    paramTypedArray.recycle();
  }

  public void a(c paramc)
  {
    this.c = paramc;
  }

  public void a(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }

  public void b()
  {
    if (e() != null)
      this.m = true;
    try
    {
      this.a.setChecked(e().b(this.g, this.b));
      return;
    }
    finally
    {
      this.m = false;
    }
  }

  public void b(boolean paramBoolean)
  {
    if (this.a.isChecked() != paramBoolean)
    {
      if (e() != null)
        e().a(this.g, paramBoolean);
      this.n = true;
    }
    try
    {
      this.a.setChecked(paramBoolean);
      return;
    }
    finally
    {
      this.n = false;
    }
  }

  public boolean c()
  {
    return this.a.isChecked();
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof CheckBoxRow.SavedState))
      super.onRestoreInstanceState(paramParcelable);
    while (true)
    {
      return;
      CheckBoxRow.SavedState localSavedState = (CheckBoxRow.SavedState)paramParcelable;
      super.onRestoreInstanceState(localSavedState.getSuperState());
      this.m = true;
      try
      {
        this.a.setChecked(localSavedState.a);
        this.m = false;
        setEnabled(localSavedState.b);
      }
      finally
      {
        this.m = false;
      }
    }
  }

  protected Parcelable onSaveInstanceState()
  {
    CheckBoxRow.SavedState localSavedState = new CheckBoxRow.SavedState(super.onSaveInstanceState());
    localSavedState.a = this.a.isChecked();
    localSavedState.b = isEnabled();
    return localSavedState;
  }

  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    super.setFocusable(paramBoolean);
    super.setClickable(paramBoolean);
    this.a.setEnabled(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.CheckBoxRow
 * JD-Core Version:    0.6.2
 */