package com.avast.android.mobilesecurity.app.messageshield;

import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.filter.core.g;
import com.avast.android.mobilesecurity.app.filter.core.j;
import java.util.List;

class n
  implements com.avast.android.mobilesecurity.app.filter.core.k
{
  n(k paramk, j paramj)
  {
  }

  public void a()
  {
    m.c("NewMessageScanTask: Message with uuid: " + k.a(this.b).b + " not found.");
  }

  public void a(List paramList)
  {
    k.a(this.b, paramList);
  }

  public void b()
  {
    g.a(k.a(this.b).b, this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.messageshield.n
 * JD-Core Version:    0.6.2
 */