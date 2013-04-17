import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.ArrayList;
import java.util.List;

public final class ik
{
  public List<lu> a;
  private Context b;
  private SharedPreferences.Editor c;
  private SharedPreferences d;

  public ik(Context paramContext)
  {
    this.b = paramContext;
    this.d = this.b.getSharedPreferences("ImageADDAO", 0);
    this.c = this.d.edit();
    this.a = b();
  }

  private List<lu> b()
  {
    ArrayList localArrayList1 = new ArrayList();
    String str1 = this.d.getString("addate", "");
    ArrayList localArrayList2;
    if ((str1 == null) || (str1.equals("")))
    {
      localArrayList2 = localArrayList1;
      return localArrayList2;
    }
    int i = str1.indexOf("一项");
    Object localObject = str1;
    int j = i;
    label54: String str3;
    String str5;
    String str7;
    String str10;
    if (j != -1)
    {
      String str2 = ((String)localObject).substring(0, j);
      int k = str2.indexOf("分隔");
      str3 = str2.substring(0, k);
      String str4 = str2.substring(k + 2);
      int m = str4.indexOf("分隔");
      str5 = str4.substring(0, m);
      String str6 = str4.substring(m + 2);
      int n = str6.indexOf("分隔");
      str7 = str6.substring(0, n);
      String str8 = str6.substring(n + 2);
      int i1 = str8.indexOf("分隔");
      String str9 = str8.substring(0, i1);
      str10 = str8.substring(i1 + 2);
      if (!str9.equals("1"))
        break label353;
    }
    label353: for (boolean bool = true; ; bool = false)
    {
      int i2 = str10.indexOf("分隔");
      long l1 = Long.parseLong(str10.substring(0, i2));
      long l2 = Long.parseLong(str10.substring(i2 + 2));
      lu locallu = new lu();
      locallu.c = str3;
      locallu.a(str5);
      locallu.b = str7;
      locallu.g = bool;
      locallu.d = l1;
      locallu.e = l2;
      localArrayList1.add(locallu);
      if (j < -1 + ((String)localObject).length())
      {
        String str11 = ((String)localObject).substring(j + 2);
        int i3 = str11.indexOf("一项");
        localObject = str11;
        j = i3;
        break label54;
      }
      j = -1;
      break label54;
      localArrayList2 = localArrayList1;
      break;
    }
  }

  public final void a()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    if (i < this.a.size())
    {
      localStringBuffer.append(((lu)this.a.get(i)).c);
      localStringBuffer.append("分隔");
      localStringBuffer.append(((lu)this.a.get(i)).a);
      localStringBuffer.append("分隔");
      localStringBuffer.append(((lu)this.a.get(i)).b);
      localStringBuffer.append("分隔");
      if (!((lu)this.a.get(i)).g)
        break label227;
    }
    label227: for (int j = 1; ; j = 0)
    {
      localStringBuffer.append(j);
      localStringBuffer.append("分隔");
      localStringBuffer.append(((lu)this.a.get(i)).d);
      localStringBuffer.append("分隔");
      localStringBuffer.append(((lu)this.a.get(i)).e);
      localStringBuffer.append("一项");
      i++;
      break;
      this.c.putString("addate", localStringBuffer.toString()).commit();
      return;
    }
  }

  public final void a(lu paramlu)
  {
    int i = 0;
    int j = 0;
    while (i < this.a.size())
    {
      if (((lu)this.a.get(i)).c.equals(paramlu.c))
      {
        this.a.set(i, paramlu);
        j = 1;
      }
      i++;
    }
    if (j == 0)
      this.a.add(paramlu);
    a();
  }

  public final void b(lu paramlu)
  {
    for (int i = 0; i < this.a.size(); i++)
      if (((lu)this.a.get(i)).c.equals(paramlu.c))
        this.a.set(i, paramlu);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ik
 * JD-Core Version:    0.6.2
 */