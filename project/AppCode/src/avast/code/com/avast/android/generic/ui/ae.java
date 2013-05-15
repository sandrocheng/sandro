package com.avast.android.generic.ui;

import android.os.Handler;
import android.os.Message;
import com.avast.android.generic.ui.widget.PasswordTextView;

class ae extends Handler
{
  com.avast.android.generic.ae a;
  boolean b = false;

  public ae(PasswordDialog paramPasswordDialog, com.avast.android.generic.ae paramae)
  {
    this.a = paramae;
  }

  private void a()
  {
    String str = PasswordDialog.a(this.c).a();
    if ((this.a.b(str)) || (this.a.c(str)))
    {
      this.b = true;
      PasswordDialog.b(this.c);
    }
  }

  public void handleMessage(Message paramMessage)
  {
    if (!this.b)
      a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.ae
 * JD-Core Version:    0.6.2
 */