package com.avast.android.mobilesecurity.app.messageshield;

import com.avast.android.mobilesecurity.app.filter.core.g;
import com.avast.android.mobilesecurity.app.filter.core.j;

class m
  implements j
{
  m(k paramk, com.avast.android.mobilesecurity.app.filter.core.k paramk1)
  {
  }

  public void a(String paramString)
  {
    com.avast.android.generic.util.m.c("NewMessageScanTask: Searching for saved aborted message with uuid: " + paramString);
    g.b(k.b(this.b), k.a(this.b).b, k.a(this.b).f, k.a(this.b).h, this.a);
  }

  public void b(String paramString)
  {
    com.avast.android.generic.util.m.c("NewMessageScanTask: Aborted message with uuid: " + paramString + " not saved.");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.messageshield.m
 * JD-Core Version:    0.6.2
 */