package com.avast.android.generic.ui;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import com.avast.android.generic.util.al;
import java.util.Iterator;
import java.util.List;

public abstract class BaseMultiPaneActivity extends BaseActivity
{
  private void a(FragmentTransaction paramFragmentTransaction, Fragment paramFragment, Bundle paramBundle)
  {
    if ((paramFragment instanceof af))
    {
      int j = ((af)paramFragment).a_();
      if (j > 0)
        paramFragmentTransaction.setBreadCrumbTitle(j);
    }
    int i = paramBundle.getInt("titleResourceId", 0);
    if (i > 0)
      paramFragmentTransaction.setBreadCrumbTitle(i);
    while (true)
    {
      return;
      String str = paramBundle.getString("title");
      if (!TextUtils.isEmpty(str))
        paramFragmentTransaction.setBreadCrumbTitle(str);
    }
  }

  protected a a(String paramString)
  {
    return null;
  }

  public void a(Intent paramIntent)
  {
    a locala;
    Bundle localBundle1;
    FragmentManager localFragmentManager;
    if (al.b(getApplicationContext()))
    {
      Iterator localIterator = getPackageManager().queryIntentActivities(paramIntent, 65536).iterator();
      while (localIterator.hasNext())
      {
        locala = a(((ResolveInfo)localIterator.next()).activityInfo.name);
        if (locala != null)
        {
          localBundle1 = b(paramIntent);
          localFragmentManager = getSupportFragmentManager();
        }
      }
    }
    while (true)
    {
      try
      {
        Class localClass = locala.a();
        if (localClass == null)
          break;
        Fragment localFragment = (Fragment)localClass.newInstance();
        Bundle localBundle2 = localFragment.getArguments();
        if (localBundle2 != null)
          localBundle1.putAll(localBundle2);
        localFragment.setArguments(localBundle1);
        FragmentTransaction localFragmentTransaction = localFragmentManager.beginTransaction();
        localFragmentTransaction.replace(locala.c(), localFragment, locala.b());
        a(localFragmentTransaction, localFragment, localBundle1);
        a(localFragmentManager, localFragmentTransaction, localFragment);
        localFragmentTransaction.commit();
        return;
      }
      catch (InstantiationException localInstantiationException)
      {
        throw new IllegalStateException("Error creating new fragment.", localInstantiationException);
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        throw new IllegalStateException("Error creating new fragment.", localIllegalAccessException);
      }
      super.a(paramIntent);
    }
  }

  protected void a(FragmentManager paramFragmentManager, FragmentTransaction paramFragmentTransaction, Fragment paramFragment)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.BaseMultiPaneActivity
 * JD-Core Version:    0.6.2
 */