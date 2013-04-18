package com.hoi.netstat;

import android.os.Handler;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import java.util.ArrayList;
import java.util.HashMap;

final class d
  implements AdapterView.OnItemClickListener
{
  d(NetStatActivity paramNetStatActivity, ArrayList paramArrayList)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    try
    {
      e locale = (e)((HashMap)this.a.get(paramInt)).get("action");
      try
      {
        locale.a();
        return;
      }
      catch (Exception localException2)
      {
        while (true)
        {
          NetStatActivity.a(localException2.toString());
          NetStatActivity.a(locale.b).sendEmptyMessage(0);
        }
      }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        NetStatActivity.a(localException1.toString());
        NetStatActivity.a(this.b).sendEmptyMessage(0);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.netstat.d
 * JD-Core Version:    0.6.2
 */