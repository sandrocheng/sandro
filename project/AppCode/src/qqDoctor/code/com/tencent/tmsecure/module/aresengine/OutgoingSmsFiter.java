package com.tencent.tmsecure.module.aresengine;

public abstract class OutgoingSmsFiter extends DataFilter<SmsEntity>
{
  public static final int REMOVE_PRIVATE_SMS = 1;

  public abstract void setEntityConvertor(IEntityConverter paramIEntityConverter);

  public abstract void setPrivateListDao(IContactDao<? extends ContactEntity> paramIContactDao);

  public abstract void setPrivateSmsDao(ISmsDao<? extends SmsEntity> paramISmsDao);

  public abstract void setSystDao(AbsSysDao paramAbsSysDao);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.OutgoingSmsFiter
 * JD-Core Version:    0.6.2
 */