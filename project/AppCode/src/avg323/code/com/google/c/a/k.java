package com.google.c.a;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

public class k
  implements Externalizable
{
  private boolean a;
  private String b = "";
  private boolean c;
  private String d = "";
  private List e = new ArrayList();
  private boolean f;
  private String g = "";
  private boolean h;
  private boolean i = false;
  private boolean j;
  private String k = "";

  public k a(String paramString)
  {
    this.a = true;
    this.b = paramString;
    return this;
  }

  public k a(boolean paramBoolean)
  {
    this.h = true;
    this.i = paramBoolean;
    return this;
  }

  public String a()
  {
    return this.b;
  }

  public String a(int paramInt)
  {
    return (String)this.e.get(paramInt);
  }

  public k b(String paramString)
  {
    this.c = true;
    this.d = paramString;
    return this;
  }

  public String b()
  {
    return this.d;
  }

  public int c()
  {
    return this.e.size();
  }

  public k c(String paramString)
  {
    this.f = true;
    this.g = paramString;
    return this;
  }

  public k d(String paramString)
  {
    this.j = true;
    this.k = paramString;
    return this;
  }

  public String d()
  {
    return this.g;
  }

  public String e()
  {
    return this.k;
  }

  public void readExternal(ObjectInput paramObjectInput)
  {
    a(paramObjectInput.readUTF());
    b(paramObjectInput.readUTF());
    int m = paramObjectInput.readInt();
    for (int n = 0; n < m; n++)
      this.e.add(paramObjectInput.readUTF());
    if (paramObjectInput.readBoolean())
      c(paramObjectInput.readUTF());
    if (paramObjectInput.readBoolean())
      d(paramObjectInput.readUTF());
    a(paramObjectInput.readBoolean());
  }

  public void writeExternal(ObjectOutput paramObjectOutput)
  {
    paramObjectOutput.writeUTF(this.b);
    paramObjectOutput.writeUTF(this.d);
    int m = c();
    paramObjectOutput.writeInt(m);
    for (int n = 0; n < m; n++)
      paramObjectOutput.writeUTF((String)this.e.get(n));
    paramObjectOutput.writeBoolean(this.f);
    if (this.f)
      paramObjectOutput.writeUTF(this.g);
    paramObjectOutput.writeBoolean(this.j);
    if (this.j)
      paramObjectOutput.writeUTF(this.k);
    paramObjectOutput.writeBoolean(this.i);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.k
 * JD-Core Version:    0.6.2
 */