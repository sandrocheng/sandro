package org.achartengine.a;

public enum d
{
  private String g;

  static
  {
    d[] arrayOfd = new d[6];
    arrayOfd[0] = a;
    arrayOfd[1] = b;
    arrayOfd[2] = c;
    arrayOfd[3] = d;
    arrayOfd[4] = e;
    arrayOfd[5] = f;
  }

  private d(String arg3)
  {
    Object localObject;
    this.g = localObject;
  }

  private String a()
  {
    return this.g;
  }

  private static d a(String paramString)
  {
    d[] arrayOfd = values();
    int i = arrayOfd.length;
    d locald = null;
    for (int j = 0; (j < i) && (locald == null); j++)
      if (arrayOfd[j].g.equals(paramString))
        locald = arrayOfd[j];
    return locald;
  }

  private static int b(String paramString)
  {
    d[] arrayOfd = values();
    int i = arrayOfd.length;
    int j = -1;
    for (int k = 0; (k < i) && (j < 0); k++)
      if (arrayOfd[k].g.equals(paramString))
        j = k;
    return Math.max(0, j);
  }

  public final String toString()
  {
    return this.g;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     org.achartengine.a.d
 * JD-Core Version:    0.6.2
 */