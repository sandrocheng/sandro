package com.avast.android.mobilesecurity.app.shieldcontrol;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.avast.android.generic.ad;
import com.avast.android.generic.ui.af;
import com.avast.android.generic.ui.widget.NextRow;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.generic.util.u;
import com.avast.android.mobilesecurity.t;

public class ShieldControlFragment extends TrackedFragment
  implements af
{
  private t a;
  private NextRow b;
  private NextRow c;
  private NextRow d;
  private NextRow e;

  private void c()
  {
    boolean bool = true;
    NextRow localNextRow1 = this.b;
    Object[] arrayOfObject1 = new Object[bool];
    arrayOfObject1[0] = Integer.valueOf(this.a.av());
    localNextRow1.d(getString(2131493902, arrayOfObject1));
    NextRow localNextRow2 = this.d;
    Object[] arrayOfObject2 = new Object[bool];
    arrayOfObject2[0] = Integer.valueOf(this.a.ax());
    localNextRow2.d(getString(2131493896, arrayOfObject2));
    NextRow localNextRow3 = this.c;
    Object[] arrayOfObject3 = new Object[bool];
    arrayOfObject3[0] = Integer.valueOf(this.a.az());
    localNextRow3.d(getString(2131493605, arrayOfObject3));
    NextRow localNextRow4 = this.e;
    Object[] arrayOfObject4 = new Object[bool];
    arrayOfObject4[0] = Integer.valueOf(this.a.aB());
    localNextRow4.d(getString(2131493908, arrayOfObject4));
    this.b.findViewById(2131165273).setEnabled(this.a.ag());
    View localView = this.d.findViewById(2131165273);
    if ((this.a.aj()) && (d()));
    while (true)
    {
      localView.setEnabled(bool);
      this.c.findViewById(2131165273).setEnabled(this.a.S());
      this.e.findViewById(2131165273).setEnabled(this.a.ac());
      return;
      bool = false;
    }
  }

  private boolean d()
  {
    return u.a(getActivity(), true);
  }

  public String a()
  {
    return "/ms/shieldControl";
  }

  public int a_()
  {
    return 2131493361;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.a = ((t)ad.a(getActivity(), t.class));
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903143, paramViewGroup, false);
  }

  public void onResume()
  {
    super.onResume();
    c();
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.b = ((NextRow)paramView.findViewById(2131165553));
    this.b.setOnClickListener(new k(this));
    this.b.findViewById(2131165273).setDuplicateParentStateEnabled(false);
    this.c = ((NextRow)paramView.findViewById(2131165554));
    this.c.setOnClickListener(new l(this));
    this.c.findViewById(2131165273).setDuplicateParentStateEnabled(false);
    this.d = ((NextRow)paramView.findViewById(2131165555));
    this.d.setOnClickListener(new m(this));
    this.d.findViewById(2131165273).setDuplicateParentStateEnabled(false);
    this.e = ((NextRow)paramView.findViewById(2131165556));
    this.e.setOnClickListener(new n(this));
    this.e.findViewById(2131165273).setDuplicateParentStateEnabled(false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.shieldcontrol.ShieldControlFragment
 * JD-Core Version:    0.6.2
 */