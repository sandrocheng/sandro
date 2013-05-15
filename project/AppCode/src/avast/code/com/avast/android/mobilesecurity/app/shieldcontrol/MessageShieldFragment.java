package com.avast.android.mobilesecurity.app.shieldcontrol;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.avast.android.generic.ad;
import com.avast.android.generic.ui.af;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.generic.util.u;
import com.avast.android.mobilesecurity.t;

public class MessageShieldFragment extends TrackedFragment
  implements af
{
  private t a;
  private CheckBoxRow b;
  private CheckBoxRow c;
  private CheckBoxRow d;
  private boolean e = false;

  private void a(Context paramContext)
  {
    boolean bool1 = true;
    this.e = bool1;
    CheckBoxRow localCheckBoxRow1 = this.b;
    boolean bool2;
    boolean bool3;
    label64: CheckBoxRow localCheckBoxRow3;
    if ((this.a.aj()) && (c()))
    {
      bool2 = bool1;
      localCheckBoxRow1.b(bool2);
      CheckBoxRow localCheckBoxRow2 = this.c;
      if ((!this.a.ak()) || (!c()))
        break label151;
      bool3 = bool1;
      localCheckBoxRow2.b(bool3);
      localCheckBoxRow3 = this.d;
      if ((!this.a.al()) || (!c()))
        break label157;
    }
    while (true)
    {
      localCheckBoxRow3.b(bool1);
      this.e = false;
      this.b.setEnabled(c());
      this.c.setEnabled(this.b.c());
      this.d.setEnabled(this.b.c());
      return;
      bool2 = false;
      break;
      label151: bool3 = false;
      break label64;
      label157: bool1 = false;
    }
  }

  private boolean c()
  {
    return u.a(getActivity());
  }

  public String a()
  {
    return "/ms/shieldControl/messageShield";
  }

  public int a_()
  {
    return 2131493895;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.a = ((t)ad.a(getActivity(), t.class));
    a(getActivity());
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903145, paramViewGroup, false);
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    String str1 = getString(2131493898);
    String str2 = str1 + " " + getString(2131493899);
    ((TextView)paramView.findViewById(2131165382)).setText(str2);
    this.b = ((CheckBoxRow)paramView.findViewById(2131165560));
    this.b.a(new h(this));
    this.c = ((CheckBoxRow)paramView.findViewById(2131165561));
    this.c.a(new i(this));
    this.d = ((CheckBoxRow)paramView.findViewById(2131165562));
    this.d.a(new j(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.shieldcontrol.MessageShieldFragment
 * JD-Core Version:    0.6.2
 */