package com.tencent.feedback.eup;

import android.content.Context;
import android.content.Intent;

final class h
  implements Runnable
{
  h(g paramg)
  {
  }

  public final void run()
  {
    Intent localIntent = new Intent(g.a(this.a), ConfirmDialog.class);
    localIntent.setFlags(268435456);
    g.a(this.a).startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.eup.h
 * JD-Core Version:    0.6.2
 */