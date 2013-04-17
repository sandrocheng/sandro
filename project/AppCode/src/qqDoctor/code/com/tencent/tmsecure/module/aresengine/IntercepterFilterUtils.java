package com.tencent.tmsecure.module.aresengine;

import com.tencent.tmsecure.common.ManagerCreator;

public final class IntercepterFilterUtils
{
  public static final int INTERCEPTER_MODE_ACCEPTED_ONLY_WHITELIST = 2;
  public static final int INTERCEPTER_MODE_REJECTED_ONLY_BLACKLIST = 1;
  public static final int INTERCEPTER_MODE_STANDARD;

  public static void setIntercepterMode(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      AresEngineManager localAresEngineManager3 = (AresEngineManager)ManagerCreator.getManager(AresEngineManager.class);
      DataFilter localDataFilter9 = localAresEngineManager3.findIntercepter("incoming_sms").dataFilter();
      FilterConfig localFilterConfig17 = localDataFilter9.getConfig();
      FilterConfig localFilterConfig18 = localDataFilter9.defalutFilterConfig();
      if (localFilterConfig17 != null)
        localFilterConfig18.set(1, localFilterConfig17.get(1));
      localDataFilter9.setConfig(localFilterConfig18);
      DataFilter localDataFilter10 = localAresEngineManager3.findIntercepter("outing_sms").dataFilter();
      FilterConfig localFilterConfig19 = localDataFilter10.getConfig();
      FilterConfig localFilterConfig20 = localDataFilter10.defalutFilterConfig();
      if (localFilterConfig19 != null)
        localFilterConfig20.set(1, localFilterConfig19.get(1));
      localDataFilter10.setConfig(localFilterConfig20);
      DataFilter localDataFilter11 = localAresEngineManager3.findIntercepter("incoming_call").dataFilter();
      FilterConfig localFilterConfig21 = localDataFilter11.getConfig();
      FilterConfig localFilterConfig22 = localDataFilter11.defalutFilterConfig();
      if (localFilterConfig21 != null)
        localFilterConfig22.set(1, localFilterConfig21.get(1));
      localDataFilter11.setConfig(localFilterConfig22);
      DataFilter localDataFilter12 = localAresEngineManager3.findIntercepter("system_call").dataFilter();
      FilterConfig localFilterConfig23 = localDataFilter12.getConfig();
      FilterConfig localFilterConfig24 = localDataFilter12.defalutFilterConfig();
      if (localFilterConfig23 != null)
        localFilterConfig24.set(1, localFilterConfig23.get(1));
      localDataFilter12.setConfig(localFilterConfig24);
      continue;
      AresEngineManager localAresEngineManager2 = (AresEngineManager)ManagerCreator.getManager(AresEngineManager.class);
      DataFilter localDataFilter5 = localAresEngineManager2.findIntercepter("incoming_sms").dataFilter();
      FilterConfig localFilterConfig9 = localDataFilter5.getConfig();
      FilterConfig localFilterConfig10 = localDataFilter5.defalutFilterConfig();
      if (localFilterConfig9 != null)
        localFilterConfig10.set(1, localFilterConfig9.get(1));
      localFilterConfig10.set(2, 3);
      localFilterConfig10.set(4, 1);
      localFilterConfig10.set(8, 3);
      localFilterConfig10.set(16, 3);
      localFilterConfig10.set(32, 2);
      localFilterConfig10.set(64, 3);
      localFilterConfig10.set(128, 3);
      localDataFilter5.setConfig(localFilterConfig10);
      DataFilter localDataFilter6 = localAresEngineManager2.findIntercepter("outing_sms").dataFilter();
      FilterConfig localFilterConfig11 = localDataFilter6.getConfig();
      FilterConfig localFilterConfig12 = localDataFilter6.defalutFilterConfig();
      if (localFilterConfig11 != null)
        localFilterConfig12.set(1, localFilterConfig11.get(1));
      localDataFilter6.setConfig(localFilterConfig12);
      DataFilter localDataFilter7 = localAresEngineManager2.findIntercepter("incoming_call").dataFilter();
      FilterConfig localFilterConfig13 = localDataFilter7.getConfig();
      FilterConfig localFilterConfig14 = localDataFilter7.defalutFilterConfig();
      if (localFilterConfig13 != null)
        localFilterConfig14.set(1, localFilterConfig13.get(1));
      localFilterConfig14.set(2, 3);
      localFilterConfig14.set(4, 1);
      localFilterConfig14.set(8, 3);
      localFilterConfig14.set(16, 3);
      localFilterConfig14.set(32, 3);
      localDataFilter7.setConfig(localFilterConfig14);
      DataFilter localDataFilter8 = localAresEngineManager2.findIntercepter("system_call").dataFilter();
      FilterConfig localFilterConfig15 = localDataFilter8.getConfig();
      FilterConfig localFilterConfig16 = localDataFilter8.defalutFilterConfig();
      if (localFilterConfig15 != null)
        localFilterConfig16.set(1, localFilterConfig15.get(1));
      localFilterConfig16.set(2, 3);
      localFilterConfig16.set(4, 1);
      localFilterConfig16.set(8, 3);
      localFilterConfig16.set(16, 3);
      localFilterConfig16.set(32, 0);
      localFilterConfig16.set(64, 3);
      localFilterConfig16.set(128, 3);
      localFilterConfig16.set(256, 2);
      localDataFilter8.setConfig(localFilterConfig16);
      continue;
      AresEngineManager localAresEngineManager1 = (AresEngineManager)ManagerCreator.getManager(AresEngineManager.class);
      DataFilter localDataFilter1 = localAresEngineManager1.findIntercepter("incoming_sms").dataFilter();
      FilterConfig localFilterConfig1 = localDataFilter1.getConfig();
      FilterConfig localFilterConfig2 = localDataFilter1.defalutFilterConfig();
      if (localFilterConfig1 != null)
        localFilterConfig2.set(1, localFilterConfig1.get(1));
      localFilterConfig2.set(2, 0);
      localFilterConfig2.set(4, 3);
      localFilterConfig2.set(8, 3);
      localFilterConfig2.set(16, 3);
      localFilterConfig2.set(32, 3);
      localFilterConfig2.set(64, 3);
      localFilterConfig2.set(128, 1);
      localDataFilter1.setConfig(localFilterConfig2);
      DataFilter localDataFilter2 = localAresEngineManager1.findIntercepter("outing_sms").dataFilter();
      FilterConfig localFilterConfig3 = localDataFilter2.getConfig();
      FilterConfig localFilterConfig4 = localDataFilter2.defalutFilterConfig();
      if (localFilterConfig3 != null)
        localFilterConfig4.set(1, localFilterConfig3.get(1));
      localDataFilter2.setConfig(localFilterConfig4);
      DataFilter localDataFilter3 = localAresEngineManager1.findIntercepter("incoming_call").dataFilter();
      FilterConfig localFilterConfig5 = localDataFilter3.getConfig();
      FilterConfig localFilterConfig6 = localDataFilter3.defalutFilterConfig();
      if (localFilterConfig5 != null)
        localFilterConfig6.set(1, localFilterConfig5.get(1));
      localFilterConfig6.set(2, 0);
      localFilterConfig6.set(4, 3);
      localFilterConfig6.set(8, 3);
      localFilterConfig6.set(16, 3);
      localFilterConfig6.set(32, 1);
      localDataFilter3.setConfig(localFilterConfig6);
      DataFilter localDataFilter4 = localAresEngineManager1.findIntercepter("system_call").dataFilter();
      FilterConfig localFilterConfig7 = localDataFilter4.getConfig();
      FilterConfig localFilterConfig8 = localDataFilter4.defalutFilterConfig();
      if (localFilterConfig7 != null)
        localFilterConfig8.set(1, localFilterConfig7.get(1));
      localFilterConfig8.set(2, 0);
      localFilterConfig8.set(4, 3);
      localFilterConfig8.set(8, 3);
      localFilterConfig8.set(16, 3);
      localFilterConfig8.set(32, 1);
      localFilterConfig8.set(64, 3);
      localFilterConfig8.set(128, 3);
      localFilterConfig8.set(256, 2);
      localDataFilter4.setConfig(localFilterConfig8);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.IntercepterFilterUtils
 * JD-Core Version:    0.6.2
 */