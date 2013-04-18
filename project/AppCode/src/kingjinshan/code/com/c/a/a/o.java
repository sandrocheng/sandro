package com.c.a.a;

import android.location.Address;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;
import java.util.Vector;
import org.json.JSONArray;
import org.json.JSONObject;

public final class o
{
  private static Hashtable a = new Hashtable();
  private static Hashtable b = new Hashtable();
  private static String c = "中国";

  static
  {
    a.put("a", "0");
    a.put("b", "1");
    a.put("e", "2");
    a.put("f", "3");
    a.put("n", "4");
    a.put("m", "5");
    a.put("k", "6");
    a.put("l", "7");
    a.put("g", "8");
    a.put("h", "9");
    b.put("0", "a");
    b.put("1", "b");
    b.put("2", "e");
    b.put("3", "f");
    b.put("4", "n");
    b.put("5", "m");
    b.put("6", "k");
    b.put("7", "l");
    b.put("8", "g");
    b.put("9", "h");
  }

  public static int a(String paramString)
  {
    try
    {
      StringBuffer localStringBuffer = new StringBuffer();
      for (int i = 0; i < paramString.length(); i++)
        localStringBuffer.append((String)a.get(String.valueOf(paramString.charAt(i))));
      int k = Integer.parseInt(localStringBuffer.toString());
      j = k;
      return j;
    }
    catch (Exception localException)
    {
      while (true)
        int j = -1;
    }
  }

  public static String a(int paramInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    String str = String.valueOf(paramInt);
    if (str.length() < 8)
    {
      int j = 8 - str.length();
      for (int k = 0; k < j; k++)
        localStringBuffer.append("a");
    }
    for (int i = 0; i < str.length(); i++)
      localStringBuffer.append((String)b.get(String.valueOf(str.charAt(i))));
    return localStringBuffer.toString();
  }

  public static List a(Locale paramLocale, String paramString)
  {
    Object localObject;
    try
    {
      JSONObject localJSONObject1 = new JSONObject(paramString);
      String str1 = localJSONObject1.getString("districtName");
      str2 = localJSONObject1.getString("cityName");
      String str3 = localJSONObject1.getString("provinceName");
      JSONObject localJSONObject2 = localJSONObject1.getJSONObject("poiList");
      if (localJSONObject2.getInt("poiItemCount") == 0)
      {
        localObject = null;
      }
      else
      {
        JSONArray localJSONArray = localJSONObject2.getJSONArray("poiItemList");
        int i = localJSONArray.length();
        StringBuilder localStringBuilder = new StringBuilder();
        if ((str3 != null) && (!"直辖市".equals(str3)) && (str3.trim().length() > 0))
          localStringBuilder.append(str3);
        if ((str2 != null) && (str2.trim().length() > 0))
          localStringBuilder.append(str2);
        if ((str1 != null) && (str1.trim().length() > 0))
          localStringBuilder.append(str1);
        localArrayList = new ArrayList();
        int j = 0;
        if (j < i)
        {
          JSONObject localJSONObject3 = (JSONObject)localJSONArray.get(j);
          localJSONObject3.getString("poiDirection");
          localJSONObject3.getString("poiType");
          localJSONObject3.getString("poiId");
          localJSONObject3.getInt("poiCommentScore");
          localJSONObject3.getString("poiDistance");
          localJSONObject3.getString("poiCity");
          localJSONObject3.getInt("poiCommentCount");
          localJSONObject3.getString("poiDistrict");
          String str4 = localJSONObject3.getString("poiLatLon");
          String str5 = localJSONObject3.getString("poiName");
          String str6 = localJSONObject3.getString("poiAddress");
          localJSONObject3.getString("roadDistance");
          localJSONObject3.getString("roadDirection");
          localJSONObject3.getString("roadLevel");
          str7 = localJSONObject3.getString("roadName");
          localAddress = new Address(paramLocale);
          k = 0 + 1;
          localAddress.setAddressLine(0, c);
          if (localStringBuilder.toString().trim().length() > 0)
          {
            k++;
            localAddress.setAddressLine(1, localStringBuilder.toString());
          }
          if ((str6 != null) && (str6.trim().length() > 0))
            localAddress.setAddressLine(k, str6);
          while (true)
          {
            if ((str5 == null) || (str5.trim().length() <= 0))
              break label638;
            localAddress.setFeatureName(str5);
            localAddress.setCountryName(c);
            localAddress.setCountryCode("CN");
            if ((str3 == null) || ("直辖市".equals(str3)) || (str3.trim().length() <= 0))
              break label664;
            localAddress.setAdminArea(str3);
            localAddress.setLocality(str2);
            if ((str7 != null) && (str7.trim().length() > 0))
              localAddress.setThoroughfare(str7);
            if ((str4 == null) || (str4.indexOf(",") <= 0))
              break label674;
            String[] arrayOfString = str4.split(",");
            localAddress.setLongitude(a(arrayOfString[0]) / 100000.0D);
            localAddress.setLatitude(a(arrayOfString[1]) / 100000.0D);
            localArrayList.add(localAddress);
            j++;
            break;
            if ((str5 == null) || (str5.trim().length() <= 0))
              break label610;
            localAddress.setAddressLine(k, str5);
          }
        }
      }
    }
    catch (Exception localException)
    {
      ArrayList localArrayList;
      label664: label674: 
      while (true)
      {
        String str2;
        String str7;
        Address localAddress;
        int k;
        localException.printStackTrace();
        localObject = null;
        break;
        label610: if ((str7 != null) && (str7.trim().length() > 0))
        {
          localAddress.setAddressLine(k, str7);
          continue;
          label638: if ((str7 != null) && (str7.trim().length() > 0))
          {
            localAddress.setFeatureName(str7);
            continue;
            localAddress.setAdminArea(str2);
            continue;
            localAddress.setLatitude(0.0D);
            localAddress.setLongitude(0.0D);
          }
        }
      }
      localObject = localArrayList;
    }
    return localObject;
  }

