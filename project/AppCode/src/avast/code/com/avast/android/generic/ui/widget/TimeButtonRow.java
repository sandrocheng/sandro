package com.avast.android.generic.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.widget.Button;
import com.avast.android.generic.d.e;
import com.avast.android.generic.p;
import com.avast.android.generic.util.aj;

public class TimeButtonRow extends BlackButtonRow
{
  private int b;
  private int c;
  private af m;

  public TimeButtonRow(Context paramContext)
  {
    super(paramContext);
  }

  public TimeButtonRow(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, p.c);
  }

  public TimeButtonRow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.a.setText(aj.a(getContext(), paramInt));
    if ((paramBoolean1) && (paramInt != this.b))
      e().a(this.g, paramInt);
    int i = this.b;
    this.b = paramInt;
    if ((paramBoolean2) && (this.m != null) && (i != paramInt))
      this.m.a(this, paramInt);
  }

  protected void a()
  {
    super.a();
    if (!isInEditMode())
      a(new ad(this, DateFormat.is24HourFormat(getContext())));
    a(this.c, false, false);
  }

  protected void a(Context paramContext, TypedArray paramTypedArray)
  {
    this.c = Integer.parseInt(paramTypedArray.getString(3));
    paramTypedArray.recycle();
  }

  public void b()
  {
    a(e().b(this.g, this.c), false, false);
  }

  public int c()
  {
    return this.b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.TimeButtonRow
 * JD-Core Version:    0.6.2
 */