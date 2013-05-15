package com.avast.android.generic.app.passwordrecovery;

import android.content.Intent;
import android.support.v4.a.p;

class h
  implements j
{
  h(g paramg)
  {
  }

  public void a(b paramb)
  {
    Intent localIntent = new Intent("com.avast.android.generic.app.passwordrecovery.ACTION_NEW_STATE");
    localIntent.putExtra("state_code", paramb.a());
    PasswordRecoveryDialog.a(this.a.a.b).a(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.passwordrecovery.h
 * JD-Core Version:    0.6.2
 */