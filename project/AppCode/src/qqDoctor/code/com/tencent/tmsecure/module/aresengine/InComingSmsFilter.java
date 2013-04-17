package com.tencent.tmsecure.module.aresengine;

public abstract class InComingSmsFilter extends DataFilter<SmsEntity>
{
  public static final int BLACK_LIST = 4;
  public static final int INTELLIGENT_CHECKING = 64;
  public static final int KEY_WORKDS = 32;
  public static final int LAST_CALLS = 16;
  public static final int MATCH_NULL = -1;
  public static final int REMOVE_PRIVATE_SMS = 1;
  public static final int SPECIAL_SMS = 256;
  public static final int STRANGER_SMS = 128;
  public static final int SYS_CONTACT = 8;
  public static final int WHITE_LIST = 2;

  public abstract void setBlacklistDao(IContactDao<? extends ContactEntity> paramIContactDao);

  public abstract void setEntityConvertor(IEntityConverter paramIEntityConverter);

  public abstract void setIntelligentSmsHandler(IntelligentSmsHandler paramIntelligentSmsHandler);

  public abstract void setKeywordDao(IKeyWordDao paramIKeyWordDao);

  public abstract void setLastCallLogDao(ILastCallLogDao paramILastCallLogDao);

  public abstract void setPhoneDeviceController(IPhoneDeviceController paramIPhoneDeviceController);

  public abstract void setPrivateSmsDao(ISmsDao<? extends SmsEntity> paramISmsDao);

  public abstract void setPrivatelistDao(IContactDao<? extends ContactEntity> paramIContactDao);

  public abstract void setSmsDao(ISmsDao<? extends SmsEntity> paramISmsDao);

  public abstract void setSpecialSmsChecker(ISpecialSmsChecker paramISpecialSmsChecker);

  public abstract void setSysDao(AbsSysDao paramAbsSysDao);

  public abstract void setWhitelistDao(IContactDao<? extends ContactEntity> paramIContactDao);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.InComingSmsFilter
 * JD-Core Version:    0.6.2
 */