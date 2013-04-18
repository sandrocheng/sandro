package com.ijinshan.kinghelper.firewall;

import android.content.res.Resources;
import android.database.Cursor;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;

final class h
  implements AdapterView.OnItemLongClickListener
{
  h(FirewallCallLogListActivity paramFirewallCallLogListActivity)
  {
  }

  public final boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Cursor localCursor = (Cursor)paramAdapterView.getItemAtPosition(paramInt);
    long l = localCursor.getLong(localCursor.getColumnIndex("_id"));
    String str = localCursor.getString(localCursor.getColumnIndex("number"));
    if (TextUtils.isEmpty(str));
    for (String[] arrayOfString = this.a.getResources().getStringArray(2131165197); ; arrayOfString = this.a.getResources().getStringArray(2131165196))
    {
      aq localaq = new aq(this.a, (byte)0);
      localaq.a("更多操作");
      localaq.a(arrayOfString, new i(this, str, l));
      localaq.c().show();
      return false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.h
 * JD-Core Version:    0.6.2
 */