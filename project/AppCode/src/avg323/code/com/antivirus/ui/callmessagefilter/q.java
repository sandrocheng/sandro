package com.antivirus.ui.callmessagefilter;

import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.avg.toolkit.c.a;

class q
  implements CompoundButton.OnCheckedChangeListener
{
  private CheckBox[] a;
  private String c;

  q(j paramj, String paramString, CheckBox[] paramArrayOfCheckBox)
  {
    this.a = paramArrayOfCheckBox;
    this.c = paramString;
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      a.a(j.a(this.b), "call_message_blocker", this.c, null, 0);
      for (CheckBox localCheckBox : this.a)
        if (!localCheckBox.equals(paramCompoundButton))
          localCheckBox.setChecked(false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.q
 * JD-Core Version:    0.6.2
 */