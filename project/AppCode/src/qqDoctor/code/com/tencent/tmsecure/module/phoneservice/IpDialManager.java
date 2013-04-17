package com.tencent.tmsecure.module.phoneservice;

import a;
import android.content.BroadcastReceiver;
import android.content.Context;
import btl;
import bxl;
import com.tencent.tmsecure.common.BaseManager;
import java.io.ByteArrayOutputStream;
import java.io.ObjectOutputStream;

public final class IpDialManager extends BaseManager
{
  private bxl a;

  public final void doIpCall(String paramString, BroadcastReceiver paramBroadcastReceiver)
  {
    if (isExpired());
    while (true)
    {
      return;
      if (paramString != null)
        paramBroadcastReceiver.setResultData(paramString);
    }
  }

  public final String getDialPhoneNumber(String paramString)
  {
    int i = 5;
    if (isExpired());
    label8: bxl localbxl;
    do
    {
      return paramString;
      localbxl = this.a;
    }
    while (paramString == null);
    new StringBuilder("Start dealing with ").append(paramString).toString();
    if ((paramString != null) && (paramString.startsWith("+86")));
    for (String str1 = paramString.substring(3); ; str1 = paramString)
    {
      String str2;
      label74: String[] arrayOfString;
      IpDialProvinceCity localIpDialProvinceCity;
      if ((str1 == null) || (str1.length() <= i))
      {
        str2 = str1;
        new StringBuilder("Remove header, it becomes ").append(str2).toString();
        StringBuffer localStringBuffer1 = new StringBuffer();
        StringBuffer localStringBuffer2 = new StringBuffer();
        StringBuffer localStringBuffer3 = new StringBuffer();
        localbxl.c.getLocation(localStringBuffer1, localStringBuffer2, localStringBuffer3, str2);
        arrayOfString = localStringBuffer2.toString().split(" ");
        localIpDialProvinceCity = new IpDialProvinceCity();
        if (arrayOfString.length <= 1)
          break label646;
        localIpDialProvinceCity.setProvince(arrayOfString[0].trim());
        localIpDialProvinceCity.setCity(arrayOfString[1].trim());
        label186: boolean bool1 = localbxl.b.getExcludedAreaList().existed(localIpDialProvinceCity);
        new StringBuilder(String.valueOf(str2)).append(" is {").append(localStringBuffer2.toString()).append("}").toString();
        boolean bool2 = localbxl.b.getExcludedPhoneNumberList().existed(new IpDialPhoneNumber("", str2));
        boolean bool3 = localbxl.c.isYellowPageNumber(str2);
        new StringBuilder("Excluded-Area ").append(bool1).append(", Excluded-Phone ").append(bool2).append(", Yellow-Page ").append(bool3).toString();
        if ((!bool1) && (!bool2) && (!bool3))
          break label661;
        new StringBuilder(String.valueOf(str2)).append(" is in the excluded lists, so change nothing!").toString();
        paramString = str2;
        break;
      }
      if (localbxl.b.a != null)
        i = localbxl.b.a.length();
      String str5 = str1.substring(0, i);
      int j;
      if ("17911".equals(str5))
        j = 1;
      while (true)
      {
        if (j != 0)
        {
          new StringBuilder(String.valueOf(str1)).append("has IP header, remove the header(").append(str1.substring(0, i)).append(")").toString();
          str2 = str1.substring(i);
          break label74;
          if ("17951".equals(str5))
          {
            j = 1;
            continue;
          }
          if ("10193".equals(str5))
          {
            j = 1;
            continue;
          }
          if ("17910".equals(str5))
          {
            j = 1;
            continue;
          }
          if ("12520".equals(str5))
          {
            j = 1;
            continue;
          }
          if ("12583".equals(str5))
          {
            j = 1;
            continue;
          }
          if ("96688".equals(str5))
          {
            j = 1;
            continue;
          }
          if ("17901".equals(str5))
          {
            j = 1;
            continue;
          }
          if ("12593".equals(str5))
          {
            j = 1;
            continue;
          }
          if ("17909".equals(str5))
          {
            j = 1;
            continue;
          }
          if ((localbxl.b.a == null) || (!localbxl.b.a.equals(str5)))
            break label936;
          j = 1;
          continue;
        }
        new StringBuilder(String.valueOf(str1)).append("don't has IP header, go to next step!").toString();
        str2 = str1;
        break label74;
        label646: localIpDialProvinceCity.setProvince(arrayOfString[0].trim());
        break label186;
        label661: localbxl.a();
        switch (localbxl.b.getIpDialMode())
        {
        case 2:
        default:
          break;
        case 0:
          if ((str2 != null) && (str2.length() <= 8))
            new StringBuilder(String.valueOf(str2)).append("'s length less than 8, so do nothing!").toString();
          break;
        case 1:
          paramString = localbxl.a(str2);
          break label8;
          StringBuffer localStringBuffer4 = new StringBuffer();
          StringBuffer localStringBuffer5 = new StringBuffer();
          StringBuffer localStringBuffer6 = new StringBuffer();
          localbxl.c.getLocation(localStringBuffer4, localStringBuffer5, localStringBuffer6, str2);
          String str3 = localStringBuffer5.toString().trim().replace(" ", "");
          String str4 = localbxl.b.getLocalPhoneLocation().getProvince() + localbxl.b.getLocalPhoneLocation().getCity();
          new StringBuilder("LocationTrime{").append(str3).append("} compare localPhone{").append(str4).append("}").toString();
          if (((str3.length() > 0) && (str3.compareTo(str4) == 0)) || (str2.startsWith("400")) || (str2.startsWith("800")))
          {
            paramString = str2;
            break label8;
          }
          paramString = localbxl.a(str2);
          break label8;
          label936: j = 0;
        }
      }
    }
  }

  public final IpDialManagerSetting getIpDialSetting()
  {
    if (isExpired());
    for (IpDialManagerSetting localIpDialManagerSetting = new IpDialManagerSetting(); ; localIpDialManagerSetting = new IpDialManagerSetting(this.a.b))
      return localIpDialManagerSetting;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new bxl();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }

  public final void setIpDialSetting(IpDialManagerSetting paramIpDialManagerSetting)
  {
    if (isExpired());
    while (true)
    {
      return;
      bxl localbxl = this.a;
      if (paramIpDialManagerSetting == null)
        continue;
      try
      {
        localbxl.b.copyFrom(paramIpDialManagerSetting);
        try
        {
          ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
          ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(localByteArrayOutputStream);
          localObjectOutputStream.writeObject(localbxl.b);
          localObjectOutputStream.flush();
          String str = a.d(localByteArrayOutputStream.toByteArray());
          localObjectOutputStream.close();
          localbxl.a.a("ip_dial_setting", str, true);
          localbxl.a();
        }
        catch (Exception localException)
        {
          while (true)
            localException.getMessage();
        }
      }
      finally
      {
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.phoneservice.IpDialManager
 * JD-Core Version:    0.6.2
 */