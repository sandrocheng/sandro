import android.app.Activity;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class fy
{
  private static ho a = ho.a();

  private static String a(String paramString, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = paramString.replace(".bk", ""); ; str = paramString + ".bk")
      return str;
  }

  public static void a(Activity paramActivity)
  {
    paramActivity.runOnUiThread(new fz(paramActivity));
  }

  public static void a(String paramString)
  {
    List localList = a.bx();
    localList.remove(paramString);
    a.a(localList);
  }

  private static void a(List<String> paramList, String paramString1, String paramString2, boolean paramBoolean)
  {
    File localFile1 = new File(paramString1);
    File localFile2 = new File(a(paramString1, paramBoolean));
    paramList.add("mv " + localFile1.getAbsolutePath() + " " + localFile2.getAbsolutePath());
    String str1 = localFile1.getAbsolutePath();
    String str2 = "";
    if (str1.endsWith(".apk"))
    {
      String str4 = str1.substring(0, -4 + str1.length());
      str1 = str4 + ".odex";
      str2 = str1 + ".bk";
    }
    while (true)
    {
      File localFile3 = new File(str1);
      if (localFile3.exists())
      {
        File localFile4 = new File(str2);
        paramList.add("mv " + localFile3.getAbsolutePath() + " " + localFile4.getAbsolutePath());
      }
      if (!paramBoolean)
        paramList.add("rm -r /data/data/" + paramString2);
      return;
      if (str1.endsWith(".apk.bk"))
      {
        String str3 = str1.substring(0, -7 + str1.length());
        str2 = str3 + ".odex";
        str1 = str3 + ".odex.bk";
      }
    }
  }

  public static boolean a()
  {
    if (ScriptHelper.canRunAtRoot() == 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean a(Activity paramActivity, String paramString1, String paramString2)
  {
    boolean bool1 = true;
    boolean bool2;
    boolean bool3;
    if (ScriptHelper.canRunAtRoot() == 0)
    {
      bool2 = bool1;
      if (!bool2)
        break label139;
      ArrayList localArrayList = new ArrayList();
      localArrayList.add("rm -r /data/data/" + paramString2);
      localArrayList.add("rm " + paramString1);
      ScriptHelper.runScriptAsRoot(new StringBuilder(), localArrayList);
      if (new File(paramString1).exists())
        break label116;
      bool3 = bool1;
      label103: if (!bool3)
        break label122;
    }
    while (true)
    {
      return bool1;
      bool2 = false;
      break;
      label116: bool3 = false;
      break label103;
      label122: paramActivity.runOnUiThread(new gb(paramActivity));
      bool1 = false;
      continue;
      label139: paramActivity.runOnUiThread(new fz(paramActivity));
      bool1 = false;
    }
  }

  public static boolean a(Activity paramActivity, List<kw> paramList)
  {
    int i;
    if (ScriptHelper.canRunAtRoot() == 0)
      i = 1;
    int j;
    while (true)
      if (i != 0)
      {
        ArrayList localArrayList = new ArrayList();
        localArrayList.add("mount -o remount rw /system");
        localArrayList.add("mount -o remount rw /data");
        Iterator localIterator1 = paramList.iterator();
        while (true)
          if (localIterator1.hasNext())
          {
            kw localkw = (kw)localIterator1.next();
            a(localArrayList, localkw.getApkPath(), localkw.getPackageName(), false);
            continue;
            i = 0;
            break;
          }
        if (ScriptHelper.runScriptAsRoot(localArrayList) == 0)
        {
          j = 1;
          Iterator localIterator2 = paramList.iterator();
          do
            if (!localIterator2.hasNext())
              break;
          while (!new File(((kw)localIterator2.next()).getApkPath()).exists());
        }
      }
    for (int k = 0; ; k = 1)
    {
      int m;
      if ((j != 0) && (k != 0))
        m = 1;
      label161: boolean bool;
      while (true)
        if (m != 0)
        {
          Iterator localIterator3 = paramList.iterator();
          while (true)
            if (localIterator3.hasNext())
            {
              b(a(((kw)localIterator3.next()).getApkPath(), false));
              continue;
              j = 0;
              break;
              m = 0;
              break label161;
            }
          ha.b(paramActivity, 2131429476);
          bool = true;
        }
      while (true)
      {
        return bool;
        paramActivity.runOnUiThread(new gb(paramActivity));
        bool = false;
        continue;
        paramActivity.runOnUiThread(new fz(paramActivity));
        bool = false;
      }
    }
  }

  public static boolean a(Activity paramActivity, kw paramkw)
  {
    int i = 1;
    if (ScriptHelper.canRunAtRoot() == 0)
    {
      int k = i;
      if (k == 0)
        break label79;
      if (!a(paramkw.getApkPath(), paramkw.getPackageName(), false))
        break label62;
      b(a(paramkw.getApkPath(), false));
      ha.b(paramActivity, 2131429476);
      paramActivity.setResult(i);
      paramActivity.finish();
    }
    while (true)
    {
      return i;
      int m = 0;
      break;
      label62: paramActivity.runOnUiThread(new gb(paramActivity));
      int j = 0;
      continue;
      label79: paramActivity.runOnUiThread(new ga(paramActivity));
      j = 0;
    }
  }

  private static boolean a(String paramString1, String paramString2, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("mount -o remount rw /system");
    localArrayList.add("mount -o remount rw /data");
    a(localArrayList, paramString1, paramString2, paramBoolean);
    if ((ScriptHelper.runScriptAsRoot(localArrayList) == 0) && (!new File(paramString1).exists()))
      nd.a().a(32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean a(List<String> paramList)
  {
    SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
    Iterator localIterator = paramList.iterator();
    boolean bool1 = true;
    if (localIterator.hasNext())
      if (localSoftwareManager.uninstallAppSilently((String)localIterator.next()))
        break label54;
    label54: for (boolean bool2 = false; ; bool2 = bool1)
    {
      bool1 = bool2;
      break;
      return bool1;
    }
  }

  public static boolean[] a(Activity paramActivity, List<String> paramList1, List<String> paramList2)
  {
    Object localObject;
    if (paramList1.size() != paramList2.size())
      localObject = new boolean[0];
    while (true)
    {
      return localObject;
      int i;
      if (ScriptHelper.canRunAtRoot() == 0)
        i = 1;
      while (true)
        if (i != 0)
        {
          ArrayList localArrayList = new ArrayList();
          int j = paramList1.size();
          int k = 0;
          while (true)
            if (k < j)
            {
              if (new File((String)paramList1.get(k)).exists())
                localArrayList.add("rm " + (String)paramList1.get(k));
              if (new File("/data/data/" + (String)paramList2.get(k)).exists())
                localArrayList.add("rm -r /data/data/" + (String)paramList2.get(k));
              k++;
              continue;
              i = 0;
              break;
            }
          ScriptHelper.runScriptAsRoot(new StringBuilder(), localArrayList);
          boolean[] arrayOfBoolean = new boolean[paramList1.size()];
          Iterator localIterator = paramList1.iterator();
          int m = 0;
          if (localIterator.hasNext())
          {
            if (!new File((String)localIterator.next()).exists());
            for (int n = 1; ; n = 0)
            {
              arrayOfBoolean[m] = n;
              m++;
              break;
            }
          }
          if (arrayOfBoolean.length > 0)
          {
            localObject = arrayOfBoolean;
            break;
          }
          paramActivity.runOnUiThread(new gb(paramActivity));
          localObject = new boolean[0];
          break;
        }
      paramActivity.runOnUiThread(new fz(paramActivity));
      localObject = new boolean[0];
    }
  }

  private static void b(String paramString)
  {
    List localList = a.bx();
    if (!localList.contains(paramString))
    {
      localList.add(paramString);
      a.a(localList);
    }
  }

  public static boolean b(Activity paramActivity, kw paramkw)
  {
    boolean bool1 = true;
    boolean bool2;
    if (ScriptHelper.canRunAtRoot() == 0)
    {
      bool2 = bool1;
      if ((!bool2) || (!a(paramkw.getApkPath(), paramkw.getPackageName(), bool1)))
        break label74;
      String str = paramkw.getApkPath();
      List localList = a.bx();
      localList.remove(str);
      a.a(localList);
      ha.b(paramActivity, 2131427779);
    }
    while (true)
    {
      return bool1;
      bool2 = false;
      break;
      label74: ha.b(paramActivity, 2131427780);
      bool1 = false;
    }
  }

  public static boolean b(List<String> paramList)
  {
    SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
    Iterator localIterator = paramList.iterator();
    boolean bool1 = true;
    if (localIterator.hasNext())
      if (localSoftwareManager.uninstallAppSilently((String)localIterator.next()))
        break label54;
    label54: for (boolean bool2 = false; ; bool2 = bool1)
    {
      bool1 = bool2;
      break;
      return bool1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     fy
 * JD-Core Version:    0.6.2
 */