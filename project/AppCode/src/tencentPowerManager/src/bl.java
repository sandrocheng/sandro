import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import com.tencent.tmsecure.common.ManagerCreator;
import java.io.File;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;

public class bl extends fc
{
  private static String a = Environment.getExternalStorageDirectory() + File.separator + "QQSecureDownload";
  private static String b = a + File.separator + "tmp";
  private static fe d;
  private static Hashtable<String, bd> g = new Hashtable(0);
  private bo c;
  private long e = 0L;
  private fs f;
  private fi<bd> h = new bm(this);
  private Handler i = new bn(this);

  public static bd a(String paramString, List<bd> paramList)
  {
    Object localObject1 = null;
    if (paramString != null)
    {
      localObject1 = null;
      if (paramList == null);
    }
    while (true)
    {
      try
      {
        int j = paramList.size();
        localObject1 = null;
        if (j == 0)
          return localObject1;
        Iterator localIterator = paramList.iterator();
        if (localIterator.hasNext())
        {
          localObject3 = (bd)localIterator.next();
          if (((bd)localObject3).a == null)
            break label104;
          boolean bool = paramString.equals(((bd)localObject3).a.c());
          if (!bool)
            break label104;
          localObject1 = localObject3;
          continue;
        }
        continue;
      }
      finally
      {
      }
      label104: Object localObject3 = localObject1;
    }
  }

  public static File a(bd parambd)
  {
    try
    {
      String str1 = parambd.e;
      Object localObject2 = null;
      if (str1 != null)
      {
        String str3 = parambd.f;
        localObject2 = null;
        if (str3 != null)
        {
          if (3 != parambd.d)
            break label124;
          localObject2 = parambd.f + File.separator + parambd.e;
        }
      }
      if (localObject2 == null)
        if (3 != parambd.d)
          break label163;
      label124: String str2;
      for (localObject2 = a + File.separator + parambd.e; ; localObject2 = str2)
      {
        File localFile = new File((String)localObject2);
        return localFile;
        localObject2 = parambd.f + File.separator + parambd.e + ".tmp";
        break;
        label163: str2 = b + File.separator + parambd.e + ".tmp";
      }
    }
    finally
    {
    }
  }

  public static void a(String paramString)
  {
    if (paramString != null);
    try
    {
      int j = paramString.length();
      if (j == 0);
      while (true)
      {
        return;
        int k = paramString.indexOf(".tmp");
        if (k != -1)
          paramString = paramString.substring(0, k);
        if ((paramString != null) && (paramString.length() != 0) && (d != null))
        {
          List localList = d.a();
          if ((localList != null) && (localList.size() != 0))
          {
            Iterator localIterator = localList.iterator();
            while (localIterator.hasNext())
            {
              bd localbd = (bd)localIterator.next();
              if ((paramString.equals(localbd.e)) && (localbd.d != -1))
                d.c(localbd);
            }
          }
        }
      }
    }
    finally
    {
    }
  }

  public static boolean a()
  {
    boolean bool = true;
    try
    {
      fe localfe = d;
      if (localfe == null);
      while (true)
      {
        return bool;
        if (d.b().size() == 0)
        {
          int j = d.c().size();
          if (j == 0);
        }
        else
        {
          bool = false;
        }
      }
    }
    finally
    {
    }
  }

  public IBinder onBind()
  {
    if (d == null)
    {
      fe localfe = (fe)super.onBind();
      d = localfe;
      localfe.a(a);
      d.a((byte)3);
      d.a(s.a.f());
      d.a(this.h);
      this.c = bo.a();
      ((fu)ManagerCreator.getManager(fu.class)).a(a, new fw(this));
      this.f = ((fs)ManagerCreator.getManager(fs.class));
    }
    return d;
  }

  public void onDestory()
  {
    super.onDestory();
    d = null;
    if (g != null)
      g.clear();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     bl
 * JD-Core Version:    0.6.2
 */