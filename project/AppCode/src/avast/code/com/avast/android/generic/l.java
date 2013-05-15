package com.avast.android.generic;

import android.content.Context;
import android.os.Handler.Callback;
import android.os.Message;
import android.support.v4.app.FragmentActivity;
import com.avast.android.generic.a.a;
import com.avast.android.generic.ui.PasswordDialog;
import java.lang.ref.WeakReference;

final class l
  implements Handler.Callback
{
  public boolean handleMessage(Message paramMessage)
  {
    FragmentActivity localFragmentActivity = (FragmentActivity)k.b.get();
    if ((paramMessage.what == t.ay) && (localFragmentActivity != null))
    {
      if (paramMessage.arg1 == PasswordDialog.a)
      {
        a locala = (a)ad.a((Context)k.b.get(), a.class);
        if (locala != null)
          locala.a(true);
      }
      if (paramMessage.arg1 == PasswordDialog.b)
        localFragmentActivity.moveTaskToBack(true);
    }
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.l
 * JD-Core Version:    0.6.2
 */