  public static Vector a(String paramString1, String paramString2)
  {
    Vector localVector = new Vector();
    String str = paramString1.trim();
    if (!str.startsWith(paramString2))
      str = paramString2 + str;
    if (!str.endsWith(paramString2))
      str = str + paramString2;
    int j;
    for (int i = str.indexOf(paramString2); ; i = j)
    {
      j = str.indexOf(paramString2, i + 1);
      if (j == -1)
        break;
      localVector.addElement(str.substring(i + 1, j));
    }
    return localVector;
  }

  public static Vector a(Vector paramVector)
  {
    Vector localVector1 = new Vector();
    Vector localVector2;
    if (!((String)paramVector.elementAt(0)).equals("$#"))
      localVector2 = localVector1;
    while (true)
    {
      return localVector2;
      try
      {
        int i2 = Integer.parseInt((String)paramVector.elementAt(1));
        i = i2;
        if (i < 0)
          localVector2 = localVector1;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        int i;
        while (true)
          i = 0;
        int j = Integer.parseInt((String)paramVector.elementAt(4));
        int k = 5;
        for (int m = 0; m <= i; m++)
        {
          String[] arrayOfString = new String[j];
          int n = 0;
          while (n < j)
          {
            int i1 = k + 1;
            arrayOfString[n] = ((String)paramVector.elementAt(k));
            n++;
            k = i1;
          }
          localVector1.addElement(arrayOfString);
        }
        localVector2 = localVector1;
      }
    }
  }

