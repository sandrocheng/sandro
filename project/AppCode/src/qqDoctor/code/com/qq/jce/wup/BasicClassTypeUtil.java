package com.qq.jce.wup;

import java.io.PrintStream;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class BasicClassTypeUtil
{
  private static void addType(ArrayList<String> paramArrayList, String paramString)
  {
    int i = paramString.length();
    do
    {
      if (paramString.charAt(i - 1) != '>')
        break;
      i--;
    }
    while (i != 0);
    paramArrayList.add(0, uni2JavaType(paramString.substring(0, i)));
  }

  public static Object createClassByName(String paramString)
    throws ObjectCreateException
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
        throw new ObjectCreateException(localException);
      }
    }
  }

  public static Object createClassByUni(String paramString)
    throws ObjectCreateException
  {
    ArrayList localArrayList = getTypeList(paramString);
    Object localObject1 = null;
    Iterator localIterator = localArrayList.iterator();
    Object localObject2 = null;
    Object localObject3 = null;
    Object localObject4;
    if (localIterator.hasNext())
    {
      localObject1 = createClassByName((String)localIterator.next());
      if ((localObject1 instanceof String))
        if ("Array".equals((String)localObject1))
        {
          if (localObject3 != null)
            break label301;
          localObject1 = Array.newInstance(Byte.class, 0);
          localObject4 = localObject3;
          localObject3 = localObject2;
        }
    }
    while (true)
    {
      localObject2 = localObject3;
      localObject3 = localObject4;
      break;
      if ("?".equals((String)localObject1))
      {
        localObject4 = localObject3;
        localObject3 = localObject2;
      }
      else if (localObject3 == null)
      {
        localObject4 = localObject1;
        localObject3 = localObject2;
      }
      else
      {
        localObject4 = localObject1;
        continue;
        if ((localObject1 instanceof List))
        {
          if ((localObject3 != null) && ((localObject3 instanceof Byte)))
          {
            localObject1 = Array.newInstance(Byte.class, 1);
            Array.set(localObject1, 0, localObject3);
            localObject4 = localObject3;
            localObject3 = localObject2;
          }
          else
          {
            if (localObject3 != null)
              ((List)localObject1).add(localObject3);
            localObject3 = localObject2;
            localObject4 = null;
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
              label227: if (localObject2 == null)
                break label272;
            }
            label272: for (int j = 1; ; j = 0)
            {
              if ((j & i) != 0)
                ((Map)localObject1).put(localObject3, localObject2);
              localObject4 = null;
              localObject3 = null;
              break;
              i = 0;
              break label227;
            }
          }
          if (localObject3 == null)
          {
            localObject4 = localObject1;
            localObject3 = localObject2;
          }
          else
          {
            localObject4 = localObject1;
            continue;
            return localObject1;
            label301: localObject4 = localObject3;
            localObject3 = localObject2;
          }
        }
      }
    }
  }

  public static String getClassTransName(String paramString)
  {
    if (paramString.equals("int"))
      paramString = "Integer";
    while (true)
    {
      return paramString;
      if (paramString.equals("boolean"))
        paramString = "Boolean";
      else if (paramString.equals("byte"))
        paramString = "Byte";
      else if (paramString.equals("double"))
        paramString = "Double";
      else if (paramString.equals("float"))
        paramString = "Float";
      else if (paramString.equals("long"))
        paramString = "Long";
      else if (paramString.equals("short"))
        paramString = "Short";
      else if (paramString.equals("char"))
        paramString = "Character";
    }
  }

  public static ArrayList<String> getTypeList(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    label17: int k;
    for (int j = paramString.indexOf("<"); i < j; j = k)
    {
      addType(localArrayList, paramString.substring(i, j));
      i = j + 1;
      j = paramString.indexOf("<", i);
      k = paramString.indexOf(",", i);
      if (j == -1)
        j = k;
      if ((k == -1) || (k >= j))
        break label17;
    }
    addType(localArrayList, paramString.substring(i, paramString.length()));
    return localArrayList;
  }

  public static String getVariableInit(String paramString1, String paramString2)
  {
    String str;
    if (paramString2.equals("int"))
      str = paramString2 + " " + paramString1 + "=0 ;\n";
    while (true)
    {
      return str;
      if (paramString2.equals("boolean"))
        str = paramString2 + " " + paramString1 + "=false ;\n";
      else if (paramString2.equals("byte"))
        str = paramString2 + " " + paramString1 + " ;\n";
      else if (paramString2.equals("double"))
        str = paramString2 + " " + paramString1 + "=0 ;\n";
      else if (paramString2.equals("float"))
        str = paramString2 + " " + paramString1 + "=0 ;\n";
      else if (paramString2.equals("long"))
        str = paramString2 + " " + paramString1 + "=0 ;\n";
      else if (paramString2.equals("short"))
        str = paramString2 + " " + paramString1 + "=0 ;\n";
      else if (paramString2.equals("char"))
        str = paramString2 + " " + paramString1 + " ;\n";
      else
        str = paramString2 + " " + paramString1 + " = null ;\n";
    }
  }

  public static boolean isBasicType(String paramString)
  {
    boolean bool = true;
    if (paramString.equals("int"));
    while (true)
    {
      return bool;
      if ((!paramString.equals("boolean")) && (!paramString.equals("byte")) && (!paramString.equals("double")) && (!paramString.equals("float")) && (!paramString.equals("long")) && (!paramString.equals("short")) && (!paramString.equals("char")) && (!paramString.equals("Integer")) && (!paramString.equals("Boolean")) && (!paramString.equals("Byte")) && (!paramString.equals("Double")) && (!paramString.equals("Float")) && (!paramString.equals("Long")) && (!paramString.equals("Short")) && (!paramString.equals("Char")))
        bool = false;
    }
  }

  public static String java2UniType(String paramString)
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

  public static void main(String[] paramArrayOfString)
  {
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.add("char");
    localArrayList1.add("list<char>");
    localArrayList1.add("list<list<char>>");
    localArrayList1.add("map<short,string>");
    localArrayList1.add("map<double,map<float,list<bool>>>");
    localArrayList1.add("map<int64,list<Test.UserInfo>>");
    localArrayList1.add("map<short,Test.FriendInfo>");
    Iterator localIterator1 = localArrayList1.iterator();
    while (localIterator1.hasNext())
    {
      ArrayList localArrayList2 = getTypeList((String)localIterator1.next());
      Iterator localIterator2 = localArrayList2.iterator();
      while (localIterator2.hasNext())
      {
        String str = (String)localIterator2.next();
        System.out.println(str);
      }
      Collections.reverse(localArrayList2);
      System.out.println("-------------finished " + transTypeList(localArrayList2));
    }
  }

  public static String transTypeList(ArrayList<String> paramArrayList)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0; i < paramArrayList.size(); i++)
      paramArrayList.set(i, java2UniType((String)paramArrayList.get(i)));
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

  public static String uni2JavaType(String paramString)
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

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.qq.jce.wup.BasicClassTypeUtil
 * JD-Core Version:    0.6.2
 */