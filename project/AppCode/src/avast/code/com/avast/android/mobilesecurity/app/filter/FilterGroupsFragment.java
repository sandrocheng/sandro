package com.avast.android.mobilesecurity.app.filter;

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
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.util.ga.TrackedListFragment;
import com.avast.android.mobilesecurity.j;

public class FilterGroupsFragment extends TrackedListFragment
  implements LoaderManager.LoaderCallbacks
{
  private o a;
  private Uri b;

  private void a(Cursor paramCursor)
  {
    if (!isAdded());
    while (true)
    {
      return;
      if (paramCursor.getCount() == 0)
      {
        getView().findViewById(2131165480).setVisibility(0);
        getView().findViewById(2131165389).setVisibility(8);
      }
      else
      {
        getView().findViewById(2131165480).setVisibility(8);
        getView().findViewById(2131165389).setVisibility(0);
      }
    }
  }

  public void a(android.support.v4.a.m paramm, Cursor paramCursor)
  {
    this.a.changeCursor(paramCursor);
    if (paramCursor != null)
      a(paramCursor);
  }

  public String f()
  {
    return "/ms/filter";
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getListView().setChoiceMode(1);
    registerForContextMenu(getListView());
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
      getActivity().getContentResolver().delete(j.a(localAdapterContextMenuInfo.id), null, null);
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.b = BaseActivity.a(getArguments()).getData();
    if (this.b == null)
      j();
    while (true)
    {
      return;
      this.a = new o(this, getActivity());
      setListAdapter(this.a);
      getLoaderManager().initLoader(1, null, this);
    }
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    getActivity().getMenuInflater().inflate(2131755008, paramContextMenu);
  }

  public android.support.v4.a.m onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new f(getActivity(), this.b, null, null, null, null);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    ViewGroup localViewGroup = (ViewGroup)paramLayoutInflater.inflate(2130903121, paramViewGroup, false);
    localViewGroup.findViewById(2131165454).setOnClickListener(new m(this));
    localViewGroup.findViewById(2131165479).setOnClickListener(new n(this));
    localViewGroup.findViewById(2131165480).setVisibility(8);
    return localViewGroup;
  }

  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(j.a(paramLong));
    ((BaseActivity)getActivity()).a(localIntent);
  }

  public void onLoaderReset(android.support.v4.a.m paramm)
  {
    this.a.changeCursor(null);
  }

  public void onResume()
  {
    super.onResume();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.FilterGroupsFragment
 * JD-Core Version:    0.6.2
 */