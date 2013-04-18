package com.ijinshan.kinghelper.firewall;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ResourceCursorAdapter;
import android.widget.TextView;
import com.ijinshan.kinghelper.a.i;
import com.ijinshan.kinghelper.a.j;
import com.ijinshan.kinghelper.firewall.a.e;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.util.ArrayList;

final class q extends ResourceCursorAdapter
  implements View.OnClickListener, CompoundButton.OnCheckedChangeListener
{
  private SparseBooleanArray b = new SparseBooleanArray();

  public q(FirewallCallLogListActivity paramFirewallCallLogListActivity, Context paramContext, Cursor paramCursor)
  {
    super(paramContext, 2130903208, paramCursor);
  }

  private boolean d()
  {
    if (this.b.size() == getCursor().getCount());
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void e()
  {
    int i = getCount();
    for (int j = 0; j < i; j++)
      this.b.put(j, true);
    notifyDataSetChanged();
    notifyDataSetInvalidated();
  }

  public final ArrayList a()
  {
    SparseBooleanArray localSparseBooleanArray = this.b;
    int i = localSparseBooleanArray.size();
    ArrayList localArrayList = new ArrayList(i);
    for (int j = 0; j < i; j++)
      if (localSparseBooleanArray.valueAt(j))
        localArrayList.add(Integer.valueOf(localSparseBooleanArray.keyAt(j)));
    return localArrayList;
  }

  public final void a(int paramInt)
  {
    SparseBooleanArray localSparseBooleanArray = this.b;
    if (!this.b.get(paramInt));
    for (boolean bool = true; ; bool = false)
    {
      localSparseBooleanArray.put(paramInt, bool);
      notifyDataSetChanged();
      notifyDataSetInvalidated();
      return;
    }
  }

  public final void b()
  {
    this.b.clear();
    notifyDataSetChanged();
    notifyDataSetInvalidated();
  }

  public final void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    p localp = (p)paramView.getTag();
    String str1 = com.ijinshan.kinghelper.firewall.a.a.a(paramContext, paramCursor.getString(paramCursor.getColumnIndex("firewall_log_description")));
    String str2 = paramCursor.getString(paramCursor.getColumnIndex("number"));
    long l = paramCursor.getLong(paramCursor.getColumnIndex("date"));
    int i = paramCursor.getInt(paramCursor.getColumnIndex("_id"));
    String str3 = e.d(i.a(str2));
    String str5;
    if (TextUtils.isEmpty(str3))
    {
      localp.h = com.jxphone.mosecurity.d.a.a(paramContext).a(i.a(str2), this.a.getString(2131427718));
      if (!TextUtils.isEmpty(str2))
        break label316;
      str5 = str2 + localp.h;
      label154: localp.a.setText(str5);
      localp.b.setText(str1);
      localp.c.setText(FirewallSmsLogListActivity.a(l));
      if (!FirewallCallLogListActivity.a(this.a))
        break label408;
      localp.c.setVisibility(8);
      label207: localp.g = str2;
      localp.j = l;
      localp.i = str1;
      localp.k = i;
      localp.l = paramCursor.getPosition();
      localp.e.setTag(localp);
      localp.e.setChecked(this.b.get(paramCursor.getPosition()));
      localp.e.setOnCheckedChangeListener(this);
      if (!FirewallCallLogListActivity.a(this.a))
        break label420;
      localp.e.setVisibility(0);
    }
    while (true)
    {
      return;
      localp.h = str3;
      break;
      label316: String str4 = j.a(paramContext, str2);
      if (TextUtils.isEmpty(str4))
      {
        str5 = str2 + " (" + localp.h + ")";
        break label154;
      }
      str5 = str4 + " (" + localp.h + ")";
      break label154;
      label408: localp.c.setVisibility(0);
      break label207;
      label420: localp.e.setVisibility(8);
    }
  }

  public final int[] c()
  {
    ArrayList localArrayList = a();
    Cursor localCursor = getCursor();
    int i = localArrayList.size();
    int[] arrayOfInt = new int[i];
    for (int j = 0; j < i; j++)
    {
      localCursor.moveToPosition(((Integer)localArrayList.get(j)).intValue());
      arrayOfInt[j] = localCursor.getInt(localCursor.getColumnIndex("_id"));
    }
    return arrayOfInt;
  }

  public final View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    View localView = super.newView(paramContext, paramCursor, paramViewGroup);
    p localp = new p();
    localp.a = ((TextView)localView.findViewById(2131231355));
    localp.b = ((TextView)localView.findViewById(2131231356));
    localp.c = ((TextView)localView.findViewById(2131231358));
    localp.e = ((CheckBox)localView.findViewById(2131231359));
    localView.setTag(localp);
    return localView;
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    p localp = (p)paramCompoundButton.getTag();
    int i;
    if (paramBoolean)
    {
      this.b.put(localp.l, true);
      q localq = FirewallCallLogListActivity.b(this.a);
      if (localq.b.size() == localq.getCursor().getCount())
      {
        i = 1;
        if (i != 0)
          FirewallCallLogListActivity.c(this.a).setChecked(true);
      }
    }
    while (true)
    {
      return;
      i = 0;
      break;
      this.b.delete(localp.l);
      if (FirewallCallLogListActivity.c(this.a).isChecked())
        FirewallCallLogListActivity.c(this.a).setChecked(false);
    }
  }

  public final void onClick(View paramView)
  {
    p localp = (p)paramView.getTag();
    aq localaq = new aq(this.a, (byte)0);
    localaq.a(2131427519);
    localaq.b(this.a.getString(2131427520, new Object[] { "" }));
    localaq.b(2131427542, null);
    localaq.a(2131427541, new r(this, localp));
    localaq.c().show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.q
 * JD-Core Version:    0.6.2
 */