package com.tencent.feedback.eup;

import android.content.Context;
import android.content.Intent;

final class i
  implements Runnable
{
  i(h paramh)
  {
  }

  public final void run()
  {
    Intent localIntent = new Intent(h.a(this.a), ConfirmDialog.class);
    localIntent.setFlags(268435456);
    h.a(this.a).startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.eup.i
 * JD-Core Version:    0.6.2
 */