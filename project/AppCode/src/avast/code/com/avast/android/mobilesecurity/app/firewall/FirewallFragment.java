package com.avast.android.mobilesecurity.app.firewall;

import android.app.Application;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.avast.android.generic.ad;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.NextRow;
import com.avast.android.generic.util.ga.TrackedListFragment;
import com.avast.android.generic.util.x;
import com.avast.android.generic.util.y;
import com.avast.android.mobilesecurity.app.firewall.a.e;
import com.avast.android.mobilesecurity.app.manager.AppDetailActivity;
import com.avast.android.mobilesecurity.app.widget.WidgetControlProvider;
import com.avast.android.mobilesecurity.l;
import com.avast.android.mobilesecurity.ui.widget.ConnectionTypeButtons;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class FirewallFragment extends TrackedListFragment
  implements LoaderManager.LoaderCallbacks, View.OnClickListener, y
{
  public static com.avast.android.mobilesecurity.app.firewall.core.a a = new p();
  private x b;
  private boolean c;
  private com.avast.android.mobilesecurity.t d;
  private CheckBoxRow e;
  private List f = new ArrayList();
  private boolean g;
  private boolean h;
  private MenuItem i;
  private NextRow j;
  private ConnectionTypeButtons k;
  private com.avast.android.mobilesecurity.app.firewall.a.b l = new m(this);
  private com.avast.android.mobilesecurity.app.firewall.core.a m = new n(this);

  private ConnectionTypeButtons a(String paramString1, String paramString2, boolean paramBoolean)
  {
    ConnectionTypeButtons localConnectionTypeButtons = new ConnectionTypeButtons(getActivity(), "");
    localConnectionTypeButtons.c(paramString1);
    localConnectionTypeButtons.a(2130837772);
    localConnectionTypeButtons.setFocusable(false);
    localConnectionTypeButtons.setClickable(false);
    localConnectionTypeButtons.a(new com.avast.android.mobilesecurity.app.firewall.a.d(getActivity().getContentResolver(), l.a(paramString2), this.b, this.l));
    this.f.add(localConnectionTypeButtons);
    if (paramBoolean)
      getListView().addHeaderView(localConnectionTypeButtons);
    while (true)
    {
      return localConnectionTypeButtons;
      getListView().addFooterView(localConnectionTypeButtons);
    }
  }

  private void a()
  {
    FirewallSettingsActivity.call(getActivity());
  }

  public static void a(Context paramContext, com.avast.android.mobilesecurity.app.firewall.core.a parama)
  {
    boolean bool = ((com.avast.android.mobilesecurity.t)ad.a(paramContext, com.avast.android.mobilesecurity.t.class)).X();
    new Thread(new v(paramContext, bool, parama, new t(), new u(paramContext, bool))).start();
  }

  private void a(String paramString)
  {
    AppDetailActivity.call(getActivity(), paramString, 0, 2131165388);
  }

  private void a(String paramString1, String paramString2)
  {
    a(paramString1, paramString2, false);
  }

  public static boolean a(Context paramContext, boolean paramBoolean1, com.avast.android.mobilesecurity.app.firewall.core.a parama, boolean paramBoolean2, Handler paramHandler1, Handler paramHandler2)
  {
    boolean bool1 = true;
    com.avast.android.generic.util.m.c("Firewall: Applying rules...");
    boolean bool2;
    if (com.avast.android.mobilesecurity.app.firewall.core.b.d(paramContext, parama))
      if ((paramBoolean1) && (com.avast.android.mobilesecurity.app.firewall.core.b.a(paramContext, parama)))
        bool2 = bool1;
    while (true)
    {
      if (bool2)
      {
        WidgetControlProvider.a(paramContext);
        if ((paramBoolean1) && (paramHandler1 != null))
          paramHandler1.sendEmptyMessage(0);
      }
      while (true)
      {
        return bool1;
        if ((paramBoolean1) || (!com.avast.android.mobilesecurity.app.firewall.core.b.b(paramContext, parama)))
          break label108;
        bool2 = bool1;
        break;
        com.avast.android.generic.util.m.c("Firewall: Failed - ignoring changes...");
        if ((paramHandler2 != null) && (!paramBoolean2))
          paramHandler2.sendEmptyMessage(0);
        bool1 = false;
      }
      label108: bool2 = false;
    }
  }

  private void c()
  {
    if (!isAdded());
    String str1;
    label25: 
    do
    {
      return;
      if (!this.d.aJ())
        break;
      str1 = getString(2131493695);
      String str2 = getString(2131493639, new Object[] { str1 });
      if (this.e != null)
        this.e.d(str2);
    }
    while (this.k == null);
    ConnectionTypeButtons localConnectionTypeButtons = this.k;
    if (this.d.aJ());
    for (String str3 = getString(2131493640); ; str3 = getString(2131493641))
    {
      localConnectionTypeButtons.c(str3);
      break;
      str1 = getString(2131493694);
      break label25;
    }
  }

  public void a(int paramInt1, Object paramObject, Cursor paramCursor, Uri paramUri, int paramInt2)
  {
  }

  public void a(android.support.v4.a.m paramm, Cursor paramCursor)
  {
    com.avast.android.generic.util.m.c("FirewallFragment.onLoadFinished() - " + paramCursor.getCount());
    if ((isAdded()) && (!isRemoving()))
    {
      Cursor localCursor = ((android.support.v4.e.a)getListAdapter()).swapCursor(paramCursor);
      if (localCursor != null)
        localCursor.close();
    }
  }

  public int a_()
  {
    return 2131493637;
  }

  public String f()
  {
    return "/ms/firewall";
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    setListAdapter(new w(this, getActivity().getApplicationContext(), null));
    this.c = false;
    if (this.c)
      getListView().setChoiceMode(1);
    com.avast.android.generic.util.u.a(getActivity(), true);
    getActivity().getSupportLoaderManager().initLoader(56, null, this);
    com.avast.android.generic.util.m.c("FirewallFragment.onActivityCreated()");
    this.g = true;
  }

  public void onClick(View paramView)
  {
    a((String)paramView.getTag());
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.b = new x(getActivity().getContentResolver(), this);
    this.d = ((com.avast.android.mobilesecurity.t)ad.a(getActivity(), com.avast.android.mobilesecurity.t.class));
    setHasOptionsMenu(true);
  }

  public android.support.v4.a.m onCreateLoader(int paramInt, Bundle paramBundle)
  {
    com.avast.android.generic.util.m.c("FirewallFragment.onCreateLoader() - " + paramBundle);
    return new com.avast.android.mobilesecurity.app.firewall.core.d(getActivity());
  }

  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131755012, paramMenu);
    this.i = paramMenu.findItem(2131165757);
    this.i.setEnabled(this.d.X());
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return (LinearLayout)paramLayoutInflater.inflate(2130903123, paramViewGroup, false);
  }

  public void onLoaderReset(android.support.v4.a.m paramm)
  {
    com.avast.android.generic.util.m.c("FirewallFragment.onLoaderReset()");
    if ((isAdded()) && (!isRemoving()))
    {
      android.support.v4.e.a locala = (android.support.v4.e.a)getListAdapter();
      if (locala != null)
      {
        Cursor localCursor = locala.swapCursor(null);
        if (localCursor != null)
          localCursor.close();
      }
    }
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 2131165757:
    }
    for (boolean bool = super.onOptionsItemSelected(paramMenuItem); ; bool = true)
    {
      return bool;
      a();
    }
  }

  public void onPause()
  {
    Application localApplication = getActivity().getApplication();
    try
    {
      if (this.h)
        a(localApplication, a);
      super.onPause();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avast.android.generic.util.m.b("Firewall: Error applying rules", localException);
    }
  }

  public void onResume()
  {
    super.onResume();
    if (!this.g)
    {
      com.avast.android.generic.util.m.d("FirewallFragment.onResume()");
      ((android.support.v4.e.a)getListAdapter()).notifyDataSetChanged();
      c();
    }
    boolean bool = this.d.X();
    Iterator localIterator = this.f.iterator();
    while (localIterator.hasNext())
      ((ConnectionTypeButtons)localIterator.next()).setEnabled(bool);
    this.g = false;
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    getListView().addHeaderView(getActivity().getLayoutInflater().inflate(2130903124, null));
    getListView().setItemsCanFocus(true);
    this.k = a(getString(2131493640), "ALL", true);
    a(getString(2131493642), "ROOTED");
    a(getString(2131493643), "KERNEL");
    a(getString(2131493644), "MEDIASERVER");
    a(getString(2131493645), "VPNCONN");
    a(getString(2131493646), "LINUXSHELL");
    a(getString(2131493647), "GPSCOMMS");
    this.e = ((CheckBoxRow)paramView.findViewById(2131165488));
    c();
    this.j = ((NextRow)paramView.findViewById(2131165489));
    this.j.setOnClickListener(new q(this));
    this.e.a(new e(getActivity(), this.e, this.l, this.m, new r(this)));
    this.e.a(new s(this));
    this.j.setEnabled(this.d.X());
    this.h = false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.FirewallFragment
 * JD-Core Version:    0.6.2
 */