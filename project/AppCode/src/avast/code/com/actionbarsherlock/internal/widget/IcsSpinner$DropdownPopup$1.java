package com.actionbarsherlock.internal.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class IcsSpinner$DropdownPopup$1
  implements AdapterView.OnItemClickListener
{
  IcsSpinner$DropdownPopup$1(IcsSpinner.DropdownPopup paramDropdownPopup, IcsSpinner paramIcsSpinner)
  {
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.this$1.this$0.setSelection(paramInt);
    this.this$1.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsSpinner.DropdownPopup.1
 * JD-Core Version:    0.6.2
 */