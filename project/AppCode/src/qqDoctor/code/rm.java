import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class rm
{
  public boolean a = false;

  public static kw a(String paramString, Map<String, List<String>> paramMap)
  {
    SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
    Object localObject;
    if ((paramMap == null) || (paramString == null))
      localObject = null;
    while (true)
    {
      return localObject;
      List localList = (List)paramMap.get(paramString);
      if (localList == null)
      {
        localObject = null;
      }
      else
      {
        Iterator localIterator = localList.iterator();
        while (true)
          if (localIterator.hasNext())
          {
            kw localkw = a.a(localSoftwareManager.getAppInfo((String)localIterator.next(), 5));
            if (localkw != null)
            {
              localObject = localkw;
              break;
            }
          }
        localObject = null;
      }
    }
  }

  private boolean a(File paramFile, List<List<File>> paramList, rm.b paramb)
  {
    File[] arrayOfFile = paramFile.listFiles();
    boolean bool2;
    if (((arrayOfFile == null) || (arrayOfFile.length <= 0)) && (!paramFile.getName().equals("LOST.DIR")))
      bool2 = true;
    int j;
    boolean bool1;
    label46: File localFile;
    boolean bool3;
    do
    {
      return bool2;
      int i = arrayOfFile.length;
      j = 0;
      bool1 = true;
      if (j >= i)
        break;
      localFile = arrayOfFile[j];
      bool3 = this.a;
      bool2 = false;
    }
    while (bool3);
    String str = localFile.getAbsolutePath();
    paramb.a(str);
    boolean bool4;
    if (localFile.isDirectory())
    {
      if (!a(localFile, paramList, paramb))
        break label331;
      ((List)paramList.get(4)).add(localFile);
      bool4 = bool1;
    }
    while (true)
    {
      j++;
      bool1 = bool4;
      break label46;
      if ((str.endsWith(".tmp")) || (str.contains("/dalvik-cache/")))
      {
        ((List)paramList.get(0)).add(localFile);
        bool4 = bool1;
      }
      else if ((str.contains("/.thumbnails/")) && ((str.endsWith(".jpg")) || (str.endsWith(".png"))))
      {
        if (localFile.length() < 102400L)
        {
          ((List)paramList.get(1)).add(localFile);
          bool4 = bool1;
        }
      }
      else if (str.endsWith(".log"))
      {
        ((List)paramList.get(2)).add(localFile);
        bool4 = bool1;
      }
      else if ((str.contains("/LOST.DIR/")) && (TextUtils.isDigitsOnly(localFile.getName())))
      {
        ((List)paramList.get(3)).add(localFile);
        bool4 = bool1;
      }
      else
      {
        label331: bool4 = false;
        continue;
        bool2 = bool1;
        break;
        bool4 = bool1;
      }
    }
  }

  public static boolean a(String paramString, List<String> paramList)
  {
    Iterator localIterator = paramList.iterator();
    do
      if (!localIterator.hasNext())
        break;
    while (!paramString.contains((String)localIterator.next()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean a(String paramString, lg paramlg, Map<String, List<String>> paramMap, SoftwareManager paramSoftwareManager)
  {
    if (paramlg.b)
    {
      List localList = (List)paramMap.get(paramlg.a);
      if (localList != null)
      {
        Iterator localIterator = localList.iterator();
        String str;
        do
        {
          if (!localIterator.hasNext())
            break;
          str = (String)localIterator.next();
        }
        while ((str.equals(paramString)) || (paramSoftwareManager.getAppInfo(str, 1) == null));
      }
    }
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final List<List<File>> a(File paramFile, rm.b paramb)
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < 5; i++)
      localArrayList.add(new ArrayList());
    File[] arrayOfFile = paramFile.listFiles();
    int k;
    File localFile;
    if (arrayOfFile != null)
    {
      int j = arrayOfFile.length;
      k = 0;
      if (k < j)
      {
        localFile = arrayOfFile[k];
        if (!this.a);
      }
    }
    for (Object localObject = null; ; localObject = localArrayList)
    {
      return localObject;
      String str = localFile.getAbsolutePath();
      paramb.a(str);
      if (localFile.isDirectory())
        if ((!localFile.getName().startsWith(".")) && (a(localFile, localArrayList, paramb)))
          ((List)localArrayList.get(4)).add(localFile);
      while (true)
      {
        k++;
        break;
        if ((str.endsWith(".tmp")) || (str.contains("/dalvik-cache/")))
          ((List)localArrayList.get(0)).add(localFile);
        else if ((str.contains("/.thumbnails/")) && ((str.endsWith(".jpg")) || (str.endsWith(".png"))))
        {
          if (localFile.length() < 102400L)
            ((List)localArrayList.get(1)).add(localFile);
        }
        else if (str.endsWith(".log"))
          ((List)localArrayList.get(2)).add(localFile);
        else if ((str.contains("/LOST.DIR/")) && (TextUtils.isDigitsOnly(localFile.getName())))
          ((List)localArrayList.get(3)).add(localFile);
      }
    }
  }

  public static final class a
  {
    public a(bqs parambqs)
    {
    }
  }

  public static final class b
  {
    public b(bra parambra)
    {
    }

    public final void a(String paramString)
    {
      Message localMessage = bra.g(this.a).obtainMessage();
      localMessage.what = 0;
      localMessage.obj = paramString;
      bra.g(this.a).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     rm
 * JD-Core Version:    0.6.2
 */