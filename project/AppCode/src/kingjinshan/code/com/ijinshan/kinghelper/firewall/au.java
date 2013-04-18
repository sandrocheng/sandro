package com.ijinshan.kinghelper.firewall;

import android.content.res.Resources;
import android.database.Cursor;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import com.ijinshan.kinghelper.firewall.a.a;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;

final class au
  implements AdapterView.OnItemLongClickListener
{
  au(FirewallSmsLogListActivity paramFirewallSmsLogListActivity)
  {
  }

  public final boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Cursor localCursor = (Cursor)paramAdapterView.getItemAtPosition(paramInt);
    long l = localCursor.getLong(localCursor.getColumnIndex("_id"));
    String str1 = localCursor.getString(localCursor.getColumnIndex("address"));
    String str2 = localCursor.getString(localCursor.getColumnIndex("body"));
    int i = localCursor.getInt(localCursor.getColumnIndex("logtype"));
    String[] arrayOfString1 = this.a.getResources().getStringArray(2131165198);
    String[] arrayOfString2 = this.a.getResources().getStringArray(2131165203);
    if (i == a.i)
    {
      int j = str2.indexOf("http://");
      aq localaq2 = new aq(this.a, (byte)0);
      localaq2.a(2131427933);
      localaq2.a(arrayOfString2, new av(this, j, l, str2));
      localaq2.c().show();
    }
    while (true)
    {
      return false;
      aq localaq1 = new aq(this.a, (byte)0);
      localaq1.a(2131427933);
      localaq1.a(arrayOfString1, new aw(this, l, str1, str2));
      localaq1.c().show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.au
 * JD-Core Version:    0.6.2
 */