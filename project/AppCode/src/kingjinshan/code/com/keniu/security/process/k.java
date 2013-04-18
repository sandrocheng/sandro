package com.keniu.security.process;

import com.jxphone.mosecurity.b.c;
import com.keniu.security.d.e;
import java.util.ArrayList;
import java.util.List;

final class k
  implements Runnable
{
  List a = null;

  public k(ProcessManagerActivity paramProcessManagerActivity, e parame)
  {
    this.a = new ArrayList(1);
    this.a.add(parame);
  }

  public k(ProcessManagerActivity paramProcessManagerActivity, List paramList)
  {
    this.a = new ArrayList(paramList);
  }

  public final void run()
  {
    for (int i = 0; i < this.a.size(); i++)
    {
      e locale = (e)this.a.get(i);
      ProcessManagerActivity.i(this.b).a(locale.b());
      ProcessManagerActivity.i(this.b).a(locale);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.k
 * JD-Core Version:    0.6.2
 */