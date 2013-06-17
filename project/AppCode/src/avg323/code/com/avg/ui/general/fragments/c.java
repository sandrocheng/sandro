package com.avg.ui.general.fragments;

import android.app.Activity;
import android.support.v4.app.e;
import com.avg.ui.general.a.a;

public abstract class c extends e
{
  protected a Y = null;

  public void a(Activity paramActivity)
  {
    super.a(paramActivity);
    try
    {
      this.Y = ((a)paramActivity);
      return;
    }
    catch (ClassCastException localClassCastException)
    {
    }
    throw new ClassCastException(paramActivity.toString() + " must implement BaseToolFragmentActivity");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.fragments.c
 * JD-Core Version:    0.6.2
 */