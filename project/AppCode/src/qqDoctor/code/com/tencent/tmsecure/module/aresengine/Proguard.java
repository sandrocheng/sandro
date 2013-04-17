package com.tencent.tmsecure.module.aresengine;

import com.tencent.tmsecure.common.ManagerCreator;

public final class Proguard
{
  public final void callAllMethods()
  {
    AresEngineManager localAresEngineManager = (AresEngineManager)ManagerCreator.getManager(AresEngineManager.class);
    localAresEngineManager.addIntercepter(null);
    localAresEngineManager.findIntercepter(null);
    localAresEngineManager.getAresEngineFactor();
    localAresEngineManager.setAresEngineFactor(null);
    localAresEngineManager.intercepters();
    localAresEngineManager.getIntelligentSmsChecker();
    DataIntercepterBuilder.createInComingCallIntercepterBuilder();
    DataIntercepterBuilder.createInComingSmsIntercepterBuilder();
    DataIntercepterBuilder.createOutgoingSmsIntercepterBuilder();
    DataIntercepterBuilder.createSystemCallLogIntercepterBuilder();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.Proguard
 * JD-Core Version:    0.6.2
 */