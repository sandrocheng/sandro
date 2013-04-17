import QQPIM.EModelID;
import QQPIM.SUI;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.powermanager.PowerManagerApplication;
import java.util.ArrayList;
import java.util.Iterator;

public final class ab
{
  private static ab c;
  public SharedPreferences a;
  public SharedPreferences.Editor b;

  private ab(Context paramContext)
  {
    this.a = paramContext.getSharedPreferences("actionStats", 0);
    this.b = this.a.edit();
  }

  public static ab a()
  {
    try
    {
      if (c == null)
        c = new ab(PowerManagerApplication.a());
      ab localab = c;
      return localab;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static ArrayList<bc> a(String paramString, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramString == null);
    label14: int i;
    do
    {
      return localArrayList;
      i = paramString.indexOf(";");
    }
    while (i == -1);
    bc localbc = new bc();
    String str1 = paramString.substring(0, i);
    String str2;
    if (str1.indexOf("&") != -1)
    {
      localbc.a = paramInt;
      localbc.c = Long.parseLong(str1.substring(0, str1.indexOf("&")));
      if (localbc.c == 0L)
        localbc.c = System.currentTimeMillis();
      str2 = str1.substring(1 + str1.indexOf("&"));
      if (str2.indexOf("&") == -1)
        break label195;
      localbc.b = Integer.parseInt(str2.substring(0, str2.indexOf("&")));
      localbc.d = Integer.parseInt(str2.substring(1 + str2.indexOf("&")));
    }
    while (true)
    {
      localArrayList.add(localbc);
      if (i == paramString.length())
        break;
      paramString = paramString.substring(i + 1);
      break label14;
      label195: localbc.b = Integer.parseInt(str2);
    }
  }

  public static ArrayList<SUI> a(ArrayList<bc> paramArrayList)
  {
    if (paramArrayList == null);
    ArrayList localArrayList;
    for (Object localObject = null; ; localObject = localArrayList)
    {
      return localObject;
      localArrayList = new ArrayList();
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        bc localbc = (bc)localIterator.next();
        if (localbc.b > 0)
        {
          SUI localSUI = new SUI();
          localSUI.setId(localbc.a);
          localSUI.setDesc(localbc.b);
          localSUI.setTime((int)(localbc.c / 1000L));
          if (localbc.d != 0)
          {
            localSUI.ivalues = new ArrayList();
            localSUI.ivalues.add(Integer.valueOf(localbc.d));
          }
          localArrayList.add(localSUI);
        }
      }
    }
  }

  public static void a(int paramInt)
  {
    int i = 0;
    ab localab = a();
    String str1 = EModelID.convert(paramInt).toString();
    long l = System.currentTimeMillis();
    ArrayList localArrayList = a(localab.a.getString(str1, null), paramInt);
    int j = 0;
    if (j < localArrayList.size())
      if (l == ((bc)localArrayList.get(j)).c)
        ((bc)localArrayList.get(j)).b = (1 + ((bc)localArrayList.get(j)).b);
    for (int k = 1; ; k = 0)
    {
      if (k == 0)
      {
        bc localbc = new bc();
        localbc.a = paramInt;
        localbc.c = l;
        localbc.b = 1;
        localArrayList.add(localbc);
      }
      StringBuffer localStringBuffer = new StringBuffer();
      while (true)
        if (i < localArrayList.size())
        {
          localStringBuffer.append(((bc)localArrayList.get(i)).c);
          localStringBuffer.append("&");
          localStringBuffer.append(((bc)localArrayList.get(i)).b);
          if (((bc)localArrayList.get(i)).d != 0)
          {
            localStringBuffer.append("&");
            localStringBuffer.append(((bc)localArrayList.get(i)).d);
          }
          localStringBuffer.append(";");
          i++;
          continue;
          j++;
          break;
        }
      String str2 = localStringBuffer.toString();
      localab.b.putString(str1, str2).commit();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ab
 * JD-Core Version:    0.6.2
 */