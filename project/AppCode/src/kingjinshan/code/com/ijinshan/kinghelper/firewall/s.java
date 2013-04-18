package com.ijinshan.kinghelper.firewall;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.TextView;
import java.util.List;

public final class s extends BaseExpandableListAdapter
{
  private Cursor b;
  private List c;
  private Context d;

  public s(FirewallCommonServiceQueryActivity paramFirewallCommonServiceQueryActivity, Cursor paramCursor, List paramList, Context paramContext)
  {
    this.d = paramContext;
    this.c = paramList;
    this.b = paramCursor;
  }

  public final Object getChild(int paramInt1, int paramInt2)
  {
    return null;
  }

  public final long getChildId(int paramInt1, int paramInt2)
  {
    return 0L;
  }

  public final View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    View localView = ((LayoutInflater)this.d.getSystemService("layout_inflater")).inflate(2130903277, null);
    TextView localTextView1 = (TextView)localView.findViewById(2131231547);
    TextView localTextView2 = (TextView)localView.findViewById(2131231556);
    Cursor localCursor = (Cursor)this.c.get(paramInt1);
    localCursor.moveToPosition(paramInt2);
    localTextView1.setText(localCursor.getString(localCursor.getColumnIndex(FirewallCommonServiceQueryActivity.a())));
    localTextView2.setText(localCursor.getString(localCursor.getColumnIndex(FirewallCommonServiceQueryActivity.b())));
    return localView;
  }

  public final int getChildrenCount(int paramInt)
  {
    return ((Cursor)this.c.get(paramInt)).getCount();
  }

  public final Object getGroup(int paramInt)
  {
    return null;
  }

  public final int getGroupCount()
  {
    return this.c.size();
  }

  public final long getGroupId(int paramInt)
  {
    return 0L;
  }

  public final View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    View localView = ((LayoutInflater)this.d.getSystemService("layout_inflater")).inflate(2130903276, null);
    TextView localTextView = (TextView)localView.findViewById(2131231547);
    this.b.moveToPosition(paramInt);
    localTextView.setText(this.b.getString(this.b.getColumnIndex(FirewallCommonServiceQueryActivity.a())));
    return localView;
  }

  public final boolean hasStableIds()
  {
    return false;
  }

  public final boolean isChildSelectable(int paramInt1, int paramInt2)
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.s
 * JD-Core Version:    0.6.2
 */