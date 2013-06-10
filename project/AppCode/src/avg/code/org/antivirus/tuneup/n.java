package org.antivirus.tuneup;

import android.view.View;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

final class n
  implements CompoundButton.OnCheckedChangeListener
{
  n(BatterySaveSettingsActivity paramBatterySaveSettingsActivity, View paramView)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.a.findViewById(2131230862).setVisibility(8);
      this.a.findViewById(2131230861).setVisibility(8);
    }
    while (true)
    {
      return;
      this.a.findViewById(2131230862).setVisibility(0);
      this.a.findViewById(2131230861).setVisibility(0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.n
 * JD-Core Version:    0.6.2
 */