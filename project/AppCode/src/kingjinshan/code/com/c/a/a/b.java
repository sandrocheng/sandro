package com.c.a.a;

import android.content.Context;
import android.util.Log;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public final class b
{
  private q a;

  private b(Context paramContext)
  {
    this(paramContext, Locale.getDefault());
  }

  private b(Context paramContext, Locale paramLocale)
  {
    if (paramLocale == null)
      throw new NullPointerException("locale == null");
    this.a = new q(paramContext, paramLocale);
  }

  private List a(double paramDouble1, double paramDouble2, int paramInt)
  {
    if ((paramDouble1 < -90.0D) || (paramDouble1 > 90.0D))
      throw new IllegalArgumentException("latitude == " + paramDouble1);
    if ((paramDouble2 < -180.0D) || (paramDouble2 > 180.0D))
      throw new IllegalArgumentException("longitude == " + paramDouble2);
    ArrayList localArrayList2;
    try
    {
      q localq = this.a;
      localArrayList2 = new ArrayList();
      if ((n.b) && (paramInt != 0))
      {
        int i = (int)(paramDouble2 * 100000.0D);
        int j = (int)(paramDouble1 * 100000.0D);
        String str1 = "http://wireless.mapbar.com/reverse/reverseGeocoding.json?q=" + o.a(i) + "," + o.a(j) + "&gb=02&ch=GBK&rn=" + paramInt + "&nq=2&format=true";
        ah localah = new ah(localq.a);
        localah.a(str1);
        String str2 = (String)localah.a();
        if (str2 != null)
        {
          List localList = o.a(localq.b, str2);
          if ((localList != null) && (localList.size() > 0))
            localArrayList2.addAll(localList);
        }
        localArrayList1 = localArrayList2;
      }
    }
    catch (Exception localException)
    {
      Log.e("Geocoder", "getFromLocation: got Exception", localException);
      localArrayList1 = null;
    }
    ArrayList localArrayList1 = localArrayList2;
    return localArrayList1;
  }

  private List a(String paramString, int paramInt)
  {
    if (paramString == null)
      throw new IllegalArgumentException("locationName == null");
    try
    {
      List localList2 = this.a.a(paramString, paramInt);
      localList1 = localList2;
      return localList1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        Log.e("Geocoder", "getFromLocationName: got Exception", localException);
        List localList1 = null;
      }
    }
  }

  private List a(String paramString, int paramInt, double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    if (paramString == null)
      throw new IllegalArgumentException("locationName == null");
    if ((paramDouble1 < -90.0D) || (paramDouble1 > 90.0D))
      throw new IllegalArgumentException("lowerLeftLatitude == " + paramDouble1);
    if ((paramDouble2 < -180.0D) || (paramDouble2 > 180.0D))
      throw new IllegalArgumentException("lowerLeftLongitude == " + paramDouble2);
    if ((paramDouble3 < -90.0D) || (paramDouble3 > 90.0D))
      throw new IllegalArgumentException("upperRightLatitude == " + paramDouble3);
    if ((paramDouble4 < -180.0D) || (paramDouble4 > 180.0D))
      throw new IllegalArgumentException("upperRightLongitude == " + paramDouble4);
    if ((paramDouble1 == 0.0D) && (paramDouble2 == 0.0D) && (paramDouble3 == 0.0D) && (paramDouble4 == 0.0D));
    Object localObject;
    try
    {
      localObject = this.a.a(paramString, paramInt);
      break label503;
      q localq = this.a;
      ArrayList localArrayList = new ArrayList();
      if (!n.b)
      {
        localObject = localArrayList;
      }
      else
      {
        int i = (int)(100000.0D * ((paramDouble2 + paramDouble4) / 2.0D));
        int j = (int)(100000.0D * ((paramDouble1 + paramDouble3) / 2.0D));
        int k = Math.max((int)(100000.0D * ((paramDouble4 - paramDouble2) / 2.0D)), (int)(100000.0D * ((paramDouble3 - paramDouble1) / 2.0D)));
        if (k < 500)
          k = 500;
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(q.a()).append("ch=UTF-8&fd=5&rn=").append(paramInt).append("&pn=1&tp=2&cp=").append(o.a(i)).append(",").append(o.a(j)).append("&m=").append(k).append("&q=").append(URLEncoder.encode(paramString, "utf-8"));
        ah localah = new ah(localq.a);
        localah.a(localStringBuilder.toString());
        String str = (String)localah.a();
        if (str != null)
        {
          List localList = o.b(localq.b, str);
          if (localList != null)
            localArrayList.addAll(localList);
        }
        localObject = localArrayList;
      }
    }
    catch (Exception localException)
    {
      Log.e("Geocoder", "getFromLocationName: got Exception", localException);
      localObject = null;
    }
    label503: return localObject;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.c.a.a.b
 * JD-Core Version:    0.6.2
 */