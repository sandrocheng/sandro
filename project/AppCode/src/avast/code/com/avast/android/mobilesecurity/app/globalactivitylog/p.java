package com.avast.android.mobilesecurity.app.globalactivitylog;

import android.view.View;
import android.view.View.OnClickListener;
import java.util.List;

class p
  implements View.OnClickListener
{
  p(GlobalActivityLogFragment paramGlobalActivityLogFragment)
  {
  }

  public void onClick(View paramView)
  {
    GlobalActivityLogFragment.SelectorDialog.a(this.a.getFragmentManager(), (String[])GlobalActivityLogFragment.e(this.a).toArray(new String[GlobalActivityLogFragment.e(this.a).size()]), GlobalActivityLogFragment.a(this.a));
    this.a.a("ms-ActivityLog", "filter opened", "", 0L);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.globalactivitylog.p
 * JD-Core Version:    0.6.2
 */