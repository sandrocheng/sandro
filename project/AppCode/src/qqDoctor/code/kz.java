import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

public final class kz extends ky
{
  private List<ky> g = new ArrayList();

  public static List<kz> a(List<ky> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    if ((paramList != null) && (!paramList.isEmpty()))
    {
      Iterator localIterator = paramList.iterator();
      if (localIterator.hasNext())
      {
        ky localky = (ky)localIterator.next();
        String str1 = localky.phonenum;
        if (str1.length() <= 8);
        for (String str2 = str1; ; str2 = str1.substring(-8 + str1.length(), str1.length()))
        {
          kz localkz = (kz)localLinkedHashMap.get(str2);
          if (localkz == null)
          {
            localkz = new kz();
            localkz.id = localky.id;
            localkz.d = localky.d;
            localkz.phonenum = localky.phonenum;
            localkz.date = localky.date;
            localkz.duration = localky.duration;
            localkz.type = localky.type;
            localkz.a = localky.a;
            localkz.name = localky.name;
            localkz.b = localky.b;
            localkz.c = localky.c;
            localLinkedHashMap.put(str2, localkz);
          }
          localkz.g.add(localky);
          break;
        }
      }
      localArrayList.addAll(localLinkedHashMap.values());
    }
    return localArrayList;
  }

  public final String a()
  {
    if (this.g.size() > 0);
    for (String str = "(" + this.g.size() + ")"; ; str = "")
      return str;
  }

  public final List<ky> b()
  {
    return this.g;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     kz
 * JD-Core Version:    0.6.2
 */