package com.antivirus.core.scanners;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class ag extends e
{
  protected boolean b = false;
  protected boolean c = false;
  protected boolean d = false;

  public int a()
  {
    boolean bool = this.c;
    int i = 0;
    if (bool)
      i = 1;
    if (this.d)
      i++;
    if (this.b)
      i++;
    return i;
  }

  public void a(ObjectInputStream paramObjectInputStream)
  {
    super.a(paramObjectInputStream);
    this.b = paramObjectInputStream.readBoolean();
    this.c = paramObjectInputStream.readBoolean();
    this.d = paramObjectInputStream.readBoolean();
  }

  public void a(ObjectOutputStream paramObjectOutputStream)
  {
    super.a(paramObjectOutputStream);
    paramObjectOutputStream.writeBoolean(this.b);
    paramObjectOutputStream.writeBoolean(this.c);
    paramObjectOutputStream.writeBoolean(this.d);
  }

  public void a(boolean paramBoolean)
  {
    this.b = paramBoolean;
    e();
  }

  public void b(boolean paramBoolean)
  {
    this.c = paramBoolean;
    e();
  }

  public boolean b()
  {
    return this.b;
  }

  public void c(boolean paramBoolean)
  {
    this.d = paramBoolean;
    e();
  }

  public boolean c()
  {
    return this.c;
  }

  public boolean d()
  {
    return this.d;
  }

  protected void e()
  {
    if ((!this.b) && (!this.c) && (!this.d));
    for (boolean bool = true; ; bool = false)
    {
      this.a = bool;
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.ag
 * JD-Core Version:    0.6.2
 */