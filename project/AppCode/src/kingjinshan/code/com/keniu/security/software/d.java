package com.keniu.security.software;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.keniu.security.d.a;

final class d
  implements AdapterView.OnItemClickListener
{
  d(APKManagerActivity paramAPKManagerActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    APKManagerActivity.a(this.a, paramInt);
    a locala = (a)APKManagerActivity.a(this.a).getAdapter().getItem(APKManagerActivity.h(this.a));
    if ((locala.e == 1) || (locala.e == 3));
    while (true)
    {
      return;
      this.a.showDialog(1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.d
 * JD-Core Version:    0.6.2
 */