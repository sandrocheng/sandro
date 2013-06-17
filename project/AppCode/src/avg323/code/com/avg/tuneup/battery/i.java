package com.avg.tuneup.battery;

import android.view.View;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.avg.a.e;

class i
  implements CompoundButton.OnCheckedChangeListener
{
  i(c paramc, View paramView)
  {
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.a.findViewById(e.sb_notification).setVisibility(8);
      this.a.findViewById(e.tv_notification).setVisibility(8);
    }
    while (true)
    {
      return;
      this.a.findViewById(e.sb_notification).setVisibility(0);
      this.a.findViewById(e.tv_notification).setVisibility(0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.battery.i
 * JD-Core Version:    0.6.2
 */