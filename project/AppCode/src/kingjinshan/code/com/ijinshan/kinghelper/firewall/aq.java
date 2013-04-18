package com.ijinshan.kinghelper.firewall;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

final class aq extends BaseAdapter
  implements View.OnClickListener
{
  private LayoutInflater b;
  private Context c = null;
  private List d = null;

  public aq(FirewallSettingsKeysActivity paramFirewallSettingsKeysActivity, Context paramContext, List paramList)
  {
    this.c = paramContext;
    this.d = paramList;
    this.b = ((LayoutInflater)this.c.getSystemService("layout_inflater"));
    if (this.d == null)
      this.d = new ArrayList();
  }

  public final int getCount()
  {
    return this.d.size();
  }

  public final Object getItem(int paramInt)
  {
    return this.d.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    String str = (String)this.d.get(paramInt);
    View localView1 = this.b.inflate(2130903211, null);
    TextView localTextView = (TextView)localView1.findViewById(2131231368);
    View localView2 = localView1.findViewById(2131231369);
    localTextView.setText(str);
    localView2.setOnClickListener(this);
    ar localar = new ar(this);
    localar.a = paramInt;
    localView2.setTag(localar);
    return localView1;
  }

  public final void onClick(View paramView)
  {
    ar localar = (ar)paramView.getTag();
    FirewallSettingsKeysActivity.a(this.a).remove(localar.a);
    FirewallSettingsKeysActivity.b(this.a).notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.aq
 * JD-Core Version:    0.6.2
 */