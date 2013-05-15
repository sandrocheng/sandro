package com.avast.android.mobilesecurity.app.advisor;

import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.a.f;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentBreadCrumbs;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.util.ga.TrackedListFragment;
import com.avast.android.mobilesecurity.app.manager.AppDetailActivity;

public class AdvisorAppsFragment extends TrackedListFragment
  implements LoaderManager.LoaderCallbacks
{
  private a a;
  private Uri b;
  private View c;
  private int d;
  private int e;

  public FragmentBreadCrumbs a(View paramView)
  {
    return super.a(this.c);
  }

  public void a(Bundle paramBundle)
  {
    this.b = BaseActivity.a(paramBundle).getData();
    if (this.b != null)
    {
      com.avast.android.generic.util.m.c("AdvisorAppsFragment.reloadFromArguments() - mAppsUri: " + this.b);
      getActivity().getSupportLoaderManager().restartLoader(2131165233, null, this);
    }
  }

  public void a(android.support.v4.a.m paramm, Cursor paramCursor)
  {
    com.avast.android.generic.util.m.c("AdvisorAppsFragment.onLoadFinished() - " + paramCursor.getCount());
    if ((isAdded()) && (!isRemoving()))
      this.a.changeCursor(paramCursor);
  }

  public String f()
  {
    Bundle localBundle = getArguments();
    String str2;
    if (localBundle == null)
      str2 = "/ms/appAdvisor/privacy/group";
    while (true)
    {
      return str2;
      String str1 = localBundle.getString("title");
      if ((str1 == null) || ("".equals(str1)))
        str2 = "/ms/appAdvisor/privacy/group";
      else
        str2 = "/ms/appAdvisor/privacy/group/" + str1;
    }
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.a = new a(this, getActivity());
    setListAdapter(this.a);
    a(getArguments());
  }

  public android.support.v4.a.m onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new f(getActivity(), this.b, new String[] { "_id", "name", "packageName" }, null, null, null);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    ViewGroup localViewGroup = (ViewGroup)paramLayoutInflater.inflate(2130903093, paramViewGroup, false);
    this.c = localViewGroup;
    Intent localIntent = BaseActivity.a(getArguments());
    this.d = localIntent.getIntExtra("descriptionResourceId", 2131492964);
    this.e = localIntent.getIntExtra("iconResourceId", 2130837730);
    ((TextView)localViewGroup.findViewById(2131165382)).setText(this.d);
    ((ImageView)localViewGroup.findViewById(2131165273)).setImageResource(this.e);
    return localViewGroup;
  }

  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    Cursor localCursor = (Cursor)paramListView.getItemAtPosition(paramInt);
    if (localCursor != null)
      AppDetailActivity.call(getActivity(), localCursor.getString(localCursor.getColumnIndex("packageName")), 0, 2131165405);
  }

  public void onLoaderReset(android.support.v4.a.m paramm)
  {
    if ((isAdded()) && (!isRemoving()))
      this.a.changeCursor(null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.advisor.AdvisorAppsFragment
 * JD-Core Version:    0.6.2
 */