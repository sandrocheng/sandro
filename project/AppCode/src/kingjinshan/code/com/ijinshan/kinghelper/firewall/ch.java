package com.ijinshan.kinghelper.firewall;

import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.TextView;

final class ch
  implements RadioGroup.OnCheckedChangeListener
{
  ch(IpDialSettingsActivity paramIpDialSettingsActivity, RadioButton paramRadioButton1, RadioButton paramRadioButton2, RadioButton paramRadioButton3, RadioButton paramRadioButton4, TextView paramTextView)
  {
  }

  public final void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if (paramInt == this.a.getId())
      IpDialSettingsActivity.d(this.f, IpDialSettingsActivity.m(this.f)[0]);
    if (paramInt == this.b.getId())
      IpDialSettingsActivity.d(this.f, IpDialSettingsActivity.m(this.f)[1]);
    if (paramInt == this.c.getId())
      IpDialSettingsActivity.d(this.f, IpDialSettingsActivity.m(this.f)[2]);
    if (paramInt == this.d.getId())
    {
      IpDialSettingsActivity.b(this.f, true);
      IpDialSettingsActivity.d(this.f, IpDialSettingsActivity.m(this.f)[3]);
      this.e.setVisibility(0);
    }
    if ((paramInt != this.d.getId()) && (IpDialSettingsActivity.n(this.f)))
    {
      IpDialSettingsActivity.b(this.f, false);
      this.e.setVisibility(8);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ch
 * JD-Core Version:    0.6.2
 */