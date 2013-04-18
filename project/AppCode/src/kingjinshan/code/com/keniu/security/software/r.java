package com.keniu.security.software;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;

final class r extends Handler
{
  r(SoftwareManager2 paramSoftwareManager2)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (SoftwareManager2.a(this.a));
    while (true)
    {
      return;
      switch (paramMessage.what)
      {
      case 258:
      default:
        break;
      case 256:
        SoftwareManager2.a(this.a, new af(this.a));
        SoftwareManager2.b(this.a).setAdapter(SoftwareManager2.d(this.a));
        if (this.a.findViewById(2131231014).getVisibility() == 0)
          this.a.findViewById(2131231014).setVisibility(8);
        SoftwareManager2.a(this.a, new aj(this.a, SoftwareManager2.e(this.a)));
        SoftwareManager2.b(this.a, new aj(this.a, SoftwareManager2.f(this.a)));
        SoftwareManager2.c(this.a, new aj(this.a, SoftwareManager2.g(this.a)));
        SoftwareManager2.a(this.a, new au(this.a));
        SoftwareManager2.b(this.a, 1);
        break;
      case 259:
        int j = paramMessage.arg1;
        SoftwareManager2.a(this.a, j);
        o localo = (o)SoftwareManager2.b(this.a).getAdapter().getItem(j);
        SoftwareManager2 localSoftwareManager2 = this.a;
        String str = localo.a();
        SoftwareManager2.c(this.a);
        SoftwareManager2.a(localSoftwareManager2, str);
        break;
      case 257:
        int i = paramMessage.arg1;
        if (i == 0)
          Toast.makeText(this.a, 2131429188, 0).show();
        else if (i == 1)
          try
          {
            ((aj)SoftwareManager2.b(this.a).getAdapter()).a(SoftwareManager2.c(this.a));
            Toast.makeText(this.a, 2131429193, 0).show();
          }
          catch (Exception localException)
          {
          }
        break;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.r
 * JD-Core Version:    0.6.2
 */