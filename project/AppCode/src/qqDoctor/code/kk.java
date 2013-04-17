import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class kk
{
  public SharedPreferences a;
  public SharedPreferences.Editor b;
  private Context c = null;
  private int d = gd.a;

  public kk(Context paramContext)
  {
    this.c = paramContext;
    this.a = this.c.getSharedPreferences("tool_box_setting_info", 0);
    this.b = this.a.edit();
  }

  public static List<Integer> a(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramString.equals(""));
    while (true)
    {
      return localArrayList;
      String[] arrayOfString = paramString.split(";");
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
        localArrayList.add(Integer.valueOf(Integer.parseInt(arrayOfString[j])));
    }
  }

  private void a(List<Integer> paramList, String paramString)
  {
    int i = paramList.size();
    Object localObject = "";
    int j = 0;
    if (j < i)
    {
      int k = ((Integer)paramList.get(j)).intValue();
      if (j == i - 1);
      for (String str = (String)localObject + k; ; str = (String)localObject + k + ";")
      {
        j++;
        localObject = str;
        break;
      }
    }
    this.b.putString(paramString, (String)localObject).commit();
  }

  public final void a(List<Integer> paramList)
  {
    a(paramList, "tool_box_top_index");
  }

  public final boolean a()
  {
    boolean bool;
    if (this.a.getBoolean("tool_box_set_default", false))
      bool = true;
    while (true)
    {
      return bool;
      Iterator localIterator1 = a(this.a.getString("tool_box_top_index", "")).iterator();
      while (true)
      {
        Iterator localIterator2;
        if (localIterator1.hasNext())
          if (((Integer)localIterator1.next()).intValue() == 4)
          {
            this.b.putBoolean("tool_box_set_default", true);
            bool = true;
            break;
          }
      }
      localIterator2 = a(this.a.getString("tool_box_bottom_index", "")).iterator();
      while (true)
        if (localIterator2.hasNext())
          if (((Integer)localIterator2.next()).intValue() == 4)
          {
            this.b.putBoolean("tool_box_set_default", true);
            bool = true;
            break;
          }
      bool = false;
    }
  }

  public final boolean a(int paramInt)
  {
    boolean bool = true;
    String str = this.a.getString("plugin_mapping", "");
    try
    {
      if (!str.equals(""))
      {
        String[] arrayOfString = str.split(";");
        int i = arrayOfString.length;
        for (int j = 0; j < i; j++)
        {
          int k = Integer.parseInt(arrayOfString[j].split("&")[1]);
          if (k == paramInt)
            return bool;
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        bool = false;
      }
    }
  }

  public final boolean a(boolean paramBoolean)
  {
    boolean bool = true;
    if (this.a.getInt("tool_box_version", 0) != this.d)
      if (paramBoolean)
      {
        this.b.putInt("tool_box_version", this.d).commit();
        this.b.putInt("tool_box_oem", qx.a().h()).commit();
        this.b.putString("plugin_mapping", "").commit();
      }
    while (true)
    {
      return bool;
      int i = this.a.getInt("tool_box_oem", -1);
      if ((i == -1) || (qx.a().h() != i))
      {
        if (paramBoolean)
        {
          this.b.putInt("tool_box_oem", qx.a().h()).commit();
          this.b.putString("plugin_mapping", "").commit();
        }
      }
      else
        bool = false;
    }
  }

  public final List<Integer> b()
  {
    String str = "";
    if ((di.b().a()) || (a()))
    {
      str = "";
      if (gw.b())
        str = "16;14;17";
    }
    while (true)
    {
      if (a(false))
        this.b.putString("tool_box_bottom_index", str).commit();
      return a(this.a.getString("tool_box_bottom_index", str));
      if (gw.c())
        str = "16;15;17";
      else if ((gw.d()) || (gw.e()))
        if (di.b().o())
        {
          str = di.b().q();
        }
        else
        {
          str = "13;15;17";
          continue;
          if (gw.b())
            str = "16;17";
          else if (gw.c())
            str = "16;17";
          else if ((gw.d()) || (gw.e()))
            str = "13;17";
        }
    }
  }

  public final void b(List<Integer> paramList)
  {
    a(paramList, "tool_box_bottom_index");
  }

  public final int c()
  {
    String str = this.a.getString("plugin_mapping", "");
    try
    {
      if (!str.equals(""))
      {
        String[] arrayOfString1 = str.split(";");
        int[] arrayOfInt = new int[arrayOfString1.length];
        int j = arrayOfString1.length;
        k = 0;
        if (k >= j)
          break label202;
        String[] arrayOfString2 = arrayOfString1[k].split("&");
        if (arrayOfString2[0] == null)
          break label196;
        arrayOfInt[0] = Integer.parseInt(arrayOfString2[0]);
        break label196;
        if (m < arrayOfInt.length)
        {
          n = 0;
          if (n >= -1 + (arrayOfInt.length - m))
            break label214;
          if (arrayOfInt[n] >= arrayOfInt[(n + 1)])
            break label208;
          int i1 = arrayOfInt[n];
          arrayOfInt[n] = arrayOfInt[(n + 1)];
          arrayOfInt[(n + 1)] = i1;
          break label208;
        }
        i = arrayOfInt[0];
        return i;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        int k;
        int n;
        this.b.putString("plugin_mapping", "").commit();
        localException.printStackTrace();
        int i = 30;
        continue;
        label196: k++;
        continue;
        label202: int m = 0;
        continue;
        label208: n++;
        continue;
        label214: m++;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     kk
 * JD-Core Version:    0.6.2
 */