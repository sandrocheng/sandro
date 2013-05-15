package com.avast.android.mobilesecurity.ui;

import java.util.ArrayList;
import java.util.List;

public class a
{
  public static String a(List paramList)
  {
    if (paramList == null);
    byte[] arrayOfByte;
    for (String str = ""; ; str = new String(arrayOfByte))
    {
      return str;
      int i = paramList.size();
      arrayOfByte = new byte[i];
      for (int j = 0; j < i; j++)
      {
        c localc = (c)paramList.get(j);
        arrayOfByte[j] = ((byte)(3 * localc.a() + localc.b()));
      }
    }
  }

  public static List a(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    byte[] arrayOfByte = paramString.getBytes();
    for (int i = 0; i < arrayOfByte.length; i++)
    {
      int j = arrayOfByte[i];
      localArrayList.add(c.a(j / 3, j % 3));
    }
    return localArrayList;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.a
 * JD-Core Version:    0.6.2
 */