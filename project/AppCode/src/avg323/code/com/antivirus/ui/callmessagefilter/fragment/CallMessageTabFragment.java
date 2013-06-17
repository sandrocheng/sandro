package com.antivirus.ui.callmessagefilter.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.antivirus.m;
import com.avg.ui.general.fragments.FragmentTabHost;
import com.avg.ui.general.fragments.j;

public class CallMessageTabFragment extends com.avg.ui.general.fragments.i
{
  private String b;
  private String c;
  private n d;

  protected int F()
  {
    return 2130903104;
  }

  protected j[] G()
  {
    this.b = a(2131296740);
    this.c = a(2131296741);
    j[] arrayOfj = new j[2];
    arrayOfj[0] = new j(this.b, g.class, null);
    arrayOfj[1] = new j(this.c, v.class, null);
    return arrayOfj;
  }

  public a H()
  {
    return (a)this.a.getCurrenTabFragment();
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.ag.o())
      a(m.a(this.ag, 2131296733), localView, 2131230802);
    return localView;
  }

  public n a()
  {
    return this.d;
  }

  public void b(int paramInt)
  {
    a locala = (a)this.a.getCurrenTabFragment();
    if (locala != null)
      locala.b(paramInt);
    while (true)
    {
      return;
      com.avg.toolkit.f.a.a("tab host does not contain a current tab that is visible!");
    }
  }

  public void d(Bundle paramBundle)
  {
    super.d(paramBundle);
    if (h().getIntent().getExtras() == null)
      this.d = n.a;
    n localn;
    while (true)
    {
      return;
      localn = (n)h().getIntent().getSerializableExtra("default_tab_name");
      switch (m.a[localn.ordinal()])
      {
      default:
        com.avg.toolkit.f.a.a();
      case 1:
      case 2:
      }
    }
    this.a.setCurrentTab(0);
    while (true)
    {
      this.d = localn;
      break;
      this.a.setCurrentTab(1);
    }
  }

  public void onTabChanged(String paramString)
  {
    if (this.b.equals(paramString))
    {
      this.d = n.a;
      com.avg.toolkit.c.a.a(this.ag, "call_message_blocker", "call_message_blocker_call_tab_selected", null, 0);
    }
    while (true)
    {
      return;
      if (this.c.equals(paramString))
      {
        this.d = n.b;
        com.avg.toolkit.c.a.a(this.ag, "call_message_blocker", "call_message_blocker_message_tab_selected", null, 0);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.fragment.CallMessageTabFragment
 * JD-Core Version:    0.6.2
 */