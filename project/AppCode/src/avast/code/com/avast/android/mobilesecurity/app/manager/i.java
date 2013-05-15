package com.avast.android.mobilesecurity.app.manager;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

class i
  implements CompoundButton.OnCheckedChangeListener
{
  i(ManagerAppFragment paramManagerAppFragment)
  {
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (paramCompoundButton.getId() == 2131165409)
        this.a.a(0);
      if (paramCompoundButton.getId() == 2131165410)
        this.a.a(3);
      if (paramCompoundButton.getId() == 2131165411)
        this.a.a(2);
      if (paramCompoundButton.getId() == 2131165412)
        this.a.a(1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.i
 * JD-Core Version:    0.6.2
 */