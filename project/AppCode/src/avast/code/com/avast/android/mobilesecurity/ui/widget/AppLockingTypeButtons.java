package com.avast.android.mobilesecurity.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.ToggleButton;
import com.avast.android.generic.d.d;
import com.avast.android.generic.d.e;
import com.avast.android.generic.d.f;
import com.avast.android.generic.ui.widget.Row;
import com.avast.android.mobilesecurity.v;

public class AppLockingTypeButtons extends Row
{
  private boolean a;
  private b b;
  private ImageView c;
  private Drawable m;
  private ToggleButton n;
  private boolean o;
  private boolean p;
  private boolean q = false;

  public AppLockingTypeButtons(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 2130772082);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, v.g, 2130772082, 2131558532));
  }

  public AppLockingTypeButtons(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, v.g, paramInt, 2131558532));
  }

  private void a(Context paramContext, TypedArray paramTypedArray)
  {
    this.a = paramTypedArray.getBoolean(3, false);
    this.o = this.a;
    paramTypedArray.recycle();
  }

  private void a(boolean paramBoolean)
  {
    this.p = paramBoolean;
    this.n.setChecked(paramBoolean);
    if (e() != null)
      e().a("lock_enabled", paramBoolean);
    if (this.b != null)
      this.b.a(this, paramBoolean);
  }

  private void b(boolean paramBoolean)
  {
    if (paramBoolean)
      this.n.setBackgroundResource(2130837878);
    while (true)
    {
      this.n.invalidate();
      return;
      this.n.setBackgroundResource(2130837877);
    }
  }

  private d c()
  {
    boolean bool = e() instanceof d;
    d locald = null;
    if (bool)
      locald = (d)e();
    return locald;
  }

  private f d()
  {
    boolean bool = e() instanceof f;
    f localf = null;
    if (bool)
      localf = (f)e();
    return localf;
  }

  protected void a()
  {
    if (this.q)
      return;
    this.q = true;
    if (this.l != 0)
    {
      inflate(getContext(), this.l, this);
      label33: setBackgroundResource(2130837873);
      setClickable(true);
      setFocusable(true);
      this.c = ((ImageView)findViewById(2131165273));
      this.c.setId(-1);
      if (this.m == null)
        break label141;
      this.c.setVisibility(0);
      this.c.setImageDrawable(this.m);
    }
    while (true)
    {
      this.n = ((ToggleButton)findViewById(2131165632));
      this.n.setOnCheckedChangeListener(new a(this));
      break;
      inflate(getContext(), 2130903187, this);
      break label33;
      label141: this.c.setVisibility(8);
    }
  }

  public void b()
  {
    int i = 1;
    d locald = c();
    if (locald != null)
      locald.b();
    this.p = e().b("lock_enabled", this.o);
    if (e().a("custom_settings") == i);
    while (true)
    {
      b(i);
      if (locald != null)
        locald.c();
      this.n.setChecked(this.p);
      return;
      int j = 0;
    }
  }

  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    this.n.setEnabled(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.AppLockingTypeButtons
 * JD-Core Version:    0.6.2
 */