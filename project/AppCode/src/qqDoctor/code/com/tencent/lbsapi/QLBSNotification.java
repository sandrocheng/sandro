package com.tencent.lbsapi;

import com.tencent.lbsapi.model.QLBSPoiInfoBatch;
import com.tencent.lbsapi.model.QLBSPosition;

public abstract interface QLBSNotification
{
  public static final int RESPONSE_HTTP_ERROR = -1;
  public static final int RESPONSE_LBS_AUTH_FAIL = -5;
  public static final int RESPONSE_LBS_EXCEPTION = -3;
  public static final int RESPONSE_LBS_INPUT_ERROR = -6;
  public static final int RESPONSE_LBS_POSITION_FAIL = -4;
  public static final int RESPONSE_UNKNOWN_ERROR = -7;
  public static final int RESPONSE_WUP_ERROR = -2;
  public static final int RESULT_LOCATION_ERROR = 0;
  public static final int RESULT_LOCATION_SUCCESS = 1;

  public abstract void onLocationNotification(int paramInt);

  public abstract void onResponseError(int paramInt1, int paramInt2, String paramString);

  public abstract void onResponseGetNearPoiList(int paramInt, QLBSPoiInfoBatch paramQLBSPoiInfoBatch);

  public abstract void onResponseGetPosition(int paramInt, QLBSPosition paramQLBSPosition);

  public abstract void onResponseSearchNearPoiList(int paramInt, QLBSPoiInfoBatch paramQLBSPoiInfoBatch);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.lbsapi.QLBSNotification
 * JD-Core Version:    0.6.2
 */