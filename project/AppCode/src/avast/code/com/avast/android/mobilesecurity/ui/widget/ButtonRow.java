package com.avast.android.mobilesecurity.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.avast.android.generic.ui.widget.Row;
import com.avast.android.mobilesecurity.v;

public class ButtonRow extends Row
{
  private View a;
  private Drawable b;
  private int c;

  public ButtonRow(Context paramContext)
  {
    this(paramContext, null);
  }

  public ButtonRow(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130772096);
  }

  public ButtonRow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected void a()
  {
    inflate(getContext(), 2130903189, this);
    this.a = findViewById(2131165633);
    this.a.setId(-1);
    this.a.setClickable(true);
    this.a.setFocusable(true);
    this.a.setOnClickListener(new c(this));
    this.a.setBackgroundDrawable(this.b);
    this.j = ((TextView)findViewById(2131165207));
    if ((this.j != null) && (this.c != 0))
      this.j.setTextAppearance(getContext(), this.c);
  }

  protected void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super.a(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, v.b, paramInt, 2131558580);
    this.b = localTypedArray.getDrawable(3);
    this.c = localTypedArray.getResourceId(1, 2130772097);
    localTypedArray.recycle();
  }

  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    this.a.setEnabled(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.ButtonRow
 * JD-Core Version:    0.6.2
 */