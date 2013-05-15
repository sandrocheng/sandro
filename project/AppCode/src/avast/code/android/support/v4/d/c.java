package android.support.v4.d;

import java.util.LinkedHashMap;

public class c
{
  private final LinkedHashMap a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;

  public c(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException("maxSize <= 0");
    this.c = paramInt;
    this.a = new LinkedHashMap(0, 0.75F, true);
  }

  private int c(Object paramObject1, Object paramObject2)
  {
    int i = b(paramObject1, paramObject2);
    if (i < 0)
      throw new IllegalStateException("Negative size: " + paramObject1 + "=" + paramObject2);
    return i;
  }

  public final Object a(Object paramObject)
  {
    if (paramObject == null)
      throw new NullPointerException("key == null");
    Object localObject3;
    try
    {
      localObject2 = this.a.get(paramObject);
      if (localObject2 != null)
      {
        this.g = (1 + this.g);
      }
      else
      {
        this.h = (1 + this.h);
        localObject3 = b(paramObject);
        if (localObject3 == null)
          localObject2 = null;
      }
    }
    finally
    {
    }
    try
    {
      this.e = (1 + this.e);
      localObject2 = this.a.put(paramObject, localObject3);
      if (localObject2 != null)
        this.a.put(paramObject, localObject2);
      while (true)
      {
        if (localObject2 == null)
          break;
        a(false, paramObject, localObject3, localObject2);
        break label170;
        this.b += c(paramObject, localObject3);
      }
    }
    finally
    {
    }
    a(this.c);
    Object localObject2 = localObject3;
    label170: return localObject2;
  }

  public final Object a(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 == null) || (paramObject2 == null))
      throw new NullPointerException("key == null || value == null");
    try
    {
      this.d = (1 + this.d);
      this.b += c(paramObject1, paramObject2);
      Object localObject2 = this.a.put(paramObject1, paramObject2);
      if (localObject2 != null)
        this.b -= c(paramObject1, localObject2);
      if (localObject2 != null)
        a(false, paramObject1, localObject2, paramObject2);
      a(this.c);
      return localObject2;
    }
    finally
    {
    }
  }

  public final void a()
  {
    a(-1);
  }

  // ERROR //
  public void a(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 86	android/support/v4/d/c:b	I
    //   6: iflt +20 -> 26
    //   9: aload_0
    //   10: getfield 36	android/support/v4/d/c:a	Ljava/util/LinkedHashMap;
    //   13: invokevirtual 98	java/util/LinkedHashMap:isEmpty	()Z
    //   16: ifeq +48 -> 64
    //   19: aload_0
    //   20: getfield 86	android/support/v4/d/c:b	I
    //   23: ifeq +41 -> 64
    //   26: new 41	java/lang/IllegalStateException
    //   29: dup
    //   30: new 43	java/lang/StringBuilder
    //   33: dup
    //   34: invokespecial 44	java/lang/StringBuilder:<init>	()V
    //   37: aload_0
    //   38: invokevirtual 102	java/lang/Object:getClass	()Ljava/lang/Class;
    //   41: invokevirtual 107	java/lang/Class:getName	()Ljava/lang/String;
    //   44: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: ldc 109
    //   49: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: invokespecial 60	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   58: athrow
    //   59: astore_2
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_2
    //   63: athrow
    //   64: aload_0
    //   65: getfield 86	android/support/v4/d/c:b	I
    //   68: iload_1
    //   69: if_icmple +13 -> 82
    //   72: aload_0
    //   73: getfield 36	android/support/v4/d/c:a	Ljava/util/LinkedHashMap;
    //   76: invokevirtual 98	java/util/LinkedHashMap:isEmpty	()Z
    //   79: ifeq +6 -> 85
    //   82: aload_0
    //   83: monitorexit
    //   84: return
    //   85: aload_0
    //   86: getfield 36	android/support/v4/d/c:a	Ljava/util/LinkedHashMap;
    //   89: invokevirtual 113	java/util/LinkedHashMap:entrySet	()Ljava/util/Set;
    //   92: invokeinterface 119 1 0
    //   97: invokeinterface 125 1 0
    //   102: checkcast 127	java/util/Map$Entry
    //   105: astore_3
    //   106: aload_3
    //   107: invokeinterface 130 1 0
    //   112: astore 4
    //   114: aload_3
    //   115: invokeinterface 133 1 0
    //   120: astore 5
    //   122: aload_0
    //   123: getfield 36	android/support/v4/d/c:a	Ljava/util/LinkedHashMap;
    //   126: aload 4
    //   128: invokevirtual 136	java/util/LinkedHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   131: pop
    //   132: aload_0
    //   133: aload_0
    //   134: getfield 86	android/support/v4/d/c:b	I
    //   137: aload_0
    //   138: aload 4
    //   140: aload 5
    //   142: invokespecial 88	android/support/v4/d/c:c	(Ljava/lang/Object;Ljava/lang/Object;)I
    //   145: isub
    //   146: putfield 86	android/support/v4/d/c:b	I
    //   149: aload_0
    //   150: iconst_1
    //   151: aload_0
    //   152: getfield 138	android/support/v4/d/c:f	I
    //   155: iadd
    //   156: putfield 138	android/support/v4/d/c:f	I
    //   159: aload_0
    //   160: monitorexit
    //   161: aload_0
    //   162: iconst_1
    //   163: aload 4
    //   165: aload 5
    //   167: aconst_null
    //   168: invokevirtual 84	android/support/v4/d/c:a	(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   171: goto -171 -> 0
    //
    // Exception table:
    //   from	to	target	type
    //   2	62	59	finally
    //   64	161	59	finally
  }

  protected void a(boolean paramBoolean, Object paramObject1, Object paramObject2, Object paramObject3)
  {
  }

  protected int b(Object paramObject1, Object paramObject2)
  {
    return 1;
  }

  protected Object b(Object paramObject)
  {
    return null;
  }

  public final String toString()
  {
    try
    {
      int i = this.g + this.h;
      int j = 0;
      if (i != 0)
        j = 100 * this.g / i;
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = Integer.valueOf(this.c);
      arrayOfObject[1] = Integer.valueOf(this.g);
      arrayOfObject[2] = Integer.valueOf(this.h);
      arrayOfObject[3] = Integer.valueOf(j);
      String str = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", arrayOfObject);
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.d.c
 * JD-Core Version:    0.6.2
 */