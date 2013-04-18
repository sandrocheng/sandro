package com.keniu.security.sync.ui;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import com.keniu.security.sync.a.a;
import com.keniu.security.sync.d.d.a.ge;
import com.keniu.security.sync.d.d.a.jt;
import com.keniu.security.sync.k;
import com.keniu.security.sync.l;

final class c extends AsyncTask
{
  jt a;
  private ProgressDialog c = new ProgressDialog(this.b);

  private c(AccountMgrAct paramAccountMgrAct)
  {
  }

  private Boolean a(String[] paramArrayOfString)
  {
    new a();
    this.a = a.a(paramArrayOfString[0]);
    return Boolean.valueOf(false);
  }

  private void a(Boolean paramBoolean)
  {
    this.c.cancel();
    if (this.a.k().k() == 0)
    {
      AccountMgrAct.a(this.b).a("session_id");
      AccountMgrAct.b(this.b);
      l.b(this.b, 2131429474);
    }
    super.onPostExecute(paramBoolean);
  }

  protected final void onPreExecute()
  {
    l.a(this.b, this.c, 2131429475);
    super.onPreExecute();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.c
 * JD-Core Version:    0.6.2
 */