package com.a.a;

import java.util.ArrayList;

public abstract class a
  implements Cloneable
{
  ArrayList a = null;

  public void a()
  {
  }

  public void a(b paramb)
  {
    if (this.a == null)
      this.a = new ArrayList();
    this.a.add(paramb);
  }

  public ArrayList b()
  {
    return this.a;
  }

  public void b(b paramb)
  {
    if (this.a == null);
    while (true)
    {
      return;
      this.a.remove(paramb);
      if (this.a.size() == 0)
        this.a = null;
    }
  }

  public a c()
  {
    a locala;
    try
    {
      locala = (a)super.clone();
      if (this.a != null)
      {
        ArrayList localArrayList = this.a;
        locala.a = new ArrayList();
        int i = localArrayList.size();
        for (int j = 0; j < i; j++)
          locala.a.add(localArrayList.get(j));
      }
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError();
    }
    return locala;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.a.a
 * JD-Core Version:    0.6.2
 */