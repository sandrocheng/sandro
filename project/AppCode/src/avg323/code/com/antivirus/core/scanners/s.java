package com.antivirus.core.scanners;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class s extends e
{
  public int b;
  public int c = 0;
  public int d = 0;
  public int e = 0;

  public int a()
  {
    return 0;
  }

  public void a(ObjectInputStream paramObjectInputStream)
  {
    super.a(paramObjectInputStream);
    this.b = paramObjectInputStream.readInt();
    this.c = paramObjectInputStream.readInt();
    this.d = paramObjectInputStream.readInt();
    this.e = paramObjectInputStream.readInt();
  }

  public void a(ObjectOutputStream paramObjectOutputStream)
  {
    super.a(paramObjectOutputStream);
    paramObjectOutputStream.writeInt(this.b);
    paramObjectOutputStream.writeInt(this.c);
    paramObjectOutputStream.writeInt(this.d);
    paramObjectOutputStream.writeInt(this.e);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.s
 * JD-Core Version:    0.6.2
 */