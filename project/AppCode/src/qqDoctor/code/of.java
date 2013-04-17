import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.networkload.BasicDownloadService;
import com.tencent.tmsecure.module.networkload.DownloadServiceBinder;
import com.tencent.tmsecure.module.networkload.NetworkLoadTaskListener;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.module.tools.FileChangedManager;
import com.tencent.tmsecure.module.tools.IFileChangedListener;
import java.io.File;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;

public class of extends BasicDownloadService
{
  private static String a = Environment.getExternalStorageDirectory() + File.separator + "QQSecureDownload";
  private static String b = a + File.separator + "tmp";
  private static DownloadServiceBinder d;
  private static Hashtable<String, kv> g = new Hashtable(0);
  private ov c;
  private long e = 0L;
  private SoftwareManager f;
  private NetworkLoadTaskListener<kv> h = new og(this);
  private Handler i = new oh(this);

  public static kv a(String paramString)
  {
    try
    {
      kv localkv = (kv)g.get(paramString);
      return localkv;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static kv a(String paramString, List<kv> paramList)
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
          localObject3 = (kv)localIterator.next();
          if (((kv)localObject3).d == null)
            break label104;
          boolean bool = paramString.equals(((kv)localObject3).d.getPackageName());
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

  public static void a(kv paramkv)
  {
    try
    {
      if (paramkv.d != null)
      {
        String str = paramkv.d.getPackageName();
        if (str != null)
          break label26;
      }
      while (true)
      {
        return;
        label26: g.put(paramkv.d.getPackageName(), paramkv);
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
      DownloadServiceBinder localDownloadServiceBinder = d;
      if (localDownloadServiceBinder == null);
      while (true)
      {
        return bool;
        if (d.getWaitingTasks().size() == 0)
        {
          int j = d.getRunningTasks().size();
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

  public static void b(String paramString)
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
          List localList = d.getAllTasks();
          if ((localList != null) && (localList.size() != 0))
          {
            Iterator localIterator = localList.iterator();
            while (localIterator.hasNext())
            {
              kv localkv = (kv)localIterator.next();
              if ((paramString.equals(localkv.mName)) && (localkv.mState != -1))
                d.deleteTask(localkv, false);
            }
          }
        }
      }
    }
    finally
    {
    }
  }

  public static void b(kv paramkv)
  {
    try
    {
      if (paramkv.d != null)
      {
        String str = paramkv.d.getPackageName();
        if (str != null)
          break label26;
      }
      while (true)
      {
        return;
        label26: g.remove(paramkv.d.getPackageName());
      }
    }
    finally
    {
    }
  }

  public static float c(kv paramkv)
  {
    float f1 = 0.0F;
    if (paramkv != null);
    try
    {
      long l1 = paramkv.mSize;
      boolean bool = l1 < 0L;
      f1 = 0.0F;
      if (!bool);
      while (true)
      {
        return f1;
        if (paramkv.mProgress > 0.0F)
        {
          f1 = paramkv.mProgress;
        }
        else if (paramkv.mCurrentSize > 0L)
        {
          f1 = (float)paramkv.mCurrentSize / (float)paramkv.mSize;
        }
        else
        {
          float f2 = (float)d(paramkv).length();
          long l2 = paramkv.mSize;
          f1 = f2 / (float)l2;
        }
      }
    }
    finally
    {
    }
  }

  public static File d(kv paramkv)
  {
    try
    {
      String str1 = paramkv.mName;
      Object localObject2 = null;
      if (str1 != null)
      {
        String str3 = paramkv.mParentPath;
        localObject2 = null;
        if (str3 != null)
        {
          if (3 != paramkv.mState)
            break label124;
          localObject2 = paramkv.mParentPath + File.separator + paramkv.mName;
        }
      }
      if (localObject2 == null)
        if (3 != paramkv.mState)
          break label163;
      label124: String str2;
      for (localObject2 = a + File.separator + paramkv.mName; ; localObject2 = str2)
      {
        File localFile = new File((String)localObject2);
        return localFile;
        localObject2 = paramkv.mParentPath + File.separator + paramkv.mName + ".tmp";
        break;
        label163: str2 = b + File.separator + paramkv.mName + ".tmp";
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
      DownloadServiceBinder localDownloadServiceBinder = (DownloadServiceBinder)super.onBind();
      d = localDownloadServiceBinder;
      localDownloadServiceBinder.setDownloadDirPath(a);
      d.setRunningTaskCountLimit((byte)3);
      d.setNetworkLoadTaskDao(f.i());
      d.registListener(this.h);
      this.c = ov.a();
      ((FileChangedManager)ManagerCreator.getManager(FileChangedManager.class)).addListener(a, 512, new of.a());
      this.f = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
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

  final class a
    implements IFileChangedListener
  {
    public final void onChanage(int paramInt, String paramString)
    {
      of.b(paramString);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     of
 * JD-Core Version:    0.6.2
 */