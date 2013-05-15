package com.avast.android.mobilesecurity.app.firewall;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.support.v4.e.a;
import android.view.View;
import android.view.ViewGroup;
import com.avast.android.mobilesecurity.app.firewall.a.c;
import com.avast.android.mobilesecurity.app.firewall.core.d;
import com.avast.android.mobilesecurity.l;
import com.avast.android.mobilesecurity.t;
import com.avast.android.mobilesecurity.ui.widget.ConnectionTypeButtons;

class w extends a
{
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private boolean g = false;

  public w(FirewallFragment paramFirewallFragment, Context paramContext, Cursor paramCursor)
  {
    super(paramContext, paramCursor, false);
  }

  private Uri a(Cursor paramCursor)
  {
    Object localObject = paramCursor.getString(this.d);
    String str = paramCursor.getString(this.c);
    if (localObject != null);
    while (true)
    {
      return l.a((String)localObject);
      localObject = str;
    }
  }

  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    ConnectionTypeButtons localConnectionTypeButtons = (ConnectionTypeButtons)paramView;
    localConnectionTypeButtons.c(paramCursor.getString(this.b));
    String str1 = paramCursor.getString(this.e);
    if (str1 != null)
    {
      int i = paramCursor.getInt(this.f);
      String str2 = str1.substring(0, str1.length());
      localConnectionTypeButtons.c(i + " " + paramContext.getString(2131493648));
      localConnectionTypeButtons.d(str2);
      localConnectionTypeButtons.a(2130837772);
      localConnectionTypeButtons.setFocusable(false);
      localConnectionTypeButtons.setClickable(false);
    }
    while (true)
    {
      c localc = (c)localConnectionTypeButtons.e();
      localc.a(paramCursor);
      localc.a(a(paramCursor));
      localConnectionTypeButtons.b();
      localConnectionTypeButtons.setEnabled(this.g);
      localConnectionTypeButtons.setTag(paramCursor.getString(this.c));
      return;
      localConnectionTypeButtons.d("");
      localConnectionTypeButtons.setFocusable(true);
      localConnectionTypeButtons.setClickable(true);
      try
      {
        localConnectionTypeButtons.a(this.a.getActivity().getPackageManager().getApplicationIcon(this.a.getActivity().getPackageManager().getApplicationInfo(paramCursor.getString(this.c), 0)));
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
      }
    }
  }

  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    ConnectionTypeButtons localConnectionTypeButtons = new ConnectionTypeButtons(paramContext, "");
    localConnectionTypeButtons.a(new c(FirewallFragment.e(this.a), paramCursor, a(paramCursor), FirewallFragment.f(this.a)));
    localConnectionTypeButtons.setOnClickListener(this.a);
    return localConnectionTypeButtons;
  }

  public void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    this.g = FirewallFragment.a(this.a).X();
  }

  public Cursor swapCursor(Cursor paramCursor)
  {
    if (paramCursor != null)
    {
      this.b = paramCursor.getColumnIndex(d.k);
      this.d = paramCursor.getColumnIndex(d.j);
      this.c = paramCursor.getColumnIndex(d.i);
      this.e = paramCursor.getColumnIndex(d.w);
      this.f = paramCursor.getColumnIndex(d.x);
    }
    this.g = FirewallFragment.a(this.a).X();
    return super.swapCursor(paramCursor);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.w
 * JD-Core Version:    0.6.2
 */