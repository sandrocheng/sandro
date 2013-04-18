package com.ijinshan.kinghelper.firewall;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;

final class ce extends BaseAdapter
  implements View.OnClickListener
{
  private LayoutInflater b;

  public ce(IpDialNoUseNumberListActivity paramIpDialNoUseNumberListActivity, Context paramContext)
  {
    this.b = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }

  public final int getCount()
  {
    return IpDialNoUseNumberListActivity.e(this.a).size();
  }

  public final Object getItem(int paramInt)
  {
    return IpDialNoUseNumberListActivity.e(this.a).get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    HashMap localHashMap = (HashMap)IpDialNoUseNumberListActivity.e(this.a).get(paramInt);
    View localView1 = this.b.inflate(2130903213, null);
    TextView localTextView1 = (TextView)localView1.findViewById(2131231375);
    TextView localTextView2 = (TextView)localView1.findViewById(2131231376);
    View localView2 = localView1.findViewById(2131231377);
    localTextView1.setText((String)localHashMap.get("ip_dial_no_use_number_title"));
    localTextView2.setText((String)localHashMap.get("ip_dial_no_use_number_body"));
    localView2.setOnClickListener(this);
    cf localcf = new cf(this);
    localcf.a = paramInt;
    localView2.setTag(localcf);
    return localView1;
  }

  public final void onClick(View paramView)
  {
    int i = ((cf)paramView.getTag()).a;
    IpDialNoUseNumberListActivity.f(this.a).remove(i + 1);
    IpDialNoUseNumberListActivity.f(this.a).remove(i);
    IpDialNoUseNumberListActivity.e(this.a).remove(i);
    IpDialNoUseNumberListActivity.b(this.a);
    IpDialNoUseNumberListActivity.c(this.a);
    IpDialNoUseNumberListActivity.d(this.a).notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ce
 * JD-Core Version:    0.6.2
 */