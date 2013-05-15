package com.avast.android.generic.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.app.FragmentManager;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import com.avast.android.generic.aa;
import com.avast.android.generic.ab;
import com.avast.android.generic.p;
import com.avast.android.generic.t;
import com.avast.android.generic.v;

public class NextRow extends Row
{
  protected boolean a;
  private String b;
  private FragmentManager c;
  private int m;
  private ImageView n;
  private ImageView o;
  private int p;

  public NextRow(Context paramContext)
  {
    super(paramContext);
  }

  public NextRow(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, p.a);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, ab.e, p.a, aa.c));
    b(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, ab.f, p.a, aa.c));
  }

  public NextRow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, ab.e, paramInt, aa.c));
    b(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, ab.f, paramInt, aa.c));
  }

  private void a(Context paramContext, TypedArray paramTypedArray)
  {
    paramTypedArray.recycle();
  }

  private void b(Context paramContext, TypedArray paramTypedArray)
  {
    this.b = paramTypedArray.getString(1);
    this.m = paramTypedArray.getResourceId(2, 0);
    this.p = paramTypedArray.getResourceId(3, 0);
    this.a = paramTypedArray.getBoolean(4, false);
    paramTypedArray.recycle();
  }

  protected void a()
  {
    inflate(getContext(), v.n, this);
    this.n = ((ImageView)findViewById(t.ac));
    this.o = ((ImageView)findViewById(t.P));
    if (this.p != 0)
    {
      this.o.setVisibility(0);
      this.o.setImageResource(this.p);
      if (this.a)
      {
        LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)this.o.getLayoutParams();
        localLayoutParams.gravity = 48;
        this.o.setLayoutParams(localLayoutParams);
      }
    }
    a(new j(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.NextRow
 * JD-Core Version:    0.6.2
 */