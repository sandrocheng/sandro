package com.avast.android.mobilesecurity.app.firewall;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.app.FragmentActivity;
import android.support.v4.e.a;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

class l extends a
{
  public l(CustomRulesFragment paramCustomRulesFragment, Context paramContext)
  {
    super(paramContext, null, false);
  }

  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    String str1 = paramCursor.getString(paramCursor.getColumnIndex("name"));
    int i = paramCursor.getInt(paramCursor.getColumnIndex("enabled"));
    CustomRulesFragment localCustomRulesFragment = this.a;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = str1;
    if (i > 0);
    for (String str2 = this.a.getString(2131493719); ; str2 = this.a.getString(2131493720))
    {
      arrayOfObject[1] = str2;
      String str3 = localCustomRulesFragment.getString(2131493718, arrayOfObject);
      ((TextView)paramView.findViewById(2131165504)).setText(str3);
      return;
    }
  }

  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return this.a.getActivity().getLayoutInflater().inflate(2130903162, paramViewGroup, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.l
 * JD-Core Version:    0.6.2
 */