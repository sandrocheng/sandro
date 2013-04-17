package com.tencent.tmsecure.module.antitheft;

import com.tencent.tmsecure.common.ManagerCreator;

public final class Proguard
{
  public final void callAllMethods()
  {
    AntitheftManager localAntitheftManager = (AntitheftManager)ManagerCreator.getManager(AntitheftManager.class);
    localAntitheftManager.getHelperNumber();
    localAntitheftManager.getPassword();
    localAntitheftManager.handleSmsCommand(null, null, null);
    localAntitheftManager.setHelperNumber(null);
    localAntitheftManager.setPassword(null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.antitheft.Proguard
 * JD-Core Version:    0.6.2
 */