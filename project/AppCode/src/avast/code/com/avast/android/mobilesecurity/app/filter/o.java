package com.avast.android.mobilesecurity.app.filter;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.app.FragmentActivity;
import android.support.v4.e.a;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.avast.android.generic.util.aj;
import com.avast.android.mobilesecurity.ui.widget.WeekDaysDots;

class o extends a
{
  public o(FilterGroupsFragment paramFilterGroupsFragment, Context paramContext)
  {
    super(paramContext, null, false);
  }

  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    String str = paramCursor.getString(paramCursor.getColumnIndex("name"));
    int i = paramCursor.getInt(paramCursor.getColumnIndex("days"));
    int j = paramCursor.getInt(paramCursor.getColumnIndex("minuteFrom"));
    int k = paramCursor.getInt(paramCursor.getColumnIndex("minuteTo"));
    ((TextView)paramView.findViewById(2131165504)).setText(str);
    ((TextView)paramView.findViewById(2131165602)).setText(aj.a(this.a.getActivity(), j) + " - " + aj.a(this.a.getActivity(), k));
    ((WeekDaysDots)paramView.findViewById(2131165604)).a(i);
  }

  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return this.a.getActivity().getLayoutInflater().inflate(2130903169, paramViewGroup, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.o
 * JD-Core Version:    0.6.2
 */