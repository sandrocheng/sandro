package com.tencent.tmsecure.module.permission;

public final class PermissionRequestIDs
{
  public static final int R_CALL = 0;
  public static final int R_GET_CELL_LOCATION = 10;
  public static final int R_GET_DEVICE_ID = 7;
  public static final int R_GET_GPS_INFO = 12;
  public static final int R_GET_ICC_SERIALNUMBERl = 6;
  public static final int R_GET_NEIGHTBORING_CELL_LOCATION = 11;
  public static final int R_GET_SUBSCRIBERID = 8;
  public static final int R_NULL = -1;
  public static final int R_PHONE_STATE_LISTEN = 5;
  public static final int R_SEND_SMS = 1;
  public static final int R_SHOW_NOTIFICATION = 14;
  public static final int R_TELEPHONE_TAPPING = 13;
  public static final int R_VISIT_CALL_LOG_DATA = 3;
  public static final int R_VISIT_CONTACT_DATA = 2;
  public static final int R_VISIT_INTERNET = 9;
  public static final int R_VISIT_SMS_DATA = 4;

  public static int getCount()
  {
    return -1 + PermissionRequestIDs.class.getFields().length;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.permission.PermissionRequestIDs
 * JD-Core Version:    0.6.2
 */