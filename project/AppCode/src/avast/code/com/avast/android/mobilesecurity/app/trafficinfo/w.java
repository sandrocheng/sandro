package com.avast.android.mobilesecurity.app.trafficinfo;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.e.a;
import android.view.View;
import android.view.ViewGroup;
import com.avast.android.mobilesecurity.t;
import com.avast.android.mobilesecurity.ui.widget.TrafficinfoTypeRow;

class w extends a
{
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;
  private int i;
  private int j;
  private int k;
  private int l;
  private int m;
  private boolean n = false;

  public w(TrafficinfoFragment paramTrafficinfoFragment, Context paramContext, Cursor paramCursor)
  {
    super(paramContext, paramCursor, false);
  }

  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    TrafficinfoTypeRow localTrafficinfoTypeRow = (TrafficinfoTypeRow)paramView;
    if (TrafficinfoFragment.c(this.a))
      localTrafficinfoTypeRow.c();
    localTrafficinfoTypeRow.c(paramCursor.getString(this.b));
    switch (TrafficinfoFragment.d(this.a))
    {
    default:
      String str1 = paramCursor.getString(this.d);
      if (str1 != null)
      {
        int i1 = paramCursor.getInt(this.e);
        String str2 = str1.substring(0, str1.length());
        localTrafficinfoTypeRow.c(i1 + " " + paramContext.getString(2131493648));
        localTrafficinfoTypeRow.a(2130837783);
        localTrafficinfoTypeRow.d(str2);
        localTrafficinfoTypeRow.setFocusable(false);
        localTrafficinfoTypeRow.setClickable(false);
      }
      break;
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      localTrafficinfoTypeRow.setEnabled(this.n);
      localTrafficinfoTypeRow.setTag(paramCursor.getString(this.c));
      return;
      localTrafficinfoTypeRow.e(false);
      localTrafficinfoTypeRow.d(false);
      localTrafficinfoTypeRow.f(false);
      localTrafficinfoTypeRow.a(paramCursor.getLong(this.f), paramCursor.getLong(this.g));
      break;
      localTrafficinfoTypeRow.c(false);
      localTrafficinfoTypeRow.e(false);
      localTrafficinfoTypeRow.d(false);
      localTrafficinfoTypeRow.c(paramCursor.getLong(this.h), paramCursor.getLong(this.i));
      break;
      localTrafficinfoTypeRow.c(false);
      localTrafficinfoTypeRow.f(false);
      localTrafficinfoTypeRow.d(false);
      localTrafficinfoTypeRow.b(paramCursor.getLong(this.j), paramCursor.getLong(this.k));
      break;
      localTrafficinfoTypeRow.c(false);
      localTrafficinfoTypeRow.e(false);
      localTrafficinfoTypeRow.f(false);
      localTrafficinfoTypeRow.d(paramCursor.getLong(this.l), paramCursor.getLong(this.m));
      break;
      localTrafficinfoTypeRow.d("");
      localTrafficinfoTypeRow.setFocusable(true);
      localTrafficinfoTypeRow.setClickable(true);
      try
      {
        FragmentActivity localFragmentActivity = this.a.getActivity();
        Drawable localDrawable = null;
        if (localFragmentActivity != null)
          localDrawable = this.a.getActivity().getPackageManager().getApplicationIcon(this.a.getActivity().getPackageManager().getApplicationInfo(paramCursor.getString(this.c), 0));
        localTrafficinfoTypeRow.a(localDrawable);
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
      }
    }
  }

  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    TrafficinfoTypeRow localTrafficinfoTypeRow = new TrafficinfoTypeRow(paramContext, "");
    localTrafficinfoTypeRow.setOnClickListener(this.a);
    localTrafficinfoTypeRow.a(true);
    return localTrafficinfoTypeRow;
  }

  public void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    this.n = TrafficinfoFragment.b(this.a).aK();
  }

  public Cursor swapCursor(Cursor paramCursor)
  {
    if (paramCursor != null)
    {
      this.b = paramCursor.getColumnIndex(g.k);
      this.c = paramCursor.getColumnIndex(g.i);
      this.d = paramCursor.getColumnIndex(g.w);
      this.e = paramCursor.getColumnIndex(g.x);
      this.f = paramCursor.getColumnIndex(g.g);
      this.g = paramCursor.getColumnIndex(g.f);
      this.h = paramCursor.getColumnIndex(g.y);
      this.i = paramCursor.getColumnIndex(g.h);
      this.j = paramCursor.getColumnIndex(g.A);
      this.k = paramCursor.getColumnIndex(g.z);
      this.l = paramCursor.getColumnIndex(g.C);
      this.m = paramCursor.getColumnIndex(g.B);
    }
    this.n = TrafficinfoFragment.b(this.a).aK();
    return super.swapCursor(paramCursor);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.trafficinfo.w
 * JD-Core Version:    0.6.2
 */