package com.ijinshan.kinghelper.firewall;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.ResourceCursorAdapter;
import android.widget.TextView;
import com.ijinshan.kinghelper.a.i;
import com.ijinshan.kinghelper.a.j;
import com.ijinshan.kinghelper.common.DontPressWithParentCheckBox;
import com.ijinshan.kinghelper.firewall.a.e;

final class bw extends ResourceCursorAdapter
  implements CompoundButton.OnCheckedChangeListener
{
  private SparseBooleanArray b = new SparseBooleanArray();

  public bw(FirewallSmsLogListActivity paramFirewallSmsLogListActivity, Context paramContext, Cursor paramCursor)
  {
    super(paramContext, 2130903209, paramCursor);
    this.b.clear();
  }

  public final void a()
  {
    getCursor().requery();
    notifyDataSetChanged();
  }

  public final void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    bv localbv = (bv)paramView.getTag();
    long l1 = paramCursor.getInt(paramCursor.getColumnIndex("logtype"));
    String str1 = paramCursor.getString(paramCursor.getColumnIndex("address"));
    String str2 = paramCursor.getString(paramCursor.getColumnIndex("body"));
    long l2 = paramCursor.getLong(paramCursor.getColumnIndex("firewall_log_time"));
    int i = paramCursor.getInt(paramCursor.getColumnIndex("_id"));
    int j = paramCursor.getInt(paramCursor.getColumnIndex("read"));
    String str3 = e.d(i.a(str1));
    String str4;
    if (TextUtils.isEmpty(str3))
    {
      localbv.g = com.jxphone.mosecurity.d.a.a(paramContext).a(i.a(str1), this.a.getString(2131427718));
      str4 = j.a(paramContext, str1);
      if (l1 != com.ijinshan.kinghelper.firewall.a.a.i)
        break label373;
      localbv.a.setText(2131427854);
      label178: if (l1 != com.ijinshan.kinghelper.firewall.a.a.h)
        break label482;
    }
    label482: for (String str5 = paramCursor.getString(paramCursor.getColumnIndex("firewall_log_description")) + paramContext.getString(2131427853); ; str5 = str2)
    {
      localbv.b.setText(str5);
      if (j == 0)
        localbv.c.setImageResource(2130837928);
      while (true)
      {
        localbv.d.setText(FirewallSmsLogListActivity.a(l2));
        localbv.d.setVisibility(0);
        localbv.f = str1;
        localbv.h = str5;
        localbv.i = l2;
        localbv.j = i;
        localbv.k = paramCursor.getPosition();
        localbv.e.setTag(localbv);
        localbv.e.setChecked(this.b.get(paramCursor.getPosition()));
        localbv.e.setOnCheckedChangeListener(this);
        localbv.e.setVisibility(8);
        return;
        localbv.g = str3;
        break;
        label373: if (!TextUtils.isEmpty(str4))
        {
          localbv.a.setText(str4 + " (" + localbv.g + ")");
          break label178;
        }
        localbv.a.setText(str1 + " (" + localbv.g + ")");
        break label178;
        localbv.c.setImageResource(2130837923);
      }
    }
  }

  public final View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    View localView = super.newView(paramContext, paramCursor, paramViewGroup);
    bv localbv = new bv();
    localbv.a = ((TextView)localView.findViewById(2131231355));
    localbv.b = ((TextView)localView.findViewById(2131231356));
    localbv.c = ((ImageView)localView.findViewById(2131231360));
    localbv.d = ((TextView)localView.findViewById(2131231358));
    localbv.e = ((DontPressWithParentCheckBox)localView.findViewById(2131231359));
    localView.setTag(localbv);
    return localView;
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    bv localbv = (bv)paramCompoundButton.getTag();
    if (paramBoolean)
      this.b.put(localbv.k, true);
    while (true)
    {
      return;
      this.b.delete(localbv.k);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.bw
 * JD-Core Version:    0.6.2
 */