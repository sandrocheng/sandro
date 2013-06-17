package com.antivirus.ui.tablet;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TabHost;
import android.widget.TabWidget;
import com.avg.toolkit.f.a;

class g
  implements View.OnClickListener
{
  g(DualPaneActivity paramDualPaneActivity)
  {
  }

  public void onClick(View paramView)
  {
    try
    {
      String str1 = (String)paramView.getTag();
      if ((str1 != DualPaneActivity.a(this.a)) || (!DualPaneActivity.b(this.a)))
      {
        DualPaneActivity.a(this.a, str1);
        String str2 = paramView.getContentDescription().toString();
        DualPaneActivity.c(this.a).getTabWidget().setCurrentTab(Integer.parseInt(str2));
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a.a("tabClickListener Click Failed. Possible threats: Casting or missing content at view");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.tablet.g
 * JD-Core Version:    0.6.2
 */