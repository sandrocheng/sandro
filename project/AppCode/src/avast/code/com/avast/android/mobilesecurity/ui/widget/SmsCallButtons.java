package com.avast.android.mobilesecurity.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ToggleButton;
import com.avast.android.generic.d.e;
import com.avast.android.generic.ui.widget.Row;
import com.avast.android.mobilesecurity.v;

public class SmsCallButtons extends Row
{
  private boolean a;
  private r b;
  private ToggleButton c;
  private ToggleButton m;

  public SmsCallButtons(Context paramContext)
  {
    super(paramContext);
  }

  public SmsCallButtons(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 2130772082);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, v.g, 2130772082, 2131558532));
  }

  public SmsCallButtons(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, v.g, paramInt, 2131558532));
  }

  private void a(Context paramContext, TypedArray paramTypedArray)
  {
    this.a = paramTypedArray.getBoolean(3, false);
    paramTypedArray.recycle();
  }

  protected void a()
  {
    inflate(getContext(), 2130903200, this);
    this.c = ((ToggleButton)findViewById(2131165643));
    this.m = ((ToggleButton)findViewById(2131165644));
    this.c.setTag("SMS");
    this.m.setTag("Call");
    this.c.setOnCheckedChangeListener(new p(this));
    this.m.setOnCheckedChangeListener(new q(this));
  }

  public void a(r paramr)
  {
    this.b = paramr;
  }

  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
      this.c.setVisibility(0);
    while (true)
    {
      return;
      this.c.setVisibility(4);
    }
  }

  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.c.setEnabled(paramBoolean1);
    this.m.setEnabled(paramBoolean2);
  }

  public void b()
  {
    this.c.setChecked(e().b(this.g + "SMS", this.a));
    this.m.setChecked(e().b(this.g + "Call", this.a));
  }

  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    this.c.setEnabled(paramBoolean);
    this.m.setEnabled(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.SmsCallButtons
 * JD-Core Version:    0.6.2
 */