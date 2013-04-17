package com.tencent.tmsecure.module.aresengine;

public abstract class SystemCalllogFilter extends DataFilter<CallLogEntity>
{
  public static final int BLACK_LIST = 4;
  public static final int LAST_CALLS = 16;
  public static final int LAST_OPERATION = 256;
  public static final int NOTIFY_ADDING_BLACK_LIST = 64;
  public static final int NOTIFY_SHORT_CALL = 128;
  public static final int REMOVE_PRIVATE_CALL = 1;
  public static final int STRANGER_CALL = 32;
  public static final int SYS_CONTACT = 8;
  public static final int WHITE_LIST = 2;

  public abstract void setBlacklistDao(IContactDao<? extends ContactEntity> paramIContactDao);

  public abstract void setCalllogDao(ICallLogDao<? extends CallLogEntity> paramICallLogDao);

  public abstract void setEntityConvertor(IEntityConverter paramIEntityConverter);

  public abstract void setLastCallLogDao(ILastCallLogDao paramILastCallLogDao);

  public abstract void setPhoneDeviceController(IPhoneDeviceController paramIPhoneDeviceController);

  public abstract void setPrivateCalllogDao(ICallLogDao<? extends CallLogEntity> paramICallLogDao);

  public abstract void setPrivatelistDao(IContactDao<? extends ContactEntity> paramIContactDao);

  public abstract void setShortCallChecker(IShortCallChecker paramIShortCallChecker);

  public abstract void setSysDao(AbsSysDao paramAbsSysDao);

  public abstract void setWhitelistDao(IContactDao<? extends ContactEntity> paramIContactDao);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.SystemCalllogFilter
 * JD-Core Version:    0.6.2
 */