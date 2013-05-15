package com.avast.android.mobilesecurity.app.globalactivitylog;

import java.util.Comparator;
import java.util.Map.Entry;

class o
  implements Comparator
{
  o(GlobalActivityLogFragment paramGlobalActivityLogFragment)
  {
  }

  public int a(Map.Entry paramEntry1, Map.Entry paramEntry2)
  {
    return ((String)paramEntry1.getValue()).compareToIgnoreCase((String)paramEntry2.getValue());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.globalactivitylog.o
 * JD-Core Version:    0.6.2
 */