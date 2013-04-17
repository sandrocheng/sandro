package com.tencent.lbsapi;

import LBSAPIProtocol.Cell;
import android.content.Context;
import com.tencent.lbsapi.core.i;
import com.tencent.lbsapi.model.QLBSGPSInfo;
import java.util.ArrayList;

public class QLBSService
{
  public static final int POI_CATEGORY_ALL = 0;
  public static final int POI_CATEGORY_BANK = 250000;
  public static final int POI_CATEGORY_BEAUTY = 170000;
  public static final int POI_CATEGORY_CAR = 190000;
  public static final int POI_CATEGORY_CULTURE = 230000;
  public static final int POI_CATEGORY_ESTATE = 280000;
  public static final int POI_CATEGORY_FOOD = 100000;
  public static final int POI_CATEGORY_HEALTH = 200000;
  public static final int POI_CATEGORY_HOTEL = 210000;
  public static final int POI_CATEGORY_INFRA = 270000;
  public static final int POI_CATEGORY_PLACE = 260000;
  public static final int POI_CATEGORY_POI_COM = 110000;
  public static final int POI_CATEGORY_POI_ENTM = 160000;
  public static final int POI_CATEGORY_POI_ORG = 120000;
  public static final int POI_CATEGORY_POI_SERVICE = 140000;
  public static final int POI_CATEGORY_POI_SHOPPING = 130000;
  public static final int POI_CATEGORY_SCHOOL = 240000;
  public static final int POI_CATEGORY_SPORT = 180000;
  public static final int POI_CATEGORY_TOUR = 220000;
  public static final int POI_SORT_BY_DISTANCE = 0;
  public static final int POI_SORT_BY_HOT = 1;
  public static final int UIN_EMAIL = 1;
  public static final int UIN_MOBILE = 2;
  public static final int UIN_QQ;
  private i a = null;

  public QLBSService(Context paramContext, QLBSNotification paramQLBSNotification, String paramString1, String paramString2, String paramString3)
  {
    this.a = new i(paramContext, paramQLBSNotification, paramString1, paramString2, paramString3);
  }

  public float getAccuracy()
  {
    return this.a.j();
  }

  public int getCarrierId()
  {
    return this.a.f();
  }

  public Cell getCell()
  {
    return this.a.g();
  }

  public byte[] getDeviceData()
  {
    return this.a.d();
  }

  public QLBSGPSInfo getGps()
  {
    return this.a.h();
  }

  public boolean hasAccuracy()
  {
    return this.a.i();
  }

  public boolean isGpsEnabled()
  {
    return this.a.e();
  }

  public void release()
  {
    if (this.a != null)
    {
      this.a.a();
      this.a = null;
    }
  }

  public boolean requestGetAddressFromCustomizedGPS(int paramInt1, String paramString, int paramInt2, int paramInt3, int paramInt4)
  {
    return this.a.a(paramInt1, paramInt3, paramInt4, paramString, paramInt2);
  }

  public boolean requestGetCurrentPosition(int paramInt1, String paramString, int paramInt2)
  {
    return this.a.a(paramInt1, paramString, paramInt2);
  }

  public boolean requestGetNearPoiList(int paramInt1, String paramString, int paramInt2, int paramInt3, int paramInt4, int paramInt5, ArrayList paramArrayList, int paramInt6)
  {
    return this.a.a(paramInt1, paramString, paramInt2, paramInt3, paramInt4, paramInt5, paramArrayList, paramInt6);
  }

  public boolean requestGetPoiListFromCustomizedGPS(int paramInt1, String paramString, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, ArrayList paramArrayList, int paramInt8)
  {
    return this.a.a(paramInt1, paramInt3, paramInt4, paramString, paramInt2, paramInt5, paramInt6, paramInt7, paramArrayList, paramInt8);
  }

  public boolean requestSearchNearPoiList(int paramInt1, String paramString1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, String paramString2, ArrayList paramArrayList)
  {
    return this.a.a(paramInt1, paramString1, paramInt2, paramInt3, paramInt4, paramInt5, paramString2, paramArrayList);
  }

  public void setGpsEnabled(boolean paramBoolean)
  {
    this.a.a(paramBoolean);
  }

  public void setGpsTimeout(int paramInt)
  {
    this.a.b(paramInt);
  }

  public void setTimeoutSeconds(int paramInt)
  {
    this.a.a(paramInt);
  }

  public void startLocation()
  {
    this.a.b();
  }

  public void stopLocation()
  {
    this.a.c();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.lbsapi.QLBSService
 * JD-Core Version:    0.6.2
 */