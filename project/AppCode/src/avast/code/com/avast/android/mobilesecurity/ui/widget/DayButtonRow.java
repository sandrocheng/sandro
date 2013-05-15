package com.avast.android.mobilesecurity.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.Button;
import com.avast.android.generic.d.e;
import com.avast.android.generic.ui.widget.BlackButtonRow;

public class DayButtonRow extends BlackButtonRow
{
  private int b;
  private int c;
  private l m;

  public DayButtonRow(Context paramContext)
  {
    super(paramContext);
  }

  public DayButtonRow(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 2130772082);
  }

  public DayButtonRow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.a.setText(String.valueOf(paramInt));
    if ((paramBoolean1) && (paramInt != this.b) && (e() != null))
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
      a(new h(this));
    a(this.c, false, false);
  }

  public void a(int paramInt)
  {
    a(paramInt, true, false);
  }

  protected void a(Context paramContext, TypedArray paramTypedArray)
  {
    this.c = Integer.parseInt(paramTypedArray.getString(3));
    paramTypedArray.recycle();
  }

  public void a(l paraml)
  {
    this.m = paraml;
  }

  public void b()
  {
    a(e().b(this.g, this.c), false, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.DayButtonRow
 * JD-Core Version:    0.6.2
 */