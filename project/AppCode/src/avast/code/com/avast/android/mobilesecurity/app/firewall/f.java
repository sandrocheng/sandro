package com.avast.android.mobilesecurity.app.firewall;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ToggleButton;
import com.avast.android.generic.d.a;

class f
  implements CompoundButton.OnCheckedChangeListener
{
  f(CustomRuleDetailFragment paramCustomRuleDetailFragment, a parama)
  {
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    boolean bool1 = true;
    if (paramBoolean)
      this.a.a("allow", 0);
    boolean bool2 = CustomRuleDetailFragment.m(this.b).isChecked();
    boolean bool3;
    ToggleButton localToggleButton;
    if (!paramBoolean)
    {
      bool3 = bool1;
      if (bool2 != bool3)
      {
        localToggleButton = CustomRuleDetailFragment.m(this.b);
        if (paramBoolean)
          break label69;
      }
    }
    while (true)
    {
      localToggleButton.setChecked(bool1);
      return;
      bool3 = false;
      break;
      label69: bool1 = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.f
 * JD-Core Version:    0.6.2
 */