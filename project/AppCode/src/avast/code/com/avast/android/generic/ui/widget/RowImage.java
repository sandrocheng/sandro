package com.avast.android.generic.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.avast.android.generic.aa;
import com.avast.android.generic.ab;
import com.avast.android.generic.p;
import com.avast.android.generic.t;
import com.avast.android.generic.util.al;
import com.avast.android.generic.v;

public class RowImage extends Row
{
  private ImageView a;
  private int b;
  private boolean c;
  private ImageView m;

  public RowImage(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, p.c);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, ab.e, p.c, aa.b));
    b(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, ab.f, p.c, aa.b));
  }

  public RowImage(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, ab.e, paramInt, aa.b));
  }

  protected void a()
  {
    View localView = inflate(getContext(), v.a, this);
    this.m = ((ImageView)localView.findViewById(t.ac));
    if (this.c)
      this.m.setVisibility(8);
    this.a = ((ImageView)localView.findViewById(t.aJ));
    if (this.b != 0)
    {
      this.a.setVisibility(0);
      this.a.setImageResource(this.b);
    }
  }

  protected void a(Context paramContext, TypedArray paramTypedArray)
  {
    paramTypedArray.recycle();
  }

  protected void b(Context paramContext, TypedArray paramTypedArray)
  {
    this.b = paramTypedArray.getResourceId(3, 0);
    paramTypedArray.recycle();
    this.c = al.b(paramContext);
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof RowImage.SavedState))
      super.onRestoreInstanceState(paramParcelable);
    while (true)
    {
      return;
      RowImage.SavedState localSavedState = (RowImage.SavedState)paramParcelable;
      super.onRestoreInstanceState(localSavedState.getSuperState());
      setEnabled(localSavedState.a);
    }
  }

  protected Parcelable onSaveInstanceState()
  {
    RowImage.SavedState localSavedState = new RowImage.SavedState(super.onSaveInstanceState());
    localSavedState.a = isEnabled();
    return localSavedState;
  }

  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    super.setFocusable(paramBoolean);
    super.setClickable(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.RowImage
 * JD-Core Version:    0.6.2
 */