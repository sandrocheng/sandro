package com.keniu.security.software;

import android.content.Intent;
import com.keniu.security.util.f;

final class u
  implements ag
{
  u(SoftwareManager2 paramSoftwareManager2)
  {
  }

  public final void a(String paramString)
  {
    Intent localIntent = f.a(paramString);
    this.a.startActivityForResult(localIntent, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.u
 * JD-Core Version:    0.6.2
 */