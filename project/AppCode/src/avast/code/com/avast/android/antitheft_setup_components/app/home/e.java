package com.avast.android.antitheft_setup_components.app.home;

import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.util.a;

class e
  implements View.OnClickListener
{
  e(DownloadFragment paramDownloadFragment)
  {
  }

  public void onClick(View paramView)
  {
    this.a.a("ms-atSetup", "download", "cancel", 0L);
    a.a(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.e
 * JD-Core Version:    0.6.2
 */