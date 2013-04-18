package com.c.a.a;

import java.util.Calendar;

public final class u
{
  public String a;
  private String b;
  private v c;
  private Calendar d = null;
  private Calendar e = null;

  public u()
  {
  }

  public u(String paramString)
  {
    String str1 = paramString.trim();
    String[] arrayOfString = str1.split("&");
    if (arrayOfString.length <= 0)
      throw new Exception("API Key 字段数量无效");
    String str2 = arrayOfString[0];
    if (str2 == null)
      throw new Exception("Fingerprint is null");
    this.a = str2;
    if (arrayOfString.length > 1)
    {
      String str3 = arrayOfString[1];
      if (str3 == null)
        throw new Exception("uid 参数无效。");
      String str4 = str3.trim();
      if (str4.length() > 16)
        throw new Exception("uid 参数长度必须小于 16。");
      this.b = str4.trim();
    }
    if (arrayOfString.length > 2)
      this.c = v.a(Integer.parseInt(arrayOfString[2]));
    Calendar localCalendar1;
    if (arrayOfString.length > 3)
    {
      if (!arrayOfString[3].equals(""))
      {
        Calendar localCalendar2 = Calendar.getInstance();
        localCalendar2.setTimeInMillis(Long.parseLong(arrayOfString[3], 16));
        this.d = localCalendar2;
      }
    }
    else if (arrayOfString.length > 4)
    {
      if (arrayOfString[4].equals(""))
        break label252;
      localCalendar1 = Calendar.getInstance();
      localCalendar1.setTimeInMillis(Long.parseLong(arrayOfString[4], 16));
    }
    label252: for (this.e = localCalendar1; ; this.e = null)
    {
      if (str1 != null)
        break label260;
      throw new Exception("key 参数无效。");
      this.d = null;
      break;
    }
    label260: str1.trim();
  }

  public final String toString()
  {
    String str1;
    String str2;
    label20: String str3;
    if (this.d == null)
    {
      str1 = "";
      if (this.e != null)
        break label110;
      str2 = "";
      if (this.b != null)
        break label124;
      str3 = "";
      label30: if (this.c != null)
        break label132;
    }
    label132: for (String str4 = ""; ; str4 = String.valueOf(this.c.ordinal()))
    {
      return this.a + "&" + str3 + "&" + str4 + "&" + str1 + "&" + str2;
      str1 = Long.toHexString(this.d.getTimeInMillis());
      break;
      label110: str2 = Long.toHexString(this.e.getTimeInMillis());
      break label20;
      label124: str3 = this.b;
      break label30;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.c.a.a.u
 * JD-Core Version:    0.6.2
 */