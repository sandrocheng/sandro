package com.avast.android.mobilesecurity.app.settings;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.app.account.AccountSettingsFragment;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.NextRow;
import com.avast.android.mobilesecurity.ui.widget.ReportFrequencyRow;

public class SettingsAccountFragment extends AccountSettingsFragment
{
  private CheckBoxRow a;
  private ReportFrequencyRow b;
  private ae c;
  private Bundle d;

  private void a(Bundle paramBundle)
  {
    this.d.putAll(paramBundle);
    e().setEnabled(true);
  }

  public String a()
  {
    return "/ms/settings/account";
  }

  public int a_()
  {
    return 2131493069;
  }

  protected void d()
  {
    super.d();
    this.a.b(this.c.A());
    String str = this.c.w();
    if ((str != null) && (!"".equals(str)))
    {
      this.a.setEnabled(true);
      this.b.setEnabled(this.c.A());
    }
    while (true)
    {
      return;
      this.a.setEnabled(false);
      this.b.setEnabled(false);
    }
  }

  public int f()
  {
    return 2131165544;
  }

  public int g()
  {
    return 2131165545;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.c = ((ae)ad.a(getActivity(), ae.class));
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903140, paramViewGroup, false);
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.a = ((CheckBoxRow)paramView.findViewById(2131165546));
    this.b = ((ReportFrequencyRow)paramView.findViewById(2131165547));
    d();
    this.d = new Bundle();
    e().setOnClickListener(new a(this));
    if (e().isEnabled())
    {
      e().setEnabled(false);
      com.avast.android.generic.util.b.a(new c(this, getActivity(), null), new Void[0]);
    }
    this.a.a(new b(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.SettingsAccountFragment
 * JD-Core Version:    0.6.2
 */