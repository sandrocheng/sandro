package com.keniu.security.sync;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.ijinshan.kinghelper.firewall.core.w;
import com.keniu.security.MoSecurityApplication;
import com.keniu.security.sync.ui.DialogAct;

final class c extends AsyncTask
{
  private w b;

  private c(a parama, byte paramByte)
  {
  }

  private Boolean a(Object[] paramArrayOfObject)
  {
    this.b = ((w)paramArrayOfObject[1]);
    return Boolean.valueOf(new com.keniu.security.sync.a.a().a(a.c(), (String)paramArrayOfObject[0]));
  }

  private void a(Boolean paramBoolean)
  {
    i.a(this, ">>>>> post the verify");
    com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.r, a.d());
    int i;
    if (paramBoolean.booleanValue())
      i = 2;
    while (true)
    {
      MoSecurityApplication localMoSecurityApplication = MoSecurityApplication.a();
      Intent localIntent = new Intent(localMoSecurityApplication, DialogAct.class);
      localIntent.setFlags(268435456);
      localIntent.putExtra("dialog_type", i);
      localMoSecurityApplication.startActivity(localIntent);
      super.onPostExecute(paramBoolean);
      return;
      if (a.a(this.b) == null)
        i = 3;
      else
        i = 1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.c
 * JD-Core Version:    0.6.2
 */