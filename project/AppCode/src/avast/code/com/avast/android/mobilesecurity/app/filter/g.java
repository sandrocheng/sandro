package com.avast.android.mobilesecurity.app.filter;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class g
  implements AdapterView.OnItemClickListener
{
  g(FilterContactsFragment.AddOperationDialog paramAddOperationDialog)
  {
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.a.dismiss();
    FilterContactsFragment.a(this.a.a, paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.g
 * JD-Core Version:    0.6.2
 */