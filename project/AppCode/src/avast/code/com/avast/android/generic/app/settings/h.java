package com.avast.android.generic.app.settings;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class h
  implements AdapterView.OnItemClickListener
{
  h(SetRecoveryNumberDialog paramSetRecoveryNumberDialog, boolean paramBoolean)
  {
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (!this.a)
      paramInt++;
    SetRecoveryNumberDialog.a(this.b, paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.settings.h
 * JD-Core Version:    0.6.2
 */