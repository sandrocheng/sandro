package com.tencent.tmsecure.module.netsetting;

public class Rule
{
  public static final int TYPE_HOST = 2;
  public static final int TYPE_UID = 1;
  public static final String VERDICT_ACCEPT = "ACCEPT";
  public static final String VERDICT_DROP = "DROP";
  public static final String VERDICT_QUEUE = "NFQUEUE";
  public String host;
  public String hostVerdict;
  public int type;
  public int uid;
  public String uidMobileVerdict;
  public String uidWifiVerdict;
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.netsetting.Rule
 * JD-Core Version:    0.6.2
 */