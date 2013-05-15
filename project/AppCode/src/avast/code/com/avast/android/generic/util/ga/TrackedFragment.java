package com.avast.android.generic.util.ga;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentBreadCrumbs;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.view.View;
import com.actionbarsherlock.app.SherlockFragment;
import com.avast.android.generic.t;
import com.avast.android.generic.ui.BaseMultiPaneActivity;
import com.avast.android.generic.ui.af;
import com.avast.android.generic.util.al;
import com.google.analytics.tracking.android.bo;

public abstract class TrackedFragment extends SherlockFragment
  implements af
{
  public FragmentBreadCrumbs a(View paramView)
  {
    return (FragmentBreadCrumbs)paramView.findViewWithTag("breadcrumbs");
  }

  public abstract String a();

  public void a(String paramString1, String paramString2, String paramString3, long paramLong)
  {
    try
    {
      a.a().a(paramString1, paramString2, paramString3, Long.valueOf(paramLong));
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a.a.a.a.a.a.a().a("GA: trackEvent", localException);
    }
  }

  public int a_()
  {
    return 0;
  }

  protected void b(View paramView)
  {
    if (!isAdded());
    label99: 
    while (true)
    {
      return;
      FragmentActivity localFragmentActivity = getActivity();
      if (localFragmentActivity != null)
      {
        Bundle localBundle;
        if (al.b(localFragmentActivity))
        {
          localBundle = getArguments();
          bool = false;
          if (localBundle == null);
        }
        Intent localIntent;
        for (boolean bool = localBundle.getBoolean("hideTitlebar", false); ; bool = localIntent.getBooleanExtra("hideTitlebar", false))
        {
          if (!bool)
            break label99;
          View localView = paramView.findViewById(t.z);
          if (localView == null)
            break;
          localView.setVisibility(8);
          break;
          localIntent = getActivity().getIntent();
          if (localIntent == null)
            break;
        }
      }
    }
  }

  protected void j()
  {
    if (al.b(getActivity()))
      if ((getActivity() instanceof BaseMultiPaneActivity))
        getFragmentManager().popBackStack();
    while (true)
    {
      return;
      getActivity().finish();
      continue;
      getActivity().finish();
    }
  }

  public void onResume()
  {
    super.onResume();
    bo localbo = a.a();
    String str = a();
    if (str != null)
      localbo.c(str);
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    FragmentBreadCrumbs localFragmentBreadCrumbs;
    if (!al.b(getActivity()))
    {
      localFragmentBreadCrumbs = a(paramView);
      if (localFragmentBreadCrumbs != null)
      {
        localFragmentBreadCrumbs.setActivity(getActivity());
        if (a_() > 0)
          localFragmentBreadCrumbs.setLastTitle(getString(a_()), "");
        if (getArguments() != null)
        {
          int i = getArguments().getInt("titleResourceId", 0);
          if (i <= 0)
            break label92;
          localFragmentBreadCrumbs.setLastTitle(getString(i), "");
        }
      }
    }
    while (true)
    {
      return;
      label92: String str = getArguments().getString("title");
      if (!TextUtils.isEmpty(str))
        localFragmentBreadCrumbs.setLastTitle(str, "");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.ga.TrackedFragment
 * JD-Core Version:    0.6.2
 */