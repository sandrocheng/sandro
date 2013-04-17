import com.tencent.tmsecure.module.aresengine.FilterConfig;
import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;

final class buh
{
  int[] a;
  buh.a[] b;
  private Object c = new Object();

  private FilterResult a(int paramInt1, int paramInt2, TelephonyEntity paramTelephonyEntity, Object[] paramArrayOfObject)
  {
    buh.a locala = this.b[paramInt1];
    FilterResult localFilterResult = null;
    if (locala != null);
    synchronized (this.b)
    {
      locala.a = paramTelephonyEntity;
      locala.b = paramInt2;
      locala.d = paramArrayOfObject;
      locala.e = this.a[paramInt1];
      if (locala.a())
        locala.b();
      localFilterResult = locala.c;
      locala.f = null;
      locala.a = null;
      locala.c = null;
      locala.d = null;
      return localFilterResult;
    }
  }

  public final FilterResult a(TelephonyEntity paramTelephonyEntity, FilterConfig paramFilterConfig, Object[] paramArrayOfObject)
  {
    int[] arrayOfInt = this.a;
    Object localObject1 = null;
    if (arrayOfInt != null)
    {
      buh.a[] arrayOfa = this.b;
      localObject1 = null;
      if (arrayOfa != null)
      {
        localObject1 = null;
        if (paramFilterConfig != null)
        {
          Object localObject2 = this.c;
          int i = 0;
          try
          {
            if (i >= this.a.length);
            do
            {
              break;
              int j = paramFilterConfig.get(this.a[i]);
              if ((j != 4) && (j != 3))
              {
                FilterResult localFilterResult = a(i, j, paramTelephonyEntity, paramArrayOfObject);
                localObject1 = localFilterResult;
              }
            }
            while (localObject1 != null);
            i++;
          }
          finally
          {
          }
        }
      }
    }
    return localObject1;
  }

  public final void a(int paramInt, buh.a parama)
  {
    for (int i = 0; ; i++)
    {
      if (i >= this.a.length)
        i = -1;
      while (this.a[i] == paramInt)
      {
        if (i < 0)
          break;
        this.b[i] = parama;
        return;
      }
    }
    throw new IndexOutOfBoundsException("the filed " + paramInt + "is not define from setOrderedFileds method.");
  }

  static abstract class a
  {
    TelephonyEntity a;
    int b;
    FilterResult c;
    Object[] d;
    int e;
    Object f;

    abstract boolean a();

    abstract void b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     buh
 * JD-Core Version:    0.6.2
 */