  public static List b(Locale paramLocale, String paramString)
  {
    String[] arrayOfString1 = paramString.split("\\|");
    Object localObject;
    if ((arrayOfString1 == null) || (arrayOfString1.length < 6))
      localObject = null;
    int i;
    int j;
    while (true)
    {
      return localObject;
      if (!arrayOfString1[1].equals("$#"))
        localObject = null;
      else
        try
        {
          i = Integer.parseInt(arrayOfString1[2]);
          j = Integer.parseInt(arrayOfString1[5]);
          if (i >= 0)
            break;
          localObject = null;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          localObject = null;
        }
    }
    int k = j + 5;
    ArrayList localArrayList = new ArrayList();
    int m = k;
    int n = 0;
    label95: if (n < i);
    while (true)
    {
      Address localAddress;
      String str6;
      try
      {
        localAddress = new Address(paramLocale);
        if (n > 1)
          break label768;
        i1 = j * n;
        m += i1;
        String str1 = null;
        if (j > 0)
        {
          int i17 = m + 1;
          int i18 = arrayOfString1.length;
          str1 = null;
          if (i17 < i18)
            str1 = arrayOfString1[(m + 1)];
        }
        String str2 = null;
        if (j >= 3)
        {
          int i15 = m + 3;
          int i16 = arrayOfString1.length;
          str2 = null;
          if (i15 < i16)
            str2 = arrayOfString1[(m + 3)];
        }
        String str3 = null;
        if (j >= 4)
        {
          int i13 = m + 4;
          int i14 = arrayOfString1.length;
          str3 = null;
          if (i13 < i14)
            str3 = arrayOfString1[(m + 4)];
        }
        String str4 = null;
        if (j >= 6)
        {
          int i11 = m + 6;
          int i12 = arrayOfString1.length;
          str4 = null;
          if (i11 < i12)
            str4 = arrayOfString1[(m + 6)];
        }
        String str5 = null;
        if (j >= 10)
        {
          int i9 = m + 10;
          int i10 = arrayOfString1.length;
          str5 = null;
          if (i9 < i10)
            str5 = arrayOfString1[(m + 10)];
        }
        str6 = null;
        if (j >= 11)
        {
          int i7 = m + 11;
          int i8 = arrayOfString1.length;
          str6 = null;
          if (i7 < i8)
            str6 = arrayOfString1[(m + 11)];
        }
        String str7 = null;
        if (j >= 12)
        {
          int i5 = m + 12;
          int i6 = arrayOfString1.length;
          str7 = null;
          if (i5 < i6)
            str7 = arrayOfString1[(m + 12)];
        }
        int i2 = 0 + 1;
        localAddress.setAddressLine(0, "中国");
        StringBuilder localStringBuilder = new StringBuilder();
        if ((str5 != null) && (!"直辖市".equals(str5)) && (str5.trim().length() > 0))
          localStringBuilder.append(str5);
        if ((str6 != null) && (str6.trim().length() > 0))
          localStringBuilder.append(str6);
        if ((str7 != null) && (str7.trim().length() > 0))
          localStringBuilder.append(str7);
        if (localStringBuilder.toString().trim().length() > 0)
        {
          i2++;
          localAddress.setAddressLine(1, localStringBuilder.toString());
        }
        int i4 = i2;
        if ((str2 != null) && (str2.trim().length() > 0))
        {
          localAddress.setAddressLine(i4, str2);
          if ((str5 != null) && (!"直辖市".equals(str5)) && (str5.trim().length() > 0))
          {
            localAddress.setAdminArea(str5);
            localAddress.setLocality(str6);
            localAddress.setCountryName("中国");
            localAddress.setCountryCode("CN");
            localAddress.setFeatureName(str1);
            if ((str3 != null) && (str3.trim().length() > 0))
              localAddress.setPhone(str3);
            if ((str4 != null) && (str4.indexOf(",") > 0))
            {
              String[] arrayOfString2 = str4.split(",");
              localAddress.setLongitude(a(arrayOfString2[0]) / 100000.0D);
              localAddress.setLatitude(a(arrayOfString2[1]) / 100000.0D);
            }
            localArrayList.add(localAddress);
            break label762;
          }
        }
        else
        {
          localAddress.setAddressLine(i4, str1);
          continue;
        }
      }
      catch (Exception localException)
      {
        int i3 = m;
        localException.printStackTrace();
        m = i3;
      }
      localAddress.setAdminArea(str6);
      continue;
      localObject = localArrayList;
      break;
      label762: n++;
      break label95;
      label768: int i1 = j;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.c.a.a.o
 * JD-Core Version:    0.6.2
 */