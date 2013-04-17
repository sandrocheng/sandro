package com.tencent.tmsecure.module.aresengine;

import com.tencent.tmsecure.common.BaseEntity;

public abstract class TelephonyEntity extends BaseEntity
{
  public String name;
  public String phonenum;

  public TelephonyEntity()
  {
  }

  public TelephonyEntity(TelephonyEntity paramTelephonyEntity)
  {
    this.id = paramTelephonyEntity.id;
    this.phonenum = paramTelephonyEntity.phonenum;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.TelephonyEntity
 * JD-Core Version:    0.6.2
 */