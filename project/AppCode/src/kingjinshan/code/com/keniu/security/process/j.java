package com.keniu.security.process;

import android.os.HandlerThread;
import android.os.Looper;
import com.jxphone.mosecurity.b.c;

final class j
  implements Runnable
{
  j(ProcessManagerActivity paramProcessManagerActivity)
  {
  }

  public final void run()
  {
    if (ProcessManagerActivity.i(this.a) != null)
      ProcessManagerActivity.i(this.a).b();
    this.a.e.getLooper().quit();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.j
 * JD-Core Version:    0.6.2
 */