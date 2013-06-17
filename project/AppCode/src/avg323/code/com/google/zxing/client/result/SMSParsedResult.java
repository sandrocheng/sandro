package com.google.zxing.client.result;

public final class SMSParsedResult extends ParsedResult
{
  private final String body;
  private final String[] numbers;
  private final String subject;
  private final String[] vias;

  public SMSParsedResult(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    super(ParsedResultType.SMS);
    this.numbers = new String[] { paramString1 };
    this.vias = new String[] { paramString2 };
    this.subject = paramString3;
    this.body = paramString4;
  }

  public SMSParsedResult(String[] paramArrayOfString1, String[] paramArrayOfString2, String paramString1, String paramString2)
  {
    super(ParsedResultType.SMS);
    this.numbers = paramArrayOfString1;
    this.vias = paramArrayOfString2;
    this.subject = paramString1;
    this.body = paramString2;
  }

  public String getBody()
  {
    return this.body;
  }

  public String getDisplayResult()
  {
    StringBuilder localStringBuilder = new StringBuilder(100);
    maybeAppend(this.numbers, localStringBuilder);
    maybeAppend(this.subject, localStringBuilder);
    maybeAppend(this.body, localStringBuilder);
    return localStringBuilder.toString();
  }

  public String[] getNumbers()
  {
    return this.numbers;
  }

  public String getSMSURI()
  {
    int i = 1;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("sms:");
    int j = 0;
    int k = i;
    int m;
    if (j >= this.numbers.length)
    {
      if (this.body == null)
        break label196;
      m = i;
      label43: if (this.subject == null)
        break label202;
    }
    while (true)
    {
      if ((m != 0) || (i != 0))
      {
        localStringBuilder.append('?');
        if (m != 0)
        {
          localStringBuilder.append("body=");
          localStringBuilder.append(this.body);
        }
        if (i != 0)
        {
          if (m != 0)
            localStringBuilder.append('&');
          localStringBuilder.append("subject=");
          localStringBuilder.append(this.subject);
        }
      }
      return localStringBuilder.toString();
      if (k != 0)
        k = 0;
      while (true)
      {
        localStringBuilder.append(this.numbers[j]);
        if ((this.vias != null) && (this.vias[j] != null))
        {
          localStringBuilder.append(";via=");
          localStringBuilder.append(this.vias[j]);
        }
        j++;
        break;
        localStringBuilder.append(',');
      }
      label196: m = 0;
      break label43;
      label202: i = 0;
    }
  }

  public String getSubject()
  {
    return this.subject;
  }

  public String[] getVias()
  {
    return this.vias;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.SMSParsedResult
 * JD-Core Version:    0.6.2
 */