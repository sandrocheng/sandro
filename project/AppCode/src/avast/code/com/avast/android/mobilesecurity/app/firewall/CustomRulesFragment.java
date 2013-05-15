package com.avast.android.mobilesecurity.app.firewall;

import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.a.f;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListView;
import com.avast.android.generic.ad;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.util.ga.TrackedListFragment;
import com.avast.android.mobilesecurity.h;
import com.avast.android.mobilesecurity.t;

public class CustomRulesFragment extends TrackedListFragment
  implements LoaderManager.LoaderCallbacks
{
  private Uri a;
  private t b;
  private int c = 0;
  private com.avast.android.mobilesecurity.app.firewall.core.a d = new j(this);

  private void a()
  {
    if (getView() == null);
    while (true)
    {
      return;
      View localView1 = getView().findViewById(2131165453);
      View localView2 = getView().findViewById(2131165389);
      if ((localView1 != null) && (localView2 != null))
        if (this.c == 0)
        {
          getView().findViewById(2131165453).setVisibility(0);
          getView().findViewById(2131165389).setVisibility(8);
        }
        else
        {
          getView().findViewById(2131165453).setVisibility(8);
          getView().findViewById(2131165389).setVisibility(0);
        }
    }
  }

  private void a(Bundle paramBundle)
  {
    this.a = BaseActivity.a(paramBundle).getData();
    if (this.a == null);
    while (true)
    {
      return;
      com.avast.android.generic.util.m.c("CustomRulesFragment.reloadFromArguments(), uri:" + this.a);
      getLoaderManager().initLoader(10008, null, this);
    }
  }

  public void a(android.support.v4.a.m paramm, Cursor paramCursor)
  {
    ((android.support.v4.e.a)getListAdapter()).changeCursor(paramCursor);
    if (paramCursor != null);
    for (int i = paramCursor.getCount(); ; i = 0)
    {
      this.c = i;
      a();
      return;
    }
  }

  public String f()
  {
    return "/ms/firewall/customRules";
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getListView().setChoiceMode(1);
    registerForContextMenu(getListView());
    setListAdapter(new l(this, getActivity()));
    a(getArguments());
  }

  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramMenuItem.getMenuInfo();
    switch (paramMenuItem.getItemId())
    {
    default:
    case 2131165754:
    }
    while (true)
    {
      return super.onContextItemSelected(paramMenuItem);
      getActivity().getContentResolver().delete(h.a(localAdapterContextMenuInfo.id), null, null);
      if (this.b.X())
        FirewallFragment.a(getActivity(), this.d);
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.b = ((t)ad.a(getActivity(), t.class));
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    getActivity().getMenuInflater().inflate(2131755008, paramContextMenu);
  }

  public android.support.v4.a.m onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new f(getActivity(), this.a, null, null, null, null);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    ViewGroup localViewGroup = (ViewGroup)paramLayoutInflater.inflate(2130903110, paramViewGroup, false);
    localViewGroup.findViewById(2131165454).setOnClickListener(new k(this));
    localViewGroup.findViewById(2131165453).setVisibility(8);
    return localViewGroup;
  }

  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(h.a(paramLong));
    ((BaseActivity)getActivity()).a(localIntent);
  }

  public void onLoaderReset(android.support.v4.a.m paramm)
  {
    android.support.v4.e.a locala = (android.support.v4.e.a)getListAdapter();
    if (locala != null)
      locala.changeCursor(null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.CustomRulesFragment
 * JD-Core Version:    0.6.2
 */