package com.avast.android.mobilesecurity.app.advisor;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.support.v4.app.FragmentActivity;
import android.support.v4.e.a;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

class c extends a
{
  public c(AdvisorGroupsFragment paramAdvisorGroupsFragment, Context paramContext)
  {
    super(paramContext, null, false);
  }

  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    ((TextView)paramView.findViewById(2131165580)).setText(paramCursor.getString(paramCursor.getColumnIndex("size")));
    String str = paramCursor.getString(paramCursor.getColumnIndex("name"));
    int i = this.a.getResources().getIdentifier("l_" + str, "string", this.a.getActivity().getPackageName());
    int j = this.a.getResources().getIdentifier("l_descr_" + str, "string", this.a.getActivity().getPackageName());
    int k = this.a.getResources().getIdentifier("ic_privacy_" + str, "drawable", this.a.getActivity().getPackageName());
    ((TextView)paramView.findViewById(2131165504)).setText(this.a.getText(i));
    ((TextView)paramView.findViewById(2131165382)).setText(this.a.getText(j));
    ((ImageView)paramView.findViewById(2131165273)).setImageResource(k);
  }

  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return this.a.getActivity().getLayoutInflater().inflate(2130903154, paramViewGroup, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.advisor.c
 * JD-Core Version:    0.6.2
 */