package com.google.zxing.client.result;

public final class EmailAddressParsedResult extends ParsedResult
{
  private final String body;
  private final String emailAddress;
  private final String mailtoURI;
  private final String subject;

  EmailAddressParsedResult(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    super(ParsedResultType.EMAIL_ADDRESS);
    this.emailAddress = paramString1;
    this.subject = paramString2;
    this.body = paramString3;
    this.mailtoURI = paramString4;
  }

  public String getBody()
  {
    return this.body;
  }

  public String getDisplayResult()
  {
    StringBuilder localStringBuilder = new StringBuilder(30);
    maybeAppend(this.emailAddress, localStringBuilder);
    maybeAppend(this.subject, localStringBuilder);
    maybeAppend(this.body, localStringBuilder);
    return localStringBuilder.toString();
  }

  public String getEmailAddress()
  {
    return this.emailAddress;
  }

  public String getMailtoURI()
  {
    return this.mailtoURI;
  }

  public String getSubject()
  {
    return this.subject;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.EmailAddressParsedResult
 * JD-Core Version:    0.6.2
 */