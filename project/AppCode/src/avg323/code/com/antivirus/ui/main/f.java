package com.antivirus.ui.main;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.antivirus.ui.privacy.PrivacyActivity;
import com.avg.toolkit.c.a;

class f
  implements View.OnClickListener
{
  f(c paramc)
  {
  }

  public void onClick(View paramView)
  {
    this.a.a(new Intent(c.f(this.a), PrivacyActivity.class));
    a.a(c.g(this.a), "category_app_landing", "action_privacy", null, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.main.f
 * JD-Core Version:    0.6.2
 */