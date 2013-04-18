package com.keniu.security.util;

import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class am
  implements AdapterView.OnItemClickListener
{
  am(ai paramai, MyAlertController.RecycleListView paramRecycleListView, MyAlertController paramMyAlertController)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (this.c.C != null)
      this.c.C[paramInt] = this.a.isItemChecked(paramInt);
    this.c.G.onClick(MyAlertController.j(this.b), paramInt, this.a.isItemChecked(paramInt));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.am
 * JD-Core Version:    0.6.2
 */