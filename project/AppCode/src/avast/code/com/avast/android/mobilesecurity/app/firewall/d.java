package com.avast.android.mobilesecurity.app.firewall;

import android.widget.Toast;
import android.widget.ToggleButton;
import com.avast.android.generic.d.a;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.EditTextRow;
import com.avast.android.generic.ui.widget.c;
import com.avast.android.mobilesecurity.t;
import com.avast.android.mobilesecurity.ui.widget.ConnectionTypeButtons;

class d
  implements c
{
  d(CustomRuleDetailFragment paramCustomRuleDetailFragment, a parama)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    boolean bool = false;
    if (paramBoolean)
    {
      if ((!CustomRuleDetailFragment.d(this.b).isChecked()) && (!CustomRuleDetailFragment.e(this.b).isChecked()))
      {
        Toast.makeText(this.b.getActivity(), this.b.getString(2131493722), 1).show();
        CustomRuleDetailFragment.f(this.b).b(false);
      }
      while (true)
      {
        return;
        if ((!CustomRuleDetailFragment.g(this.b).f()) && (!CustomRuleDetailFragment.g(this.b).d()) && (!CustomRuleDetailFragment.g(this.b).c()))
        {
          Toast.makeText(this.b.getActivity(), this.b.getString(2131493721), 1).show();
          CustomRuleDetailFragment.f(this.b).b(false);
        }
        else if ((CustomRuleDetailFragment.e(this.b).isChecked()) && (!CustomRuleDetailFragment.a(this.b, CustomRuleDetailFragment.h(this.b).d().toString())))
        {
          Toast.makeText(this.b.getActivity(), this.b.getString(2131493715), 1).show();
          CustomRuleDetailFragment.f(this.b).b(false);
        }
        else if ((CustomRuleDetailFragment.d(this.b).isChecked()) && (!CustomRuleDetailFragment.b(this.b, CustomRuleDetailFragment.a(this.b).d().toString())))
        {
          Toast.makeText(this.b.getActivity(), this.b.getString(2131493716), 1).show();
          CustomRuleDetailFragment.f(this.b).b(false);
        }
        else
        {
          if ((CustomRuleDetailFragment.i(this.b).c()) || (!CustomRuleDetailFragment.d(this.b).isChecked()) || (CustomRuleDetailFragment.b(this.b).d().length() <= 0) || ((CustomRuleDetailFragment.b(this.b, CustomRuleDetailFragment.b(this.b).d().toString())) && (CustomRuleDetailFragment.c(this.b, CustomRuleDetailFragment.b(this.b).d().toString()))))
            break;
          Toast.makeText(this.b.getActivity(), this.b.getString(2131493717), 1).show();
          CustomRuleDetailFragment.f(this.b).b(false);
        }
      }
      this.a.a("enabled", 1);
    }
    while (true)
    {
      CustomRuleDetailFragment.a(this.b, bool);
      if (!CustomRuleDetailFragment.j(this.b).X())
        break;
      FirewallFragment.a(this.b.getActivity(), CustomRuleDetailFragment.k(this.b));
      break;
      this.a.a("enabled", 0);
      bool = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.d
 * JD-Core Version:    0.6.2
 */