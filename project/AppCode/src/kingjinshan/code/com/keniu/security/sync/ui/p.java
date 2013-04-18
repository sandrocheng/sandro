package com.keniu.security.sync.ui;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import com.keniu.security.sync.a.a;

final class p extends AsyncTask
{
  private ProgressDialog b;

  private p(RegisterAct paramRegisterAct, byte paramByte)
  {
  }

  private static Integer a(String[] paramArrayOfString)
  {
    return Integer.valueOf(new a().b(paramArrayOfString[0], paramArrayOfString[1]));
  }

  private void a(Integer paramInteger)
  {
    this.b.cancel();
    this.b = null;
    this.a.a(paramInteger);
    super.onPostExecute(paramInteger);
  }

  protected final void onPreExecute()
  {
    this.b = new ProgressDialog(this.a);
    this.b.setMessage(this.a.getString(2131429465));
    this.b.show();
    super.onPreExecute();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.p
 * JD-Core Version:    0.6.2
 */