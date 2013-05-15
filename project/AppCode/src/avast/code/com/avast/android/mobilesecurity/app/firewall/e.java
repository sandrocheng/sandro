package com.avast.android.mobilesecurity.app.firewall;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ToggleButton;
import com.avast.android.generic.d.a;

class e
  implements CompoundButton.OnCheckedChangeListener
{
  e(CustomRuleDetailFragment paramCustomRuleDetailFragment, a parama)
  {
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    int i = 1;
    if (paramBoolean)
      this.a.a("allow", i);
    int k = CustomRuleDetailFragment.l(this.b).isChecked();
    ToggleButton localToggleButton;
    if (!paramBoolean)
    {
      int m = i;
      if (k != m)
      {
        localToggleButton = CustomRuleDetailFragment.l(this.b);
        if (paramBoolean)
          break label69;
      }
    }
    while (true)
    {
      localToggleButton.setChecked(i);
      return;
      int n = 0;
      break;
      label69: int j = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.e
 * JD-Core Version:    0.6.2
 */