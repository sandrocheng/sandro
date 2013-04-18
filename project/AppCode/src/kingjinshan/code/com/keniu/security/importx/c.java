package com.keniu.security.importx;

import android.os.Handler;

final class c extends Thread
{
  c(BaseImportActivity paramBaseImportActivity)
  {
  }

  public final void run()
  {
    if (BaseImportActivity.l == null)
      BaseImportActivity.l = this.a.n();
    BaseImportActivity.b(this.a).sendEmptyMessage(1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.importx.c
 * JD-Core Version:    0.6.2
 */