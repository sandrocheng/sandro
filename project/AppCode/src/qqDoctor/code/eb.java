import QQPIM.SoftElementInfo;
import QQPIM.SoftList;
import android.os.Environment;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class eb
{
  private static String a = Environment.getExternalStorageDirectory().getAbsolutePath();
  private static String b;

  public static List<lh> a(SoftList paramSoftList, Map<String, List<String>> paramMap1, Map<String, List<String>> paramMap2)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = paramSoftList.getVctSofts();
    for (int i = 0; i < localArrayList2.size(); i++)
    {
      lh locallh = new lh();
      ArrayList localArrayList3 = new ArrayList();
      ArrayList localArrayList4 = new ArrayList();
      locallh.a = ((SoftElementInfo)localArrayList2.get(i)).pkgname;
      locallh.b = ((SoftElementInfo)localArrayList2.get(i)).name;
      if (((SoftElementInfo)localArrayList2.get(i)).getSoftsize() == 1);
      for (boolean bool = true; ; bool = false)
      {
        locallh.c = bool;
        locallh.d = a(((SoftElementInfo)localArrayList2.get(i)).getPath(), localArrayList3, localArrayList4);
        if (paramMap1 == null)
          break label322;
        Iterator localIterator1 = localArrayList3.iterator();
        while (localIterator1.hasNext())
        {
          String str2 = (String)localIterator1.next();
          Object localObject2 = (List)paramMap1.get(str2);
          if (localObject2 == null)
            localObject2 = new ArrayList();
          ((List)localObject2).add(locallh.a);
          paramMap1.put(str2, localObject2);
        }
      }
      Iterator localIterator2 = localArrayList4.iterator();
      while (localIterator2.hasNext())
      {
        String str1 = (String)localIterator2.next();
        Object localObject1 = (List)paramMap2.get(str1);
        if (localObject1 == null)
          localObject1 = new ArrayList();
        ((List)localObject1).add(locallh.a);
        paramMap2.put(str1, localObject1);
      }
      label322: localArrayList1.add(locallh);
    }
    return localArrayList1;
  }

  public static List<File> a(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    if ((a(new File(paramString1), paramString2, localArrayList)) && (localArrayList.size() != 0))
      localArrayList.add(new File(paramString1));
    return localArrayList;
  }

  private static List<lg> a(String paramString, List<String> paramList1, List<String> paramList2)
  {
    Object localObject3;
    if (paramString == null)
      localObject3 = null;
    while (true)
    {
      return localObject3;
      ArrayList localArrayList = new ArrayList();
      String[] arrayOfString1 = paramString.split("#");
      int i = arrayOfString1.length;
      int j = 0;
      Object localObject1 = paramList1;
      Object localObject2 = paramList2;
      label40: lg locallg;
      String[] arrayOfString2;
      if (j < i)
      {
        String str = arrayOfString1[j];
        locallg = new lg();
        arrayOfString2 = str.split("%");
      }
      try
      {
        locallg.a = (a + arrayOfString2[0]);
        locallg.b = arrayOfString2[1].equals("1");
        locallg.c = arrayOfString2[2].equals("1");
        if ((arrayOfString2.length >= 4) && (arrayOfString2[3] != null))
          locallg.d = arrayOfString2[3];
        label151: if (locallg.b)
        {
          if (localObject1 == null)
            localObject1 = new ArrayList();
          if (localObject2 == null)
            localObject2 = new ArrayList();
          if (!locallg.c)
            ((List)localObject1).add(locallg.a);
          ((List)localObject2).add(locallg.a);
        }
        localArrayList.add(locallg);
        j++;
        break label40;
        localObject3 = localArrayList;
      }
      catch (Exception localException)
      {
        break label151;
      }
    }
  }

  public static void a(List<File> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      ((File)localIterator.next()).delete();
  }

  private static boolean a(File paramFile, String paramString, List<File> paramList)
  {
    if ((!paramFile.exists()) || (!paramFile.isDirectory()))
      bool1 = true;
    label43: File[] arrayOfFile;
    while (true)
    {
      return bool1;
      if (paramString != null);
      for (b = paramString; ; b = "apk$avi$wmv$flv$mov$3gp$mp4$mpg$rmvb$mp3$wav$wma$mid$flac$lrc$m4a$krc$txt$aac")
      {
        if (paramList != null)
          break label43;
        bool1 = true;
        break;
      }
      arrayOfFile = paramFile.listFiles();
      if ((arrayOfFile != null) && (arrayOfFile.length != 0))
        break;
      bool1 = true;
    }
    int i = arrayOfFile.length;
    int j = 0;
    boolean bool1 = true;
    label75: File localFile;
    boolean bool3;
    if (j < i)
    {
      localFile = arrayOfFile[j];
      if (!localFile.isDirectory())
        break label187;
      ArrayList localArrayList = new ArrayList();
      boolean bool2 = a(localFile, paramString, localArrayList);
      Iterator localIterator = localArrayList.iterator();
      while (localIterator.hasNext())
        paramList.add((File)localIterator.next());
      if (!bool2)
        break label181;
      paramList.add(localFile);
      bool3 = bool1;
    }
    while (true)
    {
      j++;
      bool1 = bool3;
      break label75;
      break;
      label181: bool3 = false;
      continue;
      label187: String str1 = localFile.getName();
      if (str1.contains("."))
      {
        String str2 = str1.substring(1 + str1.lastIndexOf("."));
        int k;
        if ((str2 == null) || (str2.length() == 0))
          k = 0;
        while (true)
        {
          if (k == 0)
            break label335;
          bool3 = false;
          break;
          int m = b.indexOf(str2);
          if (m != -1)
          {
            int n = m + str2.length();
            if ((m == 0) || (b.charAt(m - 1) == '$'))
            {
              if (n == b.length())
              {
                k = 1;
                continue;
              }
              if (b.charAt(n) == '$')
                k = 1;
            }
          }
          else
          {
            k = 0;
          }
        }
      }
      label335: paramList.add(localFile);
      bool3 = bool1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     eb
 * JD-Core Version:    0.6.2
 */