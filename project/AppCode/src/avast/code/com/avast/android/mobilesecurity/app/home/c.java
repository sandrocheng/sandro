package com.avast.android.mobilesecurity.app.home;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

class c
  implements AdapterView.OnItemSelectedListener
{
  c(DashboardFragment paramDashboardFragment)
  {
  }

  public void onItemSelected(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt == -1 + paramAdapterView.getCount())
    {
      paramAdapterView.setDescendantFocusability(262144);
      paramView.findViewById(2131165674).requestFocus();
    }
    while (true)
    {
      return;
      if (!paramAdapterView.isFocused())
      {
        paramAdapterView.setDescendantFocusability(131072);
        paramAdapterView.requestFocus();
      }
    }
  }

  public void onNothingSelected(AdapterView paramAdapterView)
  {
    paramAdapterView.setDescendantFocusability(131072);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.c
 * JD-Core Version:    0.6.2
 */