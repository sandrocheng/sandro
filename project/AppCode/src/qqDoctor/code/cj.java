public final class cj
{
  private static Object b = new Object();
  private static cj c = null;
  private int a = 0;

  public static cj a()
  {
    cj localcj;
    if (c != null)
      localcj = c;
    while (true)
    {
      return localcj;
      synchronized (b)
      {
        if (c == null)
          c = new cj();
        localcj = c;
      }
    }
  }

  public final dd a(String paramString)
  {
    dd localdd = null;
    if (paramString == null);
    while (true)
    {
      return localdd;
      try
      {
        int i = this.a;
        localdd = null;
        if (i >= 5)
          continue;
        localdd = new dd(paramString);
        this.a = (1 + this.a);
      }
      finally
      {
      }
    }
  }

  // ERROR //
  public final void a(dd paramdd)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +6 -> 9
    //   6: aload_0
    //   7: monitorexit
    //   8: return
    //   9: aload_0
    //   10: iconst_m1
    //   11: aload_0
    //   12: getfield 21	cj:a	I
    //   15: iadd
    //   16: putfield 21	cj:a	I
    //   19: aload_1
    //   20: invokevirtual 33	dd:d	()V
    //   23: aload_0
    //   24: invokevirtual 36	java/lang/Object:notify	()V
    //   27: goto -21 -> 6
    //   30: astore_2
    //   31: aload_0
    //   32: monitorexit
    //   33: aload_2
    //   34: athrow
    //   35: astore_3
    //   36: aload_0
    //   37: invokevirtual 36	java/lang/Object:notify	()V
    //   40: aload_3
    //   41: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   9	19	30	finally
    //   23	27	30	finally
    //   36	42	30	finally
    //   19	23	35	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     cj
 * JD-Core Version:    0.6.2
 */