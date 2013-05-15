package com.avast.android.generic.app.settings;

import android.os.Handler.Callback;
import android.os.Message;
import android.widget.ListView;
import com.avast.android.generic.t;

class f
  implements Handler.Callback
{
  f(SetRecoveryNumberDialog paramSetRecoveryNumberDialog)
  {
  }

  public boolean handleMessage(Message paramMessage)
  {
    if (paramMessage.what == t.V)
    {
      String str = (String)paramMessage.obj;
      SetRecoveryNumberDialog.a(this.a, str);
    }
    SetRecoveryNumberDialog.b(this.a).post(new g(this));
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.settings.f
 * JD-Core Version:    0.6.2
 */