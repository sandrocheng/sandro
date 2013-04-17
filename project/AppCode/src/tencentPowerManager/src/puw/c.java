package puw;

import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class c
{
  public static String a(ArrayList<String> paramArrayList)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0; i < paramArrayList.size(); i++)
      paramArrayList.set(i, d((String)paramArrayList.get(i)));
    Collections.reverse(paramArrayList);
    int j = 0;
    if (j < paramArrayList.size())
    {
      String str = (String)paramArrayList.get(j);
      if (str.equals("list"))
      {
        paramArrayList.set(j - 1, "<" + (String)paramArrayList.get(j - 1));
        paramArrayList.set(0, (String)paramArrayList.get(0) + ">");
      }
      while (true)
      {
        j++;
        break;
        if (str.equals("map"))
        {
          paramArrayList.set(j - 1, "<" + (String)paramArrayList.get(j - 1) + ",");
          paramArrayList.set(0, (String)paramArrayList.get(0) + ">");
        }
        else if (str.equals("Array"))
        {
          paramArrayList.set(j - 1, "<" + (String)paramArrayList.get(j - 1));
          paramArrayList.set(0, (String)paramArrayList.get(0) + ">");
        }
      }
    }
    Collections.reverse(paramArrayList);
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
      localStringBuffer.append((String)localIterator.next());
    return localStringBuffer.toString();
  }

  public static ArrayList<String> a(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    int j = paramString.indexOf("<");
    while (true)
    {
      int k;
      if (i < j)
      {
        a(localArrayList, paramString.substring(i, j));
        k = j + 1;
        j = paramString.indexOf("<", k);
        int m = paramString.indexOf(",", k);
        if (j == -1)
          j = m;
        if ((m != -1) && (m < j))
        {
          j = m;
          i = k;
        }
      }
      else
      {
        a(localArrayList, paramString.substring(i, paramString.length()));
        return localArrayList;
        i = k;
      }
    }
  }

  private static void a(ArrayList<String> paramArrayList, String paramString)
  {
    int i = paramString.length();
    do
    {
      if (paramString.charAt(i - 1) != '>')
        break;
      i--;
    }
    while (i != 0);
    paramArrayList.add(0, e(paramString.substring(0, i)));
  }

  public static Object b(String paramString)
    throws g
  {
    Iterator localIterator = a(paramString).iterator();
    Object localObject1 = null;
    Object localObject2 = null;
    Object localObject3 = null;
    Object localObject4;
    if (localIterator.hasNext())
    {
      localObject1 = c((String)localIterator.next());
      if ((localObject1 instanceof String))
        if ("Array".equals((String)localObject1))
        {
          if (localObject3 != null)
            break label281;
          localObject1 = Array.newInstance(Byte.class, 0);
          localObject4 = localObject2;
        }
    }
    while (true)
    {
      localObject2 = localObject4;
      break;
      if ("?".equals((String)localObject1))
      {
        localObject4 = localObject2;
      }
      else if (localObject3 == null)
      {
        localObject4 = localObject2;
        localObject3 = localObject1;
      }
      else
      {
        localObject4 = localObject3;
        localObject3 = localObject1;
        continue;
        if ((localObject1 instanceof List))
        {
          if ((localObject3 != null) && ((localObject3 instanceof Byte)))
          {
            localObject1 = Array.newInstance(Byte.class, 1);
            Array.set(localObject1, 0, localObject3);
            localObject4 = localObject2;
          }
          else
          {
            if (localObject3 != null)
              ((List)localObject1).add(localObject3);
            localObject4 = localObject2;
            localObject3 = null;
          }
        }
        else
        {
          if ((localObject1 instanceof Map))
          {
            int i;
            if (localObject3 != null)
            {
              i = 1;
              label206: if (localObject2 == null)
                break label249;
            }
            label249: for (int j = 1; ; j = 0)
            {
              if ((j & i) != 0)
                ((Map)localObject1).put(localObject3, localObject2);
              localObject4 = null;
              localObject3 = null;
              break;
              i = 0;
              break label206;
            }
          }
          if (localObject3 == null)
          {
            localObject4 = localObject2;
            localObject3 = localObject1;
          }
          else
          {
            localObject4 = localObject3;
            localObject3 = localObject1;
            continue;
            return localObject1;
            label281: localObject4 = localObject2;
          }
        }
      }
    }
  }

  public static Object c(String paramString)
    throws g
  {
    if (paramString.equals("java.lang.Integer"))
      paramString = Integer.valueOf(0);
    while (true)
    {
      return paramString;
      if (paramString.equals("java.lang.Boolean"))
      {
        paramString = Boolean.valueOf(false);
        continue;
      }
      if (paramString.equals("java.lang.Byte"))
      {
        paramString = Byte.valueOf((byte)0);
        continue;
      }
      if (paramString.equals("java.lang.Double"))
      {
        paramString = Double.valueOf(0.0D);
        continue;
      }
      if (paramString.equals("java.lang.Float"))
      {
        paramString = Float.valueOf(0.0F);
        continue;
      }
      if (paramString.equals("java.lang.Long"))
      {
        paramString = Long.valueOf(0L);
        continue;
      }
      if (paramString.equals("java.lang.Short"))
      {
        paramString = Short.valueOf((short)0);
        continue;
      }
      if (paramString.equals("java.lang.Character"))
        throw new IllegalArgumentException("can not support java.lang.Character");
      if (paramString.equals("java.lang.String"))
      {
        paramString = "";
        continue;
      }
      if (paramString.equals("java.util.List"))
      {
        paramString = new ArrayList();
        continue;
      }
      if (paramString.equals("java.util.Map"))
      {
        paramString = new HashMap();
        continue;
      }
      if (paramString.equals("Array"))
      {
        paramString = "Array";
        continue;
      }
      if (paramString.equals("?"))
        continue;
      try
      {
        Object localObject = Class.forName(paramString).getConstructor(new Class[0]).newInstance(new Object[0]);
        paramString = localObject;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        throw new g(localException);
      }
    }
  }

  public static String d(String paramString)
  {
    if ((paramString.equals("java.lang.Integer")) || (paramString.equals("int")))
      paramString = "int32";
    while (true)
    {
      return paramString;
      if ((paramString.equals("java.lang.Boolean")) || (paramString.equals("boolean")))
      {
        paramString = "bool";
      }
      else if ((paramString.equals("java.lang.Byte")) || (paramString.equals("byte")))
      {
        paramString = "char";
      }
      else if ((paramString.equals("java.lang.Double")) || (paramString.equals("double")))
      {
        paramString = "double";
      }
      else if ((paramString.equals("java.lang.Float")) || (paramString.equals("float")))
      {
        paramString = "float";
      }
      else if ((paramString.equals("java.lang.Long")) || (paramString.equals("long")))
      {
        paramString = "int64";
      }
      else if ((paramString.equals("java.lang.Short")) || (paramString.equals("short")))
      {
        paramString = "short";
      }
      else
      {
        if (paramString.equals("java.lang.Character"))
          throw new IllegalArgumentException("can not support java.lang.Character");
        if (paramString.equals("java.lang.String"))
          paramString = "string";
        else if (paramString.equals("java.util.List"))
          paramString = "list";
        else if (paramString.equals("java.util.Map"))
          paramString = "map";
      }
    }
  }

  public static String e(String paramString)
  {
    if (paramString.equals("int32"))
      paramString = "java.lang.Integer";
    while (true)
    {
      return paramString;
      if (paramString.equals("bool"))
        paramString = "java.lang.Boolean";
      else if (paramString.equals("char"))
        paramString = "java.lang.Byte";
      else if (paramString.equals("double"))
        paramString = "java.lang.Double";
      else if (paramString.equals("float"))
        paramString = "java.lang.Float";
      else if (paramString.equals("int64"))
        paramString = "java.lang.Long";
      else if (paramString.equals("short"))
        paramString = "java.lang.Short";
      else if (paramString.equals("string"))
        paramString = "java.lang.String";
      else if (paramString.equals("list"))
        paramString = "java.util.List";
      else if (paramString.equals("map"))
        paramString = "java.util.Map";
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     puw.c
 * JD-Core Version:    0.6.2
 */