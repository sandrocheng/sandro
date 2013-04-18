package com.ijinshan.kinghelper.common;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.CursorAdapter;
import android.widget.TextView;
import com.ijinshan.kinghelper.a.i;
import com.ijinshan.kinghelper.a.j;
import com.jxphone.mosecurity.d.l;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

final class r extends CursorAdapter
  implements CompoundButton.OnCheckedChangeListener
{
  private String b;
  private LayoutInflater c;
  private com.ijinshan.kinghelper.firewall.core.r d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;

  private r(PickListActivity paramPickListActivity, Context paramContext, Cursor paramCursor)
  {
    super(paramContext, paramCursor);
    this.d = com.ijinshan.kinghelper.firewall.core.r.a(paramContext);
  }

  public r(PickListActivity paramPickListActivity, Context paramContext, String paramString, Cursor paramCursor)
  {
    this(paramPickListActivity, paramContext, paramCursor);
    this.c = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.b = paramString;
    PickListActivity.a(paramPickListActivity, new SparseBooleanArray());
  }

  public final void a()
  {
    PickListActivity.h(this.a).clear();
    notifyDataSetChanged();
    notifyDataSetInvalidated();
  }

  public final ArrayList b()
  {
    SparseBooleanArray localSparseBooleanArray = PickListActivity.h(this.a);
    int j = localSparseBooleanArray.size();
    ArrayList localArrayList = new ArrayList(j);
    for (int k = 0; k < j; k++)
      if (localSparseBooleanArray.valueAt(k))
        localArrayList.add(Integer.valueOf(localSparseBooleanArray.keyAt(k)));
    return localArrayList;
  }

  public final void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    u localu = (u)paramView.getTag();
    if ("vnd.android.cursor.dir/calls".equals(this.b))
    {
      this.e = paramCursor.getString(paramCursor.getColumnIndex("number"));
      String str8 = j.a(paramContext, i.a(this.e));
      long l4 = paramCursor.getLong(paramCursor.getColumnIndex("date"));
      if (TextUtils.isEmpty(str8));
      for (this.f = this.e; ; this.f = str8)
      {
        this.g = this.e;
        this.i = PickListActivity.c().format(new Date(l4));
        this.e = i.a(this.e);
        if ("vnd.android.cursor.dir/contact".equals(this.b))
          break label731;
        String str3 = String.valueOf(paramCursor.getPosition());
        localu.d.setTag(str3);
        String str4 = this.d.a(str3, this.e, new s(this));
        if (str4 == null)
          break;
        localu.d.setText(str4);
        localu.h = str4;
        label200: localu.b.setText(this.f);
        localu.e.setText(this.i);
        localu.c.setText(this.g);
        localu.j = paramCursor.getPosition();
        localu.a.setTag(localu);
        localu.a.setChecked(PickListActivity.h(this.a).get(paramCursor.getPosition()));
        localu.a.setOnCheckedChangeListener(this);
        return;
      }
    }
    long l1;
    long l3;
    if ("vnd.android.cursor.dir/sms".equals(this.b))
    {
      this.g = paramCursor.getString(paramCursor.getColumnIndex("body"));
      l1 = paramCursor.getLong(paramCursor.getColumnIndex("date"));
      this.e = paramCursor.getString(paramCursor.getColumnIndex("address"));
      if ((!PickListActivity.f(this.a)) || (!TextUtils.isEmpty(this.e)) || (l.c))
        break label751;
      String str6 = paramCursor.getString(paramCursor.getColumnIndex("_id"));
      if (TextUtils.isEmpty(str6))
        break label751;
      String str7 = new String("msg_id=? and type=137");
      Cursor localCursor = this.a.getContentResolver().query(Uri.parse("content://mms/" + str6 + "/addr"), null, str7, new String[] { str6 }, null);
      if (localCursor == null)
        break label751;
      if (!localCursor.moveToFirst())
        break label744;
      this.e = localCursor.getString(localCursor.getColumnIndex("address"));
      l3 = 1000L * l1;
      this.g = this.a.getString(2131427853);
      label537: localCursor.close();
    }
    label708: label731: label744: label751: for (long l2 = l3; ; l2 = l1)
    {
      String str5 = j.a(paramContext, i.a(this.e));
      if (TextUtils.isEmpty(str5));
      for (this.f = this.e; ; this.f = str5)
      {
        this.i = PickListActivity.a(l2);
        break;
      }
      if (!"vnd.android.cursor.dir/contact".equals(this.b))
        break;
      String str1;
      label625: String str2;
      if (Integer.parseInt(Build.VERSION.SDK) > 4)
      {
        str1 = "data1";
        Integer.parseInt(Build.VERSION.SDK);
        this.e = paramCursor.getString(paramCursor.getColumnIndex(str1));
        str2 = paramCursor.getString(paramCursor.getColumnIndex("display_name"));
        if (!TextUtils.isEmpty(str2))
          break label708;
      }
      for (this.f = this.e; ; this.f = str2)
      {
        this.g = this.e;
        this.i = "";
        break;
        str1 = "number";
        break label625;
      }
      localu.d.setText("");
      break label200;
      localu.d.setVisibility(8);
      break label200;
      l3 = l1;
      break label537;
    }
  }

  public final View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    View localView = this.c.inflate(2130903212, null);
    u localu = new u(this.a);
    localu.a = ((DontPressWithParentCheckBox)localView.findViewById(2131231370));
    localu.b = ((TextView)localView.findViewById(2131231371));
    localu.c = ((TextView)localView.findViewById(2131231372));
    localu.d = ((TextView)localView.findViewById(2131231374));
    localu.e = ((TextView)localView.findViewById(2131231373));
    localView.setTag(localu);
    if ("PickListActivity1_ec_action".equals(PickListActivity.e(this.a)))
      localu.a.setVisibility(8);
    return localView;
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    u localu = (u)paramCompoundButton.getTag();
    if (paramBoolean)
      PickListActivity.h(this.a).put(localu.j, true);
    while (true)
    {
      return;
      PickListActivity.h(this.a).delete(localu.j);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.r
 * JD-Core Version:    0.6.2
 */