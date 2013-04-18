package com.ijinshan.kinghelper.firewall;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.keniu.security.mydb.opt.a;

final class da
  implements AdapterView.OnItemClickListener
{
  da(IpProvinceCityActivity paramIpProvinceCityActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Intent localIntent = new Intent(this.a, IpDialHeaderAddActivity.class);
    if (IpProvinceCityActivity.a(this.a).getAdapter() == IpProvinceCityActivity.b(this.a))
    {
      IpProvinceCityActivity.a(this.a, IpProvinceCityActivity.c(this.a)[paramInt]);
      if (paramInt < 4)
      {
        dc.e(IpProvinceCityActivity.d(this.a));
        this.a.startActivity(localIntent);
        this.a.finish();
      }
    }
    while (true)
    {
      return;
      IpProvinceCityActivity.a(this.a, a.b(IpProvinceCityActivity.d(this.a)));
      IpProvinceCityActivity.a(this.a, new db(this.a, IpProvinceCityActivity.e(this.a)));
      IpProvinceCityActivity.a(this.a).setAdapter(IpProvinceCityActivity.f(this.a));
      continue;
      if (IpProvinceCityActivity.a(this.a).getAdapter() == IpProvinceCityActivity.f(this.a))
      {
        IpProvinceCityActivity.a(this.a, IpProvinceCityActivity.e(this.a)[paramInt]);
        dc.e(IpProvinceCityActivity.d(this.a));
        this.a.startActivity(localIntent);
        this.a.finish();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.da
 * JD-Core Version:    0.6.2
 */