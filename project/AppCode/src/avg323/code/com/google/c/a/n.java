package com.google.c.a;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;

public class n
  implements Externalizable
{
  private boolean a;
  private String b = "";
  private boolean c;
  private String d = "";
  private boolean e;
  private String f = "";

  public n a(String paramString)
  {
    this.a = true;
    this.b = paramString;
    return this;
  }

  public String a()
  {
    return this.b;
  }

  public n b(String paramString)
  {
    this.c = true;
    this.d = paramString;
    return this;
  }

  public String b()
  {
    return this.d;
  }

  public n c(String paramString)
  {
    this.e = true;
    this.f = paramString;
    return this;
  }

  public void readExternal(ObjectInput paramObjectInput)
  {
    if (paramObjectInput.readBoolean())
      a(paramObjectInput.readUTF());
    if (paramObjectInput.readBoolean())
      b(paramObjectInput.readUTF());
    if (paramObjectInput.readBoolean())
      c(paramObjectInput.readUTF());
  }

  public void writeExternal(ObjectOutput paramObjectOutput)
  {
    paramObjectOutput.writeBoolean(this.a);
    if (this.a)
      paramObjectOutput.writeUTF(this.b);
    paramObjectOutput.writeBoolean(this.c);
    if (this.c)
      paramObjectOutput.writeUTF(this.d);
    paramObjectOutput.writeBoolean(this.e);
    if (this.e)
      paramObjectOutput.writeUTF(this.f);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.n
 * JD-Core Version:    0.6.2
 */