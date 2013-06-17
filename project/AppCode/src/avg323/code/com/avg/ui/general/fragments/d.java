package com.avg.ui.general.fragments;

import android.app.Activity;
import android.support.v4.app.aa;
import android.view.View;
import android.widget.TextView;
import com.avg.ui.general.a.a;

public abstract class d extends aa
{
  protected a ad = null;

  public void a(Activity paramActivity)
  {
    super.a(paramActivity);
    try
    {
      this.ad = ((a)paramActivity);
      return;
    }
    catch (ClassCastException localClassCastException)
    {
    }
    throw new ClassCastException(paramActivity.toString() + " must implement BaseToolFragmentActivity");
  }

  protected void a(String paramString, View paramView)
  {
    View localView = paramView.findViewById(com.avg.ui.general.d.fragment_title);
    localView.setVisibility(0);
    ((TextView)localView.findViewById(com.avg.ui.general.d.fragment_title_text)).setText(paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.fragments.d
 * JD-Core Version:    0.6.2
 */