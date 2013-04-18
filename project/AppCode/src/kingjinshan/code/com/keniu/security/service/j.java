package com.keniu.security.service;

import android.content.Context;
import android.content.Intent;
import com.keniu.security.traffic.dc;

final class j
  implements dc
{
  j(i parami)
  {
  }

  public final boolean a(int paramInt)
  {
    Intent localIntent = new Intent(i.a(this.a), MoSecurityService.class);
    i.a(this.a).startService(localIntent);
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.service.j
 * JD-Core Version:    0.6.2
 */