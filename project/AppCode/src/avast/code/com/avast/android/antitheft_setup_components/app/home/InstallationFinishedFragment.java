package com.avast.android.antitheft_setup_components.app.home;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.avast.android.antitheft_setup_components.d;
import com.avast.android.antitheft_setup_components.e;
import com.avast.android.antitheft_setup_components.g;
import com.avast.android.generic.Application;
import com.avast.android.generic.util.a;
import com.avast.android.generic.util.ga.TrackedFragment;

public class InstallationFinishedFragment extends TrackedFragment
{
  private Button a;

  private void c()
  {
    ((InstallationFinishedWizardActivity)getActivity()).c();
    a.a(this);
  }

  public String a()
  {
    return "/ms/antiTheftSetup/finished";
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(e.a, paramViewGroup, false);
    this.a = ((Button)localView.findViewById(d.c));
    TextView localTextView = (TextView)localView.findViewById(d.m);
    if (Application.c())
      if (Application.e())
      {
        localTextView.setText(getString(g.t));
        this.a.setText(getString(g.c));
      }
    while (true)
    {
      this.a.setOnClickListener(new k(this));
      return localView;
      localTextView.setText(getString(g.ad));
      this.a.setText(getString(g.c));
      continue;
      a.a(this);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.InstallationFinishedFragment
 * JD-Core Version:    0.6.2
 */