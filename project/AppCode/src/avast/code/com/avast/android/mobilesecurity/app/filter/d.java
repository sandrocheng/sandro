package com.avast.android.mobilesecurity.app.filter;

import android.os.Handler.Callback;
import android.os.Message;

class d
  implements Handler.Callback
{
  d(FilterContactsFragment paramFilterContactsFragment)
  {
  }

  public boolean handleMessage(Message paramMessage)
  {
    int i = 1;
    if (paramMessage.what == 2131165217)
    {
      FilterContactsFragment localFilterContactsFragment = this.a;
      String str = (String)paramMessage.obj;
      int j = paramMessage.arg1;
      boolean bool = false;
      if (j == i)
        bool = i;
      FilterContactsFragment.a(localFilterContactsFragment, str, bool);
    }
    while (true)
    {
      return i;
      i = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.d
 * JD-Core Version:    0.6.2
 */