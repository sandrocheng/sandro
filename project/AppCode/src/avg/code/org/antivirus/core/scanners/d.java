package org.antivirus.core.scanners;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public abstract class d
{
  public boolean a = true;

  public void a(ObjectInputStream paramObjectInputStream)
  {
    this.a = paramObjectInputStream.readBoolean();
  }

  public void a(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.writeBoolean(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.scanners.d
 * JD-Core Version:    0.6.2
 */