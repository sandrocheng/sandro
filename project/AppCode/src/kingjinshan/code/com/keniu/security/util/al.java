package com.keniu.security.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class al
  implements AdapterView.OnItemClickListener
{
  al(ai paramai, MyAlertController paramMyAlertController)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.b.v.onClick(MyAlertController.j(this.a), paramInt);
    if (!this.b.E)
      MyAlertController.j(this.a).dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.al
 * JD-Core Version:    0.6.2
 */