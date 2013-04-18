package com.jxphone.mosecurity.activity;

import com.keniu.security.util.au;

public abstract class TabContactActivity extends BaseContactActivity
{
  private boolean l = false;

  protected final void m()
  {
    if (this.l)
      au.a(this, n());
  }

  protected abstract int n();

  protected void onPause()
  {
    super.onPause();
    this.l = false;
  }

  protected void onResume()
  {
    super.onResume();
    this.l = true;
    au.a(this, n());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.TabContactActivity
 * JD-Core Version:    0.6.2
 */