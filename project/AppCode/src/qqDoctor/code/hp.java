import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.ContactEntity;
import com.tencent.tmsecure.module.tools.SingletonManager;
import java.util.Iterator;
import java.util.List;

public final class hp
{
  private static hp e;
  public hr a;
  public hr b;
  public hr c;
  hr d;
  private boolean f = false;

  public static hp a()
  {
    try
    {
      if (e == null)
        e = new hp();
      hp localhp = e;
      return localhp;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static hr a(hq paramhq)
  {
    hr localhr = new hr();
    Iterator localIterator = paramhq.a().iterator();
    if (localIterator.hasNext())
    {
      lf locallf = (lf)localIterator.next();
      String str1 = locallf.phonenum;
      String str2 = locallf.name;
      int i;
      if (locallf.enableForCalling)
      {
        i = 0;
        label59: if (!locallf.enableForSMS)
          break label129;
      }
      label129: for (int j = 0; ; j = 1)
      {
        if (str2 == null)
          str2 = "";
        if (locallf.b == 0)
          str2 = str2 + i + j;
        localhr.a(str1, str2);
        break;
        i = 1;
        break label59;
      }
    }
    return localhr;
  }

  public final void b()
  {
    try
    {
      if (e.f)
        break label149;
      e.f = true;
      this.a = null;
      System.gc();
      this.a = new hr();
      Iterator localIterator = ((ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class)).getAllContact().iterator();
      while (localIterator.hasNext())
      {
        ContactEntity localContactEntity = (ContactEntity)localIterator.next();
        this.a.a(localContactEntity.phonenum, localContactEntity.name);
      }
    }
    finally
    {
    }
    this.b = a(new hq(1));
    this.c = a(new hq(0));
    this.d = a(new hq(2));
    label149:
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     hp
 * JD-Core Version:    0.6.2
 */