package com.avast.android.mobilesecurity.app.advisor;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.support.v4.view.bk;

class e
  implements bk
{
  e(d paramd)
  {
  }

  public void a(int paramInt)
  {
    AdvisorPagerFragment.e(this.a.a).a = paramInt;
    AdvisorPagerFragment.f(this.a.a).edit().putInt("selected_tab", paramInt).commit();
  }

  public void a(int paramInt1, float paramFloat, int paramInt2)
  {
  }

  public void b(int paramInt)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.advisor.e
 * JD-Core Version:    0.6.2
 */