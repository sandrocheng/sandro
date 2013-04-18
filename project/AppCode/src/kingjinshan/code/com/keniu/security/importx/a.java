package com.keniu.security.importx;

import android.os.Handler;
import android.os.Message;
import android.widget.ListView;
import android.widget.Toast;

final class a extends Handler
{
  a(BaseImportActivity paramBaseImportActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (BaseImportActivity.a(this.a));
    try
    {
      this.a.dismissDialog(2131427929);
      label19: paramMessage.obj = null;
      while (true)
      {
        return;
        if (paramMessage.what == 1)
        {
          this.a.m.setAdapter(BaseImportActivity.l);
          if (BaseImportActivity.l.getCount() <= 0)
            this.a.a(this.a.m());
          this.a.dismissDialog(2131427929);
        }
        else if (paramMessage.what == 2)
        {
          Toast.makeText(this.a, 2131428469, 1).show();
        }
      }
    }
    catch (Exception localException)
    {
      break label19;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.importx.a
 * JD-Core Version:    0.6.2
 */