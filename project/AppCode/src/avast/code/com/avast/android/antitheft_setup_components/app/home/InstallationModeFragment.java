package com.avast.android.antitheft_setup_components.app.home;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.Html;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.avast.android.antitheft_setup_components.app.home.a.a;
import com.avast.android.antitheft_setup_components.d;
import com.avast.android.antitheft_setup_components.e;
import com.avast.android.antitheft_setup_components.g;
import com.avast.android.generic.ui.widget.NextRow;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.generic.util.z;
import java.util.List;

public class InstallationModeFragment extends TrackedFragment
{
  private static final Uri c = Uri.parse("market://details?id=com.avast.android.at_play");
  private NextRow a;
  private NextRow b;

  private Intent a(Uri paramUri)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", paramUri);
    localIntent.addFlags(524288);
    return localIntent;
  }

  private boolean a(Intent paramIntent)
  {
    boolean bool1 = isAdded();
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      Log.d("breadcrumbs", "Checking intent availability for uri: " + paramIntent.getDataString());
      List localList = getActivity().getPackageManager().queryIntentActivities(paramIntent, 0);
      bool2 = false;
      if (localList != null)
      {
        int i = localList.size();
        bool2 = false;
        if (i > 0)
          bool2 = true;
      }
    }
  }

  private void c(View paramView)
  {
    String str = a.a();
    this.a = ((NextRow)paramView.findViewById(d.j));
    Intent localIntent = a(c);
    if (a(localIntent))
    {
      this.a.c(getString(g.ag));
      this.a.a(Html.fromHtml(getString(g.y, new Object[] { "Update Agent" })));
      this.a.setOnClickListener(new m(this, localIntent));
    }
    while (true)
    {
      return;
      this.a.c(getString(g.l));
      this.a.a(Html.fromHtml(getString(g.M, new Object[] { str })));
      this.a.setOnClickListener(new n(this, str));
    }
  }

  public String a()
  {
    return "/ms/antiTheftSetup/installationMode";
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(e.f, paramViewGroup, false);
    this.b = ((NextRow)localView.findViewById(d.a));
    this.b.c(getString(g.W));
    this.b.d(getString(g.J));
    this.b.setOnClickListener(new l(this));
    c(localView);
    return localView;
  }

  public void onResume()
  {
    if ((isAdded()) && (z.b(getActivity()) != null))
      j();
    super.onResume();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.InstallationModeFragment
 * JD-Core Version:    0.6.2
 */