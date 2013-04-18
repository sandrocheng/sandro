package com.keniu.security.process;

import android.os.Handler;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.jxphone.mosecurity.d.m;
import com.keniu.security.d.e;

final class g
  implements AdapterView.OnItemClickListener
{
  g(ProcessManagerActivity paramProcessManagerActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ProcessManagerActivity.a(this.a, paramInt);
    e locale;
    if (ProcessManagerActivity.b(this.a).getAdapter() != null)
    {
      locale = (e)ProcessManagerActivity.b(this.a).getAdapter().getItem(paramInt);
      if ((locale != null) && (!ProcessManagerActivity.l(this.a).e(locale.b())));
    }
    else
    {
      return;
    }
    if (locale.a())
      locale.a(false);
    while (true)
    {
      ProcessManagerActivity.k(this.a).post(new k(this.a, (e)ProcessManagerActivity.b(this.a).getAdapter().getItem(ProcessManagerActivity.m(this.a))));
      ((o)ProcessManagerActivity.b(this.a).getAdapter()).notifyDataSetChanged();
      break;
      locale.a(true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.g
 * JD-Core Version:    0.6.2
 */