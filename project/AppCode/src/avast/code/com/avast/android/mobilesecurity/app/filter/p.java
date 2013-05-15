package com.avast.android.mobilesecurity.app.filter;

import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.util.x;

class p
  implements View.OnClickListener
{
  p(FilterLogsFragment paramFilterLogsFragment)
  {
  }

  public void onClick(View paramView)
  {
    FilterLogsFragment.b(this.a).startDelete(2, null, FilterLogsFragment.a(this.a), null, null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.p
 * JD-Core Version:    0.6.2
 */