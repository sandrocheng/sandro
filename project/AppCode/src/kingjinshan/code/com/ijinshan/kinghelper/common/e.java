package com.ijinshan.kinghelper.common;

import android.content.Context;
import android.database.Cursor;
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
import com.jxphone.mosecurity.d.a;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

final class e extends CursorAdapter
  implements CompoundButton.OnCheckedChangeListener
{
  private String b;
  private Cursor c;
  private LayoutInflater d;

  public e(NumberPickListActivity paramNumberPickListActivity, Context paramContext, String paramString)
  {
    super(paramContext, null, false);
    this.d = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.b = paramString;
    NumberPickListActivity.a(paramNumberPickListActivity, new SparseBooleanArray());
    NumberPickListActivity.a(paramNumberPickListActivity).clear();
  }

  public final void a()
  {
    NumberPickListActivity.a(this.a).clear();
    notifyDataSetChanged();
    notifyDataSetInvalidated();
  }

  public final void a(Cursor paramCursor)
  {
    if (this.c != null)
      this.c.close();
    this.c = paramCursor;
  }

  public final ArrayList b()
  {
    SparseBooleanArray localSparseBooleanArray = NumberPickListActivity.a(this.a);
    int i = localSparseBooleanArray.size();
    ArrayList localArrayList = new ArrayList(i);
    for (int j = 0; j < i; j++)
      if (localSparseBooleanArray.valueAt(j))
        localArrayList.add(Integer.valueOf(localSparseBooleanArray.keyAt(j)));
    return localArrayList;
  }

  public final void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    g localg = (g)paramView.getTag();
    String str8;
    if ("vnd.android.cursor.dir/calls".equals(this.b))
    {
      String str7 = paramCursor.getString(paramCursor.getColumnIndex("number"));
      str8 = j.a(paramContext, i.a(str7));
      long l2 = paramCursor.getLong(paramCursor.getColumnIndex("date"));
      if (TextUtils.isEmpty(str8))
      {
        localg.f = str7;
        localg.g = str7;
        localg.i = NumberPickListActivity.b().format(new Date(l2));
        localg.h = a.a(paramContext).a(i.a(str7), this.a.getString(2131427718));
        localg.b.setText(localg.f);
        localg.c.setText(localg.g);
        localg.e.setText(localg.i);
        localg.d.setText(localg.h);
      }
    }
    do
    {
      localg.j = paramCursor.getPosition();
      localg.a.setTag(localg);
      localg.a.setChecked(NumberPickListActivity.a(this.a).get(paramCursor.getPosition()));
      localg.a.setOnCheckedChangeListener(this);
      return;
      localg.f = str8;
      break;
      if ("vnd.android.cursor.dir/sms".equals(this.b))
      {
        String str4 = paramCursor.getString(paramCursor.getColumnIndex("address"));
        String str5 = paramCursor.getString(paramCursor.getColumnIndex("body"));
        long l1 = paramCursor.getLong(paramCursor.getColumnIndex("date"));
        String str6 = j.a(paramContext, i.a(str4));
        if (TextUtils.isEmpty(str6));
        for (localg.f = str4; ; localg.f = str6)
        {
          localg.g = str5;
          localg.i = NumberPickListActivity.b().format(new Date(l1));
          localg.h = a.a(paramContext).a(i.a(str4), this.a.getString(2131427718));
          localg.b.setText(localg.f);
          localg.c.setText(localg.g);
          localg.e.setText(localg.i);
          localg.d.setText(localg.h);
          break;
        }
      }
    }
    while (!"vnd.android.cursor.dir/contact".equals(this.b));
    String str1;
    label479: String str2;
    String str3;
    if (Integer.parseInt(Build.VERSION.SDK) > 4)
    {
      str1 = "data1";
      Integer.parseInt(Build.VERSION.SDK);
      str2 = paramCursor.getString(paramCursor.getColumnIndex(str1));
      str3 = paramCursor.getString(paramCursor.getColumnIndex("display_name"));
      if (!TextUtils.isEmpty(str3))
        break label628;
    }
    label628: for (localg.f = str2; ; localg.f = str3)
    {
      localg.g = str2;
      localg.h = a.a(paramContext).a(i.a(str2), this.a.getString(2131427718));
      localg.b.setText(localg.f);
      localg.c.setText(localg.g);
      localg.e.setText(localg.i);
      localg.d.setText(localg.h);
      break;
      str1 = "number";
      break label479;
    }
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Cursor localCursor = this.c;
    localCursor.moveToPosition(paramInt);
    if ((paramView == null) || (paramView.getTag() == null));
    for (View localView = newView(NumberPickListActivity.b(this.a), localCursor, paramViewGroup); ; localView = paramView)
    {
      bindView(localView, NumberPickListActivity.b(this.a), localCursor);
      return localView;
    }
  }

  public final View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    View localView = this.d.inflate(2130903212, null);
    g localg = new g(this.a);
    localg.a = ((DontPressWithParentCheckBox)localView.findViewById(2131231370));
    localg.b = ((TextView)localView.findViewById(2131231371));
    localg.c = ((TextView)localView.findViewById(2131231372));
    localg.d = ((TextView)localView.findViewById(2131231374));
    localg.e = ((TextView)localView.findViewById(2131231373));
    localView.setTag(localg);
    return localView;
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    g localg = (g)paramCompoundButton.getTag();
    if (paramBoolean)
      NumberPickListActivity.a(this.a).put(localg.j, true);
    while (true)
    {
      return;
      NumberPickListActivity.a(this.a).delete(localg.j);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.e
 * JD-Core Version:    0.6.2
 */