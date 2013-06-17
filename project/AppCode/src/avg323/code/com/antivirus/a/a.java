package com.antivirus.a;

import java.util.concurrent.atomic.AtomicBoolean;

public class a extends Thread
{
  protected AtomicBoolean a = new AtomicBoolean(true);

  public void a()
  {
    this.a.set(false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.a.a
 * JD-Core Version:    0.6.2
 */