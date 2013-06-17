package com.google.c.a;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

public class m
  implements Externalizable
{
  private List a = new ArrayList();

  public List a()
  {
    return this.a;
  }

  public int b()
  {
    return this.a.size();
  }

  public void readExternal(ObjectInput paramObjectInput)
  {
    int i = paramObjectInput.readInt();
    for (int j = 0; j < i; j++)
    {
      l locall = new l();
      locall.readExternal(paramObjectInput);
      this.a.add(locall);
    }
  }

  public void writeExternal(ObjectOutput paramObjectOutput)
  {
    int i = b();
    paramObjectOutput.writeInt(i);
    for (int j = 0; j < i; j++)
      ((l)this.a.get(j)).writeExternal(paramObjectOutput);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.m
 * JD-Core Version:    0.6.2
 */