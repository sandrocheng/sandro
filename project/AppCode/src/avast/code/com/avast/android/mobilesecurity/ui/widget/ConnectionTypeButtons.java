package com.avast.android.mobilesecurity.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.ToggleButton;
import com.avast.android.generic.ui.widget.Row;
import com.avast.android.generic.util.u;
import com.avast.android.mobilesecurity.v;

public class ConnectionTypeButtons extends Row
{
  private final String a = "Wifi";
  private final String b = "Mobile";
  private final String c = "Roaming";
  private boolean m;
  private g n;
  private ImageView o;
  private Drawable p;
  private ToggleButton q;
  private ToggleButton r;
  private ToggleButton s;
  private boolean t;
  private boolean u;
  private boolean v;
  private boolean w = false;
  private Boolean x = Boolean.valueOf(false);

  public ConnectionTypeButtons(Context paramContext)
  {
    super(paramContext);
    onFinishInflate();
  }

  public ConnectionTypeButtons(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 2130772082);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, v.g, 2130772082, 2131558532));
  }

  public ConnectionTypeButtons(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, v.g, paramInt, 2131558532));
  }

  public ConnectionTypeButtons(Context paramContext, String paramString)
  {
    super(paramContext);
    onFinishInflate();
    this.g = paramString;
  }

  private void a(Context paramContext, TypedArray paramTypedArray)
  {
    this.m = paramTypedArray.getBoolean(3, false);
    this.t = this.m;
    this.u = this.m;
    this.v = this.m;
    paramTypedArray.recycle();
  }

  private com.avast.android.generic.d.d g()
  {
    boolean bool = e() instanceof com.avast.android.generic.d.d;
    com.avast.android.generic.d.d locald = null;
    if (bool)
      locald = (com.avast.android.generic.d.d)e();
    return locald;
  }

  protected void a()
  {
    if (this.w)
      return;
    this.w = true;
    if (this.l != 0)
    {
      inflate(getContext(), this.l, this);
      label33: setBackgroundResource(2130837873);
      setClickable(true);
      setFocusable(true);
      this.o = ((ImageView)findViewById(2131165273));
      this.o.setId(-1);
      if (this.p == null)
        break label225;
      this.o.setVisibility(0);
      this.o.setImageDrawable(this.p);
    }
    while (true)
    {
      this.q = ((ToggleButton)findViewById(2131165635));
      this.r = ((ToggleButton)findViewById(2131165636));
      this.s = ((ToggleButton)findViewById(2131165637));
      if (!u.a(getContext()))
      {
        this.r.setVisibility(8);
        this.s.setVisibility(8);
      }
      this.q.setOnCheckedChangeListener(new d(this));
      this.r.setOnCheckedChangeListener(new e(this));
      this.s.setOnCheckedChangeListener(new f(this));
      break;
      inflate(getContext(), 2130903191, this);
      break label33;
      label225: this.o.setVisibility(8);
    }
  }

  public void a(int paramInt)
  {
    this.o.setVisibility(0);
    this.o.setImageResource(paramInt);
  }

  public void a(Drawable paramDrawable)
  {
    this.p = paramDrawable;
    if (this.o != null)
    {
      this.o.setVisibility(0);
      this.o.setImageDrawable(paramDrawable);
    }
  }

  public void a(g paramg)
  {
    this.n = paramg;
  }

  public void a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    this.t = paramBoolean1;
    this.u = paramBoolean2;
    this.v = paramBoolean3;
  }

  public void b()
  {
    synchronized (this.x)
    {
      this.x = Boolean.valueOf(true);
      com.avast.android.generic.d.d locald = g();
      if (locald != null)
        locald.b();
      this.q.setChecked(e().b(this.g + "Wifi", this.t));
      this.r.setChecked(e().b(this.g + "Mobile", this.u));
      this.s.setChecked(e().b(this.g + "Roaming", this.v));
      if (locald != null)
        locald.c();
      this.x = Boolean.valueOf(false);
      return;
    }
  }

  public void b(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    this.q.setChecked(paramBoolean1);
    this.r.setChecked(paramBoolean2);
    this.s.setChecked(paramBoolean3);
  }

  public boolean c()
  {
    return this.q.isChecked();
  }

  public boolean d()
  {
    return this.r.isChecked();
  }

  public boolean f()
  {
    return this.s.isChecked();
  }

  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    this.q.setEnabled(paramBoolean);
    this.r.setEnabled(paramBoolean);
    this.s.setEnabled(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.ConnectionTypeButtons
 * JD-Core Version:    0.6.2
 */