package com.actionbarsherlock.internal.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

class IcsListPopupWindow$1
  implements AdapterView.OnItemSelectedListener
{
  IcsListPopupWindow$1(IcsListPopupWindow paramIcsListPopupWindow)
  {
  }

  public void onItemSelected(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt != -1)
    {
      IcsListPopupWindow.DropDownListView localDropDownListView = IcsListPopupWindow.access$600(this.this$0);
      if (localDropDownListView != null)
        IcsListPopupWindow.DropDownListView.access$502(localDropDownListView, false);
    }
  }

  public void onNothingSelected(AdapterView paramAdapterView)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsListPopupWindow.1
 * JD-Core Version:    0.6.2
 */