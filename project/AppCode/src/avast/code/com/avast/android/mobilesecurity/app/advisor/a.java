package com.avast.android.mobilesecurity.app.advisor;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

class a extends android.support.v4.e.a
{
  private final PackageManager b;

  public a(AdvisorAppsFragment paramAdvisorAppsFragment, Context paramContext)
  {
    super(paramContext, null, false);
    this.b = paramAdvisorAppsFragment.getActivity().getPackageManager();
  }

  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    b localb = (b)paramView.getTag();
    localb.a.setText(paramCursor.getString(paramCursor.getColumnIndex("name")));
    try
    {
      localb.b.setImageDrawable(this.b.getApplicationIcon(paramCursor.getString(paramCursor.getColumnIndex("packageName"))));
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        localb.b.setImageResource(2130837730);
    }
  }

  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    View localView = this.a.getActivity().getLayoutInflater().inflate(2130903157, paramViewGroup, false);
    b localb = new b(this);
    localb.b = ((ImageView)localView.findViewById(2131165273));
    localb.a = ((TextView)localView.findViewById(2131165504));
    localView.setTag(localb);
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.advisor.a
 * JD-Core Version:    0.6.2
 */