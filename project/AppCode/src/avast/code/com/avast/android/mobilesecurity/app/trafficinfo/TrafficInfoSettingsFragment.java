package com.avast.android.mobilesecurity.app.trafficinfo;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.avast.android.generic.ad;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.mobilesecurity.app.firewall.core.a;
import com.avast.android.mobilesecurity.t;
import com.avast.android.mobilesecurity.ui.widget.DayButtonRow;

public class TrafficInfoSettingsFragment extends TrackedFragment
{
  public static a a = new o();
  private CheckBoxRow b;
  private DayButtonRow c;
  private t d;

  private void c(View paramView)
  {
    this.b = ((CheckBoxRow)paramView.findViewById(2131165570));
    if ((this.d.aK()) && (NetworkStatsService.c()));
    for (boolean bool = true; ; bool = false)
    {
      this.b.b(bool);
      this.c = ((DayButtonRow)paramView.findViewById(2131165571));
      this.c.setEnabled(bool);
      this.c.a(this.d.aL());
      this.c.a(new p(this));
      this.b.a(new s(this));
      return;
    }
  }

  public String a()
  {
    return "/ms/networkMeter/settings";
  }

  public int a_()
  {
    return 2131493750;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    ViewGroup localViewGroup = (ViewGroup)paramLayoutInflater.inflate(2130903149, paramViewGroup, false);
    this.d = ((t)ad.a(getActivity(), t.class));
    return localViewGroup;
  }

  public void onResume()
  {
    super.onResume();
    if (!isAdded())
      return;
    if ((this.d.aK()) && (NetworkStatsService.c()));
    for (boolean bool = true; ; bool = false)
    {
      this.b.b(bool);
      this.c.a(this.d.aL());
      this.c.setEnabled(bool);
      break;
    }
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    c(paramView);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.trafficinfo.TrafficInfoSettingsFragment
 * JD-Core Version:    0.6.2
 */