package com.avast.android.mobilesecurity.ui.widget;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.avast.android.generic.d.f;
import com.google.analytics.tracking.android.bo;

class a
  implements CompoundButton.OnCheckedChangeListener
{
  a(AppLockingTypeButtons paramAppLockingTypeButtons)
  {
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    bo localbo;
    if (AppLockingTypeButtons.a(this.a) != paramBoolean)
    {
      AppLockingTypeButtons.a(this.a, paramBoolean);
      AppLockingTypeButtons.b(this.a);
      f localf = AppLockingTypeButtons.c(this.a);
      if ((paramBoolean) && (localf != null))
        localf.a();
      localbo = com.avast.android.generic.util.ga.a.a();
      if (!paramBoolean)
        break label84;
    }
    label84: for (String str = "on"; ; str = "off")
    {
      localbo.a("ms-AppLocking", "Enable lock app by password", str, Long.valueOf(0L));
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.a
 * JD-Core Version:    0.6.2
 */