package com.keniu.security.process;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListView;
import com.jxphone.mosecurity.d.m;
import com.keniu.security.d.e;

final class h
  implements AdapterView.OnItemLongClickListener
{
  h(ProcessManagerActivity paramProcessManagerActivity)
  {
  }

  public final boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    e locale = (e)ProcessManagerActivity.b(this.a).getItemAtPosition(paramInt);
    if (locale.c == 4)
    {
      ProcessManagerActivity.n(this.a);
      ProcessManagerActivity.l(this.a).d(locale.b());
    }
    while (true)
    {
      ((o)paramAdapterView.getAdapter()).a(paramInt);
      ProcessManagerActivity.p(this.a);
      ProcessManagerActivity.a(this.a, locale.d());
      return true;
      if (locale.c == 2)
      {
        ProcessManagerActivity.o(this.a);
        ProcessManagerActivity.l(this.a).c(locale.b());
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.h
 * JD-Core Version:    0.6.2
 */