package com.avast.android.antitheft_setup_components.app.home;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.avast.android.antitheft_setup_components.d;
import com.avast.android.antitheft_setup_components.e;
import com.avast.android.antitheft_setup_components.g;
import com.avast.android.generic.Application;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.util.a;
import com.avast.android.generic.util.ga.TrackedFragment;

public class RootFragment extends TrackedFragment
{
  private Button a;
  private Button b;
  private CheckBoxRow c;

  public String a()
  {
    return "/ms/antiTheftSetup/root";
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 100);
    while (true)
    {
      return;
      a.a(this);
    }
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(e.c, paramViewGroup, false);
    this.a = ((Button)localView.findViewById(d.c));
    this.b = ((Button)localView.findViewById(d.n));
    Application.a(false);
    this.c = ((CheckBoxRow)localView.findViewById(d.h));
    this.c.c(getString(g.ah));
    this.c.d(getString(g.P));
    this.c.b(false);
    this.c.a(null);
    this.c.a(new o(this));
    this.a.setOnClickListener(new p(this));
    this.b.setOnClickListener(new q(this));
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.RootFragment
 * JD-Core Version:    0.6.2
 */