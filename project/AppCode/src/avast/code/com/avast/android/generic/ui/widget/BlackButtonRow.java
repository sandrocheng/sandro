package com.avast.android.generic.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.Button;
import com.avast.android.generic.aa;
import com.avast.android.generic.ab;
import com.avast.android.generic.d.e;
import com.avast.android.generic.p;
import com.avast.android.generic.t;
import com.avast.android.generic.v;

public class BlackButtonRow extends Row
{
  protected Button a;
  private String b;

  public BlackButtonRow(Context paramContext)
  {
    super(paramContext);
  }

  public BlackButtonRow(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, p.c);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, ab.e, p.c, aa.b));
  }

  public BlackButtonRow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, ab.e, paramInt, aa.b));
  }

  protected void a()
  {
    inflate(getContext(), v.r, this);
    this.a = ((Button)findViewById(t.ae));
    this.a.setId(-1);
  }

  protected void a(Context paramContext, TypedArray paramTypedArray)
  {
    this.b = paramTypedArray.getString(3);
    paramTypedArray.recycle();
  }

  public void b()
  {
    this.a.setText(e().b(this.g, this.b));
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
 * Qualified Name:     com.avast.android.generic.ui.widget.BlackButtonRow
 * JD-Core Version:    0.6.2
 */