import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public final class hr
{
  private HashMap<Integer, String> a = new HashMap();
  private HashMap<String, String> b = new HashMap();

  public final String a(String paramString)
  {
    Object localObject;
    if ((paramString == null) || (paramString.length() < 2))
      localObject = null;
    while (true)
    {
      return localObject;
      if (paramString.indexOf('*') < 0);
      for (String str1 = (String)this.a.get(Integer.valueOf(fu.f(fu.a(paramString)).hashCode())); ; str1 = null)
      {
        while (true)
        {
          if ((str1 != null) || (paramString.indexOf('*') >= 0) || (this.b.isEmpty()))
            break label248;
          try
          {
            if (fu.c(paramString))
            {
              String str3 = fu.a(paramString);
              Iterator localIterator2 = this.b.keySet().iterator();
              String str4;
              Pattern localPattern;
              do
              {
                if (!localIterator2.hasNext())
                  break;
                str4 = (String)localIterator2.next();
                localPattern = Pattern.compile(str4);
              }
              while ((!localPattern.matcher(str3).matches()) && (!localPattern.matcher(paramString).matches()));
              localObject = (String)this.b.get(str4);
              break;
            }
            Iterator localIterator1 = this.b.keySet().iterator();
            while (true)
              if (localIterator1.hasNext())
              {
                String str2 = (String)localIterator1.next();
                if (Pattern.compile(str2).matcher(paramString).matches())
                {
                  localObject = (String)this.b.get(str2);
                  break;
                }
              }
            localObject = str1;
          }
          catch (PatternSyntaxException localPatternSyntaxException)
          {
            localObject = null;
          }
        }
        break;
        label248: localObject = str1;
        break;
      }
      localObject = str1;
    }
  }

  public final void a(String paramString1, String paramString2)
  {
    if (paramString1 == null);
    while (true)
    {
      return;
      if (paramString1.indexOf("*") < 0)
      {
        String str4 = fu.f(fu.a(paramString1));
        if ((str4.length() > 0) && (!this.a.containsKey(Integer.valueOf(str4.hashCode()))))
          this.a.put(Integer.valueOf(str4.hashCode()), paramString2);
      }
      else if (fu.c(paramString1))
      {
        if (fu.b(paramString1))
        {
          String str3 = paramString1.replace("+", "").replace("*", ".*");
          if (!this.b.containsKey(str3))
            this.b.put(str3, paramString2);
        }
        else
        {
          String str2 = fu.a(paramString1).replace("*", ".*");
          if (!this.b.containsKey(str2))
            this.b.put(str2, paramString2);
        }
      }
      else
      {
        String str1 = paramString1.replace("*", ".*");
        if (!this.b.containsKey(str1))
          this.b.put(str1, paramString2);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     hr
 * JD-Core Version:    0.6.2
 */