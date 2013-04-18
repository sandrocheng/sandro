package com.keniu.security.traffic;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;

final class cw
  implements AdapterView.OnItemClickListener
{
  cw(TrafficSoftListActivity2 paramTrafficSoftListActivity2)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ae localae = (ae)TrafficSoftListActivity2.f(this.a).getAdapter().getItem(paramInt);
    if (localae.a == 1000002)
      Toast.makeText(this.a, "已卸载软件无详细数据", 1).show();
    while (true)
    {
      return;
      if (localae.f == -1000L)
      {
        Toast.makeText(this.a, "此类软件暂无详细数据", 1).show();
      }
      else
      {
        Intent localIntent = new Intent(this.a, TrafficSoftDetailActivity.class);
        localIntent.putExtra("userId", localae.a);
        localIntent.putExtra("packagename", localae.b);
        localIntent.putExtra("label", localae.d);
        this.a.startActivity(localIntent);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.cw
 * JD-Core Version:    0.6.2
 */