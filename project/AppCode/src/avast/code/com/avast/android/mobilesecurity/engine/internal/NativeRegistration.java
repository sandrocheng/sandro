package com.avast.android.mobilesecurity.engine.internal;

import java.io.File;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.security.InvalidParameterException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class NativeRegistration
{
  public static int a(Object paramObject)
  {
    if (paramObject == null)
      throw new InvalidParameterException("Parameter can't be null");
    return unregisterClassJni(paramObject);
  }

  public static i a(Class paramClass, Object paramObject, String paramString)
  {
    while (true)
    {
      i locali;
      int i;
      LinkedList localLinkedList2;
      LinkedList localLinkedList3;
      try
      {
        if (!paramClass.equals(paramObject.getClass()))
        {
          locali = i.a;
          return locali;
        }
        if (!new File(paramString).exists())
        {
          locali = i.b;
          continue;
        }
        LinkedList localLinkedList1 = new LinkedList();
        Method[] arrayOfMethod = paramClass.getDeclaredMethods();
        i = 0;
        if (i < arrayOfMethod.length)
        {
          Method localMethod2 = arrayOfMethod[i];
          if (Modifier.isNative(localMethod2.getModifiers()))
            localLinkedList1.add(localMethod2);
        }
        else
        {
          if (localLinkedList1.isEmpty())
          {
            locali = i.c;
            continue;
          }
          localLinkedList2 = new LinkedList();
          localLinkedList3 = new LinkedList();
          Iterator localIterator = localLinkedList1.iterator();
          if (localIterator.hasNext())
          {
            Method localMethod1 = (Method)localIterator.next();
            localLinkedList2.add(localMethod1.getName());
            localLinkedList3.add(a(localMethod1));
            continue;
          }
        }
      }
      finally
      {
      }
      switch (registerClassJni(paramString, paramObject, (String[])localLinkedList2.toArray(new String[localLinkedList2.size()]), (String[])localLinkedList3.toArray(new String[localLinkedList3.size()])))
      {
      default:
        locali = i.d;
        break;
      case 0:
        locali = i.l;
        break;
      case 1:
        locali = i.e;
        break;
      case 2:
        locali = i.i;
        break;
      case 3:
        locali = i.j;
        break;
      case 4:
        locali = i.k;
        break;
      case 5:
        locali = i.g;
        break;
      case 6:
        locali = i.h;
        break;
      case 7:
        locali = i.f;
        continue;
        i++;
      }
    }
  }

  private static String a(String paramString)
  {
    String str2;
    if (paramString.equalsIgnoreCase("int"))
      str2 = "I";
    while (true)
    {
      return str2;
      if (paramString.equalsIgnoreCase("void"))
      {
        str2 = "V";
      }
      else if (paramString.equalsIgnoreCase("byte"))
      {
        str2 = "B";
      }
      else if (paramString.equalsIgnoreCase("short"))
      {
        str2 = "S";
      }
      else if (paramString.equalsIgnoreCase("double"))
      {
        str2 = "D";
      }
      else if (paramString.equalsIgnoreCase("long"))
      {
        str2 = "J";
      }
      else if (paramString.equalsIgnoreCase("float"))
      {
        str2 = "F";
      }
      else if (paramString.equalsIgnoreCase("boolean"))
      {
        str2 = "Z";
      }
      else if (paramString.equalsIgnoreCase("char"))
      {
        str2 = "C";
      }
      else
      {
        String str1 = "L" + paramString.replace(".", "/");
        str2 = str1 + ";";
      }
    }
  }

  private static String a(Method paramMethod)
  {
    String str1 = "(";
    for (Class localClass2 : paramMethod.getParameterTypes())
    {
      String str4 = localClass2.getCanonicalName();
      if (localClass2.isArray())
      {
        str1 = str1 + "[";
        if (str4.endsWith("[]"))
          str4 = str4.substring(0, -2 + str4.length());
      }
      str1 = str1 + a(str4);
    }
    String str2 = str1 + ")";
    Class localClass1 = paramMethod.getReturnType();
    String str3 = localClass1.getCanonicalName();
    if (localClass1.isArray())
    {
      str2 = str2 + "[";
      if (str3.endsWith("[]"))
        str3 = str3.substring(0, -2 + str3.length());
    }
    return str2 + a(str3);
  }

  private static native int registerClassJni(String paramString, Object paramObject, String[] paramArrayOfString1, String[] paramArrayOfString2);

  private static native int unregisterClassJni(Object paramObject);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.NativeRegistration
 * JD-Core Version:    0.6.2
 */