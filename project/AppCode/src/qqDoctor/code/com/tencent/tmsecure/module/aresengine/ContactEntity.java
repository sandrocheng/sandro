package com.tencent.tmsecure.module.aresengine;

public class ContactEntity extends TelephonyEntity
{
  public boolean enableForCalling;
  public boolean enableForSMS;
  public boolean isSimContact;

  public ContactEntity()
  {
  }

  public ContactEntity(ContactEntity paramContactEntity)
  {
    super(paramContactEntity);
    this.isSimContact = paramContactEntity.isSimContact;
    this.enableForCalling = paramContactEntity.enableForCalling;
    this.enableForSMS = paramContactEntity.enableForSMS;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.ContactEntity
 * JD-Core Version:    0.6.2
 */