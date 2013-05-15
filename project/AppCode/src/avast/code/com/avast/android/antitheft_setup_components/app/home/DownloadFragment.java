package com.avast.android.antitheft_setup_components.app.home;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.avast.android.generic.util.a;
import com.avast.android.generic.util.an;
import com.avast.android.generic.util.ga.TrackedFragment;

public class DownloadFragment extends TrackedFragment
{
  private Button a;
  private Button b;
  private ProgressBar c;
  private TextView d;
  private TextView e;

  private void c()
  {
    new f(this).c(new Void[0]);
  }

  private void d()
  {
    ((BaseSetupActivity)getActivity()).c();
    a.a(this);
  }

  public String a()
  {
    return "/ms/antiTheftSetup/download";
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 101)
      d();
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(com.avast.android.antitheft_setup_components.e.e, paramViewGroup, false);
    this.a = ((Button)localView.findViewById(com.avast.android.antitheft_setup_components.d.c));
    this.b = ((Button)localView.findViewById(com.avast.android.antitheft_setup_components.d.n));
    this.c = ((ProgressBar)localView.findViewById(com.avast.android.antitheft_setup_components.d.e));
    this.c.setProgress(0);
    this.d = ((TextView)localView.findViewById(com.avast.android.antitheft_setup_components.d.f));
    this.e = ((TextView)localView.findViewById(com.avast.android.antitheft_setup_components.d.k));
    this.a.setOnClickListener(new d(this));
    this.b.setOnClickListener(new e(this));
    c();
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.DownloadFragment
 * JD-Core Version:    0.6.2
 */