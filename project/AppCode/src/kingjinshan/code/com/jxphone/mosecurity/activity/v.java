package com.jxphone.mosecurity.activity;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

abstract class v extends BaseActivity
{
  private boolean b = false;
  private String c;
  private ViewGroup d;

  private void e()
  {
    this.d.removeAllViews();
    if (this.b)
    {
      View localView2 = View.inflate(this, 2130903192, null);
      this.d.addView(localView2);
      ((TextView)this.d.findViewById(2131231097)).setText(this.c);
    }
    while (true)
    {
      return;
      View localView1 = View.inflate(this, j(), null);
      this.d.addView(localView1);
    }
  }

  public void a(String paramString)
  {
    this.b = true;
    this.c = paramString;
    e();
  }

  public boolean h()
  {
    return this.b;
  }

  protected int i()
  {
    return 2130903193;
  }

  protected int j()
  {
    return 2130903194;
  }

  protected int k()
  {
    return 2130903192;
  }

  protected final boolean l()
  {
    if (this.b)
    {
      this.b = false;
      e();
    }
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(i());
    try
    {
      this.d = ((ViewGroup)findViewById(2131231086));
      e();
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new ClassCastException("Is R.id.MainFrame a ViewGroup?");
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    throw new NullPointerException("The main view must include a ViewGroup with id=\"@+id/R.id.MainFrame\", check the return value of func mainFrameLayoutId().");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.v
 * JD-Core Version:    0.6.2
 */