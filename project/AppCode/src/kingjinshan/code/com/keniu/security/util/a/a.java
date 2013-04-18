package com.keniu.security.util.a;

import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class a
{
  private String a;
  private List b = new ArrayList();
  private final String c = "#";
  private final String d = "=";
  private final String e = " ";
  private final String f = "[";
  private final String g = "]";
  private String h;
  private String i;
  private HashMap j;

  public a(String paramString)
  {
    try
    {
      this.i = paramString;
      this.a = e.a(this.i);
      this.j = new HashMap();
      if ((this.a != null) && (this.a.length() != 0))
        c();
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  private long a(String paramString1, String paramString2, long paramLong)
  {
    d locald = b(paramString1);
    long l1;
    if (locald == null)
      l1 = paramLong;
    while (true)
    {
      return l1;
      String str = locald.a(paramString2, null);
      if (str == null)
        l1 = paramLong;
      else
        try
        {
          long l2 = Long.parseLong(str.trim());
          l1 = l2;
        }
        catch (Exception localException)
        {
          l1 = paramLong;
        }
    }
  }

  private void a()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (this.h != null)
      localStringBuffer.append(this.h.trim() + "\r\n");
    for (int k = 0; k < this.b.size(); k++)
      localStringBuffer.append(((d)this.b.get(k)).toString().trim() + "\r\n" + "\r\n");
    String str1 = this.i;
    String str2 = localStringBuffer.toString();
    try
    {
      new File(str1).createNewFile();
      FileOutputStream localFileOutputStream = new FileOutputStream(str1);
      PrintWriter localPrintWriter = new PrintWriter(new File(str1));
      localPrintWriter.write(str2);
      localFileOutputStream.close();
      localPrintWriter.close();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  private void a(String paramString)
  {
    if ((paramString != null) && (paramString != ""))
    {
      Integer localInteger1 = (Integer)this.j.get(paramString);
      if (localInteger1 != null)
      {
        this.b.remove(localInteger1.intValue());
        this.j.clear();
        for (Integer localInteger2 = Integer.valueOf(0); localInteger2.intValue() < this.b.size(); localInteger2 = Integer.valueOf(1 + localInteger2.intValue()))
          this.j.put(((d)this.b.get(localInteger2.intValue())).a(), localInteger2);
      }
    }
  }

  private void a(String paramString1, String paramString2)
  {
    a(paramString1, paramString2, null, null);
  }

  private void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    Object localObject = b(paramString1);
    if (localObject == null)
    {
      if ((paramString3 == null) || (paramString3.length() == 0))
        return;
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append("#" + paramString4 + "\r\n");
      localStringBuffer.append(paramString2 + " " + "=" + " " + paramString3 + "\r\n");
      d locald = new d(paramString1, localStringBuffer.toString());
      Integer localInteger = Integer.valueOf(this.b.size());
      this.j.put(paramString1, localInteger);
      this.b.add(locald);
      localObject = locald;
    }
    while (true)
    {
      System.out.println(localObject);
      break;
      ((d)localObject).a(paramString2, paramString3, paramString4);
    }
  }

  private d b(String paramString)
  {
    if (this.j.get(paramString) == null);
    int k;
    for (d locald = null; ; locald = (d)this.b.get(k))
    {
      return locald;
      k = ((Integer)this.j.get(paramString)).intValue();
    }
  }

  private String[] b()
  {
    String[] arrayOfString = new String[this.b.size()];
    for (int k = 0; k < this.b.size(); k++)
      arrayOfString[k] = ((d)this.b.get(k)).a();
    return arrayOfString;
  }

  private void c()
  {
    int k = 0;
    Matcher localMatcher = Pattern.compile("(\r\n)+[\\s]*\\[").matcher(this.a);
    int m = 0;
    while (localMatcher.find())
    {
      m = localMatcher.end() - 1;
      c(this.a.substring(k, m));
      k = m;
    }
    c(this.a.substring(m));
  }

  private void c(String paramString)
  {
    if (paramString.length() == 0);
    int k;
    while (true)
    {
      return;
      k = paramString.indexOf("[");
      if (k == 0)
        break;
      this.h = paramString;
    }
    int m = paramString.indexOf("]");
    String str1 = paramString.substring(k + 1, m);
    if (m + 3 < paramString.length());
    for (String str2 = paramString.substring(m + 3); ; str2 = "")
    {
      d locald = new d(str1, str2);
      Integer localInteger = Integer.valueOf(this.b.size());
      this.j.put(str1, localInteger);
      this.b.add(locald);
      break;
    }
  }

  private static void d()
  {
    a locala = new a("C:\\1.ini");
    System.out.println(locala.a("SECTION 2", "version", ""));
    locala.a("SET RNCTRACE", "18", null, null);
    locala.a("SECTION 4", "key", "value", "new addx");
    StringBuffer localStringBuffer = new StringBuffer();
    if (locala.h != null)
      localStringBuffer.append(locala.h.trim() + "\r\n");
    for (int k = 0; k < locala.b.size(); k++)
      localStringBuffer.append(((d)locala.b.get(k)).toString().trim() + "\r\n" + "\r\n");
    String str1 = locala.i;
    String str2 = localStringBuffer.toString();
    try
    {
      new File(str1).createNewFile();
      FileOutputStream localFileOutputStream = new FileOutputStream(str1);
      PrintWriter localPrintWriter = new PrintWriter(new File(str1));
      localPrintWriter.write(str2);
      localFileOutputStream.close();
      localPrintWriter.close();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final String a(String paramString1, String paramString2, String paramString3)
  {
    d locald = b(paramString1);
    if (locald == null);
    for (String str = paramString3; ; str = locald.a(paramString2, paramString3))
      return str;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.a.a
 * JD-Core Version:    0.6.2
 */