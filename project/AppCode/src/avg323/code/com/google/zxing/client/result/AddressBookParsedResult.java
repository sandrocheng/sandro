package com.google.zxing.client.result;

public final class AddressBookParsedResult extends ParsedResult
{
  private final String[] addressTypes;
  private final String[] addresses;
  private final String birthday;
  private final String[] emailTypes;
  private final String[] emails;
  private final String instantMessenger;
  private final String[] names;
  private final String note;
  private final String org;
  private final String[] phoneNumbers;
  private final String[] phoneTypes;
  private final String pronunciation;
  private final String title;
  private final String url;

  public AddressBookParsedResult(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String[] paramArrayOfString3, String[] paramArrayOfString4, String[] paramArrayOfString5, String paramString2, String paramString3, String[] paramArrayOfString6, String[] paramArrayOfString7, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    super(ParsedResultType.ADDRESSBOOK);
    this.names = paramArrayOfString1;
    this.pronunciation = paramString1;
    this.phoneNumbers = paramArrayOfString2;
    this.phoneTypes = paramArrayOfString3;
    this.emails = paramArrayOfString4;
    this.emailTypes = paramArrayOfString5;
    this.instantMessenger = paramString2;
    this.note = paramString3;
    this.addresses = paramArrayOfString6;
    this.addressTypes = paramArrayOfString7;
    this.org = paramString4;
    this.birthday = paramString5;
    this.title = paramString6;
    this.url = paramString7;
  }

  public String[] getAddressTypes()
  {
    return this.addressTypes;
  }

  public String[] getAddresses()
  {
    return this.addresses;
  }

  public String getBirthday()
  {
    return this.birthday;
  }

  public String getDisplayResult()
  {
    StringBuilder localStringBuilder = new StringBuilder(100);
    maybeAppend(this.names, localStringBuilder);
    maybeAppend(this.pronunciation, localStringBuilder);
    maybeAppend(this.title, localStringBuilder);
    maybeAppend(this.org, localStringBuilder);
    maybeAppend(this.addresses, localStringBuilder);
    maybeAppend(this.phoneNumbers, localStringBuilder);
    maybeAppend(this.emails, localStringBuilder);
    maybeAppend(this.instantMessenger, localStringBuilder);
    maybeAppend(this.url, localStringBuilder);
    maybeAppend(this.birthday, localStringBuilder);
    maybeAppend(this.note, localStringBuilder);
    return localStringBuilder.toString();
  }

  public String[] getEmailTypes()
  {
    return this.emailTypes;
  }

  public String[] getEmails()
  {
    return this.emails;
  }

  public String getInstantMessenger()
  {
    return this.instantMessenger;
  }

  public String[] getNames()
  {
    return this.names;
  }

  public String getNote()
  {
    return this.note;
  }

  public String getOrg()
  {
    return this.org;
  }

  public String[] getPhoneNumbers()
  {
    return this.phoneNumbers;
  }

  public String[] getPhoneTypes()
  {
    return this.phoneTypes;
  }

  public String getPronunciation()
  {
    return this.pronunciation;
  }

  public String getTitle()
  {
    return this.title;
  }

  public String getURL()
  {
    return this.url;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.AddressBookParsedResult
 * JD-Core Version:    0.6.2
 */