package com.keniu.security.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

final class ao extends Handler
{
  private static final int a = 1;
  private WeakReference b;

  public ao(DialogInterface paramDialogInterface)
  {
    this.b = new WeakReference(paramDialogInterface);
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case 0:
    default:
    case -3:
    case -2:
    case -1:
    case 1:
    }
    while (true)
    {
      return;
      ((DialogInterface.OnClickListener)paramMessage.obj).onClick((DialogInterface)this.b.get(), paramMessage.what);
      continue;
      ((DialogInterface)paramMessage.obj).dismiss();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.ao
 * JD-Core Version:    0.6.2
 */