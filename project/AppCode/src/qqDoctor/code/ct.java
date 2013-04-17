import java.util.HashMap;
import java.util.Map;

public final class ct
{
  private static final Map<String, Integer> a = new HashMap();
  private static final String[] b = { "FAX", "WORK", "HOME" };
  private static char[] c;

  static
  {
    for (int i = 0; ; i++)
    {
      if (i >= 3)
      {
        char[] arrayOfChar = new char[4];
        c = arrayOfChar;
        arrayOfChar[0] = '\\';
        c[1] = ';';
        c[2] = 'r';
        c[3] = 'n';
        return;
      }
      a.put(b[i], Integer.valueOf(i));
    }
  }

  public static int a(String[] paramArrayOfString, String paramString)
  {
    if (paramString == null)
    {
      i = -1;
      return i;
    }
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfString.length)
      {
        i = -1;
        break;
      }
      if (paramArrayOfString[i].equals(paramString))
        break;
    }
  }

  public static String[] a(String paramString)
  {
    String[] arrayOfString1 = paramString.split(";");
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    int j = 0;
    int k = 0;
    int m = 0;
    String[] arrayOfString2;
    if (i >= arrayOfString1.length)
    {
      arrayOfString2 = new String[1];
      if ((k == 0) && (j == 0) && (m == 0))
        break label253;
      if (m == 0)
        break label230;
      if (k == 0)
        break label221;
      arrayOfString2[0] = "FAX;WORK";
    }
    while (true)
    {
      return arrayOfString2;
      Integer localInteger = (Integer)a.get(arrayOfString1[i]);
      int n;
      int i1;
      int i2;
      if (localInteger == null)
      {
        localStringBuilder.append(arrayOfString1[i]);
        n = j;
        i1 = k;
        i2 = m;
      }
      while (true)
      {
        i++;
        m = i2;
        k = i1;
        j = n;
        break;
        switch (localInteger.intValue())
        {
        default:
          n = j;
          i1 = k;
          i2 = m;
          break;
        case 0:
          n = j;
          i1 = k;
          i2 = 1;
          break;
        case 1:
          n = j;
          i2 = m;
          i1 = 1;
          break;
        case 2:
          n = 1;
          i1 = k;
          i2 = m;
        }
      }
      label221: arrayOfString2[0] = "FAX;HOME";
      continue;
      label230: if (k != 0)
      {
        arrayOfString2[0] = "WORK";
      }
      else
      {
        arrayOfString2[0] = "HOME";
        continue;
        label253: arrayOfString2[0] = localStringBuilder.toString();
      }
    }
  }

  public static String b(String paramString)
  {
    if (paramString == null);
    int i;
    Object localObject1;
    int j;
    for (String str = null; ; str = ((StringBuilder)localObject1).toString())
    {
      return str;
      i = paramString.length();
      localObject1 = new StringBuilder();
      j = 0;
      if (j < i)
        break;
    }
    char c1 = paramString.charAt(j);
    char c2;
    int i1;
    label72: int k;
    Object localObject2;
    if (c1 == '\\')
      if (j + 1 < i)
      {
        c2 = paramString.charAt(j + 1);
        i1 = 0;
        if (c == null)
          break label222;
        if (i1 >= c.length)
        {
          k = j;
          localObject2 = localObject1;
        }
      }
    while (true)
    {
      int m = k + 1;
      localObject1 = localObject2;
      j = m;
      break;
      if (c2 == c[i1])
      {
        if (c2 == 'r')
          ((StringBuilder)localObject1).append('\r');
        while (true)
        {
          k = j + 1;
          localObject2 = localObject1;
          break;
          if (c2 == 'n')
            ((StringBuilder)localObject1).append('\n');
          else
            ((StringBuilder)localObject1).append(c2);
        }
      }
      i1++;
      break label72;
      ((StringBuilder)localObject1).append(c1);
      k = j;
      localObject2 = localObject1;
      continue;
      if (c1 != ';')
      {
        StringBuilder localStringBuilder = ((StringBuilder)localObject1).append(c1);
        int n = j;
        localObject2 = localStringBuilder;
        k = n;
      }
      else
      {
        label222: k = j;
        localObject2 = localObject1;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ct
 * JD-Core Version:    0.6.2
 */