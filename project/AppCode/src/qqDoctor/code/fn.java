import com.tencent.tmsecure.module.aresengine.MmsData;
import java.util.ArrayList;
import java.util.List;

public final class fn
{
  public MmsData a;
  public ArrayList<adg> b;
  private List<ly> c;

  private static void a(List<ly> paramList, adg paramadg)
  {
    int i;
    if (paramList != null)
    {
      i = paramList.size();
      if ((i != 0) && (paramadg != null))
        break label20;
    }
    label20: label203: 
    while (true)
    {
      return;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label203;
        if (((ly)paramList.get(j)).contentLocation != null)
        {
          String str1 = new String(((ly)paramList.get(j)).contentLocation);
          if ((paramadg.b() == 0) && (str1.equals(paramadg.e())))
          {
            String str2 = new String(((ly)paramList.get(j)).data);
            ((adl)paramadg).c(str2);
            break;
          }
          if ((str1.equals(paramadg.e())) || (paramadg.e().contains(str1)))
          {
            paramadg.b(paramadg.e());
            paramadg.a(((ly)paramList.get(j)).dataPath);
            new StringBuilder("dataPath  ").append(((ly)paramList.get(j)).dataPath).toString();
            break;
          }
        }
      }
    }
  }

  private void b()
  {
    int i = 0;
    int j = this.a.mmsParts.size();
    int k = 0;
    if (k < j)
      if ((this.c.get(k) == null) || (((ly)this.c.get(k)).a != -1) || (((ly)this.c.get(k)).data == null));
    for (adi localadi = adk.a(new String(((ly)this.c.get(k)).data)); ; localadi = null)
    {
      if (localadi == null);
      while (true)
      {
        return;
        k++;
        break;
        this.b = localadi.b();
        if (this.b != null)
        {
          int m = this.b.size();
          while (i < m)
          {
            if ((((adg)this.b.get(i)).b() == 0) || (((adg)this.b.get(i)).b() == 1) || (((adg)this.b.get(i)).b() == 3) || (((adg)this.b.get(i)).b() == 2))
              a(this.c, (adg)this.b.get(i));
            i++;
          }
        }
      }
    }
  }

  public final void a()
  {
    if ((this.a == null) || (this.a.mmsParts == null));
    while (true)
    {
      return;
      this.c = new ArrayList();
      for (int i = 0; i < this.a.mmsParts.size(); i++)
        this.c.add((ly)this.a.mmsParts.get(i));
      if ((this.a.mmsNotificationIndHeader == null) && (this.a.mmsContentConfigHeader != null))
        b();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     fn
 * JD-Core Version:    0.6.2
 */