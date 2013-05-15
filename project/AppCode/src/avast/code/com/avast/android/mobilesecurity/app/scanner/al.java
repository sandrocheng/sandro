package com.avast.android.mobilesecurity.app.scanner;

import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.mobilesecurity.app.manager.AppDetailActivity;

class al
  implements View.OnClickListener
{
  al(VirusShieldActivity paramVirusShieldActivity)
  {
  }

  public void onClick(View paramView)
  {
    if (VirusShieldActivity.a(this.a) != null)
      AppDetailActivity.call(this.a, VirusShieldActivity.e(this.a), 0, 2131165405);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.al
 * JD-Core Version:    0.6.2
 */