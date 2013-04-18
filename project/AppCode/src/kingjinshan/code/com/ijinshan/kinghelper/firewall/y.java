package com.ijinshan.kinghelper.firewall;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;

final class y extends BaseAdapter
{
  public y(FirewallDeskSMSActivityApiLevel4 paramFirewallDeskSMSActivityApiLevel4)
  {
  }

  public final void a(int paramInt)
  {
    FirewallDeskSMSActivityApiLevel4.c(this.a).remove(paramInt);
  }

  public final void a(x paramx)
  {
    FirewallDeskSMSActivityApiLevel4.c(this.a).add(paramx);
  }

  public final int getCount()
  {
    return FirewallDeskSMSActivityApiLevel4.c(this.a).size();
  }

  public final Object getItem(int paramInt)
  {
    return FirewallDeskSMSActivityApiLevel4.c(this.a).get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = FirewallDeskSMSActivityApiLevel4.d(this.a).inflate(2130903207, null);
    x localx = (x)FirewallDeskSMSActivityApiLevel4.c(this.a).get(paramInt);
    ((TextView)localView.findViewById(2131231354)).setText(localx.b);
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.y
 * JD-Core Version:    0.6.2
 */