package com.avast.android.mobilesecurity.app.advisor;

import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.a.m;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentBreadCrumbs;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.util.ga.TrackedListFragment;
import com.avast.android.mobilesecurity.e;

public class AdvisorGroupsFragment extends TrackedListFragment
  implements LoaderManager.LoaderCallbacks
{
  private c a;
  private View b;

  public FragmentBreadCrumbs a(View paramView)
  {
    return super.a(this.b);
  }

  public void a(m paramm, Cursor paramCursor)
  {
    this.a.changeCursor(paramCursor);
  }

  public int a_()
  {
    return 2131493479;
  }

  public String f()
  {
    return "/ms/appAdvisor/privacy";
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    LayoutInflater localLayoutInflater = LayoutInflater.from(getActivity());
    getListView().addHeaderView(localLayoutInflater.inflate(2130903155, null, false), null, false);
    this.a = new c(this, getActivity());
    setListAdapter(this.a);
    getActivity().getSupportLoaderManager().initLoader(10004, null, this);
  }

  public m onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new android.support.v4.a.f(getActivity(), com.avast.android.mobilesecurity.f.a(), new String[] { "_id", "name", "size" }, null, null, null);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    ViewGroup localViewGroup = (ViewGroup)paramLayoutInflater.inflate(2130903094, paramViewGroup, false);
    this.b = localViewGroup;
    return localViewGroup;
  }

  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    Cursor localCursor = (Cursor)paramListView.getItemAtPosition(paramInt);
    String str = localCursor.getString(localCursor.getColumnIndex("name"));
    int i = getResources().getIdentifier("l_" + str, "string", getActivity().getPackageName());
    int j = getResources().getIdentifier("l_descr_" + str, "string", getActivity().getPackageName());
    int k = getResources().getIdentifier("ic_privacy_" + str, "drawable", getActivity().getPackageName());
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(e.a(paramLong));
    localIntent.putExtra("titleResourceId", i);
    localIntent.putExtra("title", str);
    localIntent.putExtra("descriptionResourceId", j);
    localIntent.putExtra("iconResourceId", k);
    ((BaseActivity)getActivity()).a(localIntent);
  }

  public void onLoaderReset(m paramm)
  {
    this.a.changeCursor(null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.advisor.AdvisorGroupsFragment
 * JD-Core Version:    0.6.2
 */