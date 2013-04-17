package com.tencent.tmsecure.module.aresengine;

import bub;
import com.tencent.tmsecure.common.TMSApplication;

public abstract class AresEngineFactor
{
  public abstract IContactDao<? extends ContactEntity> getBlackListDao();

  public abstract ICallLogDao<? extends CallLogEntity> getCallLogDao();

  public abstract IEntityConverter getEntityConverter();

  public abstract IKeyWordDao getKeyWordDao();

  public abstract ILastCallLogDao getLastCallLogDao();

  public IPhoneDeviceController getPhoneDeviceController()
  {
    return new bub(TMSApplication.getApplicaionContext());
  }

  public abstract ICallLogDao<? extends CallLogEntity> getPrivateCallLogDao();

  public abstract IContactDao<? extends ContactEntity> getPrivateListDao();

  public abstract ISmsDao<? extends SmsEntity> getPrivateSmsDao();

  public abstract ISmsDao<? extends SmsEntity> getSmsDao();

  public AbsSysDao getSysDao()
  {
    return DefaultSysDao.getInstance(TMSApplication.getApplicaionContext());
  }

  public abstract IContactDao<? extends ContactEntity> getWhiteListDao();

  public abstract boolean isDualSimDevice();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.AresEngineFactor
 * JD-Core Version:    0.6.2
 */