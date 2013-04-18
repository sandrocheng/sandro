package com.keniu.security.protection.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.keniu.security.protection.ScreenLockService;

final class e
  implements View.OnClickListener
{
  e(PreventTheftExperienceInfoActivity paramPreventTheftExperienceInfoActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (PreventTheftExperienceInfoActivity.a(this.a) == 2)
    {
      Intent localIntent1 = new Intent(this.a, ScreenLockService.class);
      localIntent1.putExtra("type", 1);
      localIntent1.putExtra("preview", true);
      this.a.startService(localIntent1);
    }
    if (PreventTheftExperienceInfoActivity.a(this.a) == 4)
    {
      Intent localIntent2 = new Intent(this.a, ScreenLockService.class);
      localIntent2.putExtra("type", 2);
      localIntent2.putExtra("preview", true);
      this.a.startService(localIntent2);
    }
    if (PreventTheftExperienceInfoActivity.a(this.a) == 1)
      this.a.b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.e
 * JD-Core Version:    0.6.2
 */