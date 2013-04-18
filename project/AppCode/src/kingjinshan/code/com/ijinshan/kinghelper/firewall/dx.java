package com.ijinshan.kinghelper.firewall;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public final class dx extends BaseAdapter
{
  List a;
  Context b;

  public dx(ServicesSmsDetailActivity paramServicesSmsDetailActivity, Context paramContext, List paramList)
  {
    this.b = paramContext;
    this.a = paramList;
  }

  public final int getCount()
  {
    return this.a.size();
  }

  public final Object getItem(int paramInt)
  {
    return this.a.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ServicesSmsListActivity.SMSContent localSMSContent = (ServicesSmsListActivity.SMSContent)this.a.get(paramInt);
    View localView = ((LayoutInflater)this.b.getSystemService("layout_inflater")).inflate(2130903270, null);
    TextView localTextView1 = (TextView)localView.findViewById(2131231549);
    TextView localTextView2 = (TextView)localView.findViewById(2131231548);
    localTextView1.setText(localSMSContent.b);
    localTextView2.setText(ServicesSmsDetailActivity.a().format(new Date(localSMSContent.a)));
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.dx
 * JD-Core Version:    0.6.2
 */