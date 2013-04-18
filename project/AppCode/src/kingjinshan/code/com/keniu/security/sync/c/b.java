package com.keniu.security.sync.c;

import android.content.Context;
import android.os.Handler;
import com.keniu.security.sync.d;
import com.keniu.security.sync.i;
import com.keniu.security.sync.l;
import com.keniu.security.sync.r;
import java.io.File;
import java.util.List;

public final class b extends g
{
  private int a = 0;
  private String d;

  public b(Handler paramHandler, Context paramContext, int paramInt)
  {
    super(paramContext, paramHandler, paramContext.getString(2131429563));
    this.a = paramInt;
  }

  private int a(List paramList)
  {
    d locald = r.a(this.b);
    int i = 0;
    int j = 0;
    int m;
    String str2;
    label81: int k;
    label135: String[] arrayOfString10;
    int i3;
    int i2;
    label380: int i1;
    label495: String[] arrayOfString1;
    String[] arrayOfString2;
    String[] arrayOfString3;
    int n;
    if (i < paramList.size())
    {
      String str10;
      String str11;
      String str12;
      do
      {
        com.keniu.security.sync.g localg;
        try
        {
          localg = (com.keniu.security.sync.g)paramList.get(i);
          String str1 = localg.e().trim();
          if (str1 == null)
          {
            m = j;
            break;
          }
          str2 = locald.a(str1);
          if (str2.equals("-1"))
          {
            locald.a(localg);
            m = j + 1;
            a(i);
            Integer[] arrayOfInteger = new Integer[2];
            arrayOfInteger[0] = Integer.valueOf(paramList.size());
            arrayOfInteger[1] = Integer.valueOf(i);
            publishProgress(arrayOfInteger);
            if (!isCancelled())
              break;
            k = -1;
            return k;
          }
          String str3 = localg.f();
          String str4 = localg.d();
          String str5 = localg.a();
          if ((str3 != null) && (str4 != null))
          {
            String[] arrayOfString8 = str3.split(";");
            String[] arrayOfString9 = str4.split(";");
            if ((str5 == null) || (str5.equals("")))
              break label763;
            arrayOfString10 = str5.split(";");
            break label751;
            int i4 = arrayOfString8.length;
            if (i3 < i4)
            {
              if ((arrayOfString8[i3] == null) || (arrayOfString8[i3].equals("")) || (!locald.a(str2, arrayOfString8[i3]).equals("-1")))
                break label757;
              if (str5 != null)
                locald.a(Long.parseLong(str2), arrayOfString8[i3], arrayOfString9[i3], arrayOfString10[i3]);
              else
                locald.a(Long.parseLong(str2), arrayOfString8[i3], arrayOfString9[i3], null);
            }
          }
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          m = j;
          break;
        }
        String str6 = localg.i();
        String str7 = localg.k();
        if ((str6 != null) && (str7 != null))
        {
          String[] arrayOfString6 = str6.split(";");
          String[] arrayOfString7 = str7.split(";");
          i2 = 0;
          if (i2 < arrayOfString6.length)
          {
            if ((arrayOfString6[i2] == null) || (arrayOfString6[i2].equals("")) || (!locald.b(str2, arrayOfString6[i2]).equals("-1")))
              break label769;
            locald.a(Long.parseLong(str2), arrayOfString6[i2], arrayOfString7[i2]);
            break label769;
          }
        }
        String str8 = localg.g();
        String str9 = localg.j();
        if ((str8 != null) && (str9 != null))
        {
          String[] arrayOfString4 = str8.split(";");
          String[] arrayOfString5 = str9.split(";");
          i1 = 0;
          if (i1 < arrayOfString4.length)
          {
            if ((arrayOfString4[i1] == null) || (arrayOfString4[i1].equals("")) || (!locald.c(str2, arrayOfString4[i1]).equals("-1")))
              break label775;
            locald.b(Long.parseLong(str2), arrayOfString4[i1], arrayOfString5[i1]);
            break label775;
          }
        }
        str10 = localg.h();
        str11 = localg.b();
        str12 = localg.c();
      }
      while ((str10 == null) || (str10 == null));
      arrayOfString1 = str10.split(";");
      arrayOfString2 = str11.split(";");
      arrayOfString3 = str12.split(";");
      n = 0;
      label626: if (n >= arrayOfString1.length)
        break label785;
      if ((arrayOfString1[n] == null) || (arrayOfString1[n].equals("")))
        break label781;
      if (arrayOfString2.length <= n)
        break label787;
    }
    label769: label775: label781: label785: label787: for (String str13 = arrayOfString2[n]; ; str13 = "")
    {
      String str14;
      if (arrayOfString3.length > n)
        str14 = arrayOfString3[n];
      while (true)
        if (locald.a(str2, arrayOfString1[n], str13).equals("-1"))
        {
          locald.b(Long.parseLong(str2), arrayOfString1[n], str13, str14);
          break label781;
          str14 = "";
          continue;
          k = j;
          break label135;
          i++;
          j = m;
          break;
          while (true)
          {
            label751: i3 = 0;
            break;
            label757: i3++;
            break;
            label763: arrayOfString10 = null;
          }
          i2++;
          break label380;
          i1++;
          break label495;
        }
      n++;
      break label626;
      break label81;
    }
  }

  protected final Integer a(String[] paramArrayOfString)
  {
    super.a(paramArrayOfString);
    String str1;
    String str2;
    Integer localInteger;
    if (this.a == 0)
    {
      str1 = r.aC;
      this.d = str1;
      str2 = this.d + ".copy";
      if ((new File(this.d).exists()) || (this.a != 1))
        break label89;
      localInteger = Integer.valueOf(-10025);
    }
    while (true)
    {
      return localInteger;
      str1 = r.aD;
      break;
      label89: if (!r.b(this.d, str2))
      {
        localInteger = Integer.valueOf(-10024);
      }
      else
      {
        File localFile1 = new File(str2);
        if (!localFile1.exists())
        {
          localInteger = Integer.valueOf(-10009);
        }
        else if ((l.d(str2)) && (!l.b(str2, r.aE, true)))
        {
          localInteger = Integer.valueOf(-10012);
        }
        else
        {
          File localFile2 = new File(r.aE);
          if (localFile2.exists())
            localFile2.delete();
          List localList = r.b(str2);
          if ((localList == null) || (localList.size() == 0))
          {
            localInteger = Integer.valueOf(-10010);
          }
          else
          {
            localFile1.delete();
            if (isCancelled())
            {
              localInteger = Integer.valueOf(-1);
            }
            else
            {
              b(localList.size());
              localInteger = Integer.valueOf(a(localList));
            }
          }
        }
      }
    }
  }

  protected final void a(Integer paramInteger)
  {
    super.a(paramInteger);
    i.a(this, ">>>>> contact#" + paramInteger);
    Handler localHandler1 = this.c;
    Handler localHandler2 = this.c;
    if (paramInteger.intValue() != 0);
    for (int i = paramInteger.intValue(); ; i = -10011)
    {
      localHandler1.sendMessage(localHandler2.obtainMessage(12, Integer.valueOf(i)));
      return;
    }
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
    b(100);
    a(0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.c.b
 * JD-Core Version:    0.6.2
 */