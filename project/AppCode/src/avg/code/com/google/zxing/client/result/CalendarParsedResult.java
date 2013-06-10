package com.google.zxing.client.result;

public final class CalendarParsedResult extends ParsedResult
{
  private final String attendee;
  private final String description;
  private final String end;
  private final double latitude;
  private final String location;
  private final double longitude;
  private final String start;
  private final String summary;

  public CalendarParsedResult(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    this(paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, (0.0D / 0.0D), (0.0D / 0.0D));
  }

  public CalendarParsedResult(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, double paramDouble1, double paramDouble2)
  {
    super(ParsedResultType.CALENDAR);
    validateDate(paramString2);
    this.summary = paramString1;
    this.start = paramString2;
    if (paramString3 != null)
      validateDate(paramString3);
    for (this.end = paramString3; ; this.end = null)
    {
      this.location = paramString4;
      this.attendee = paramString5;
      this.description = paramString6;
      this.latitude = paramDouble1;
      this.longitude = paramDouble2;
      return;
    }
  }

  private static void validateDate(CharSequence paramCharSequence)
  {
    if (paramCharSequence != null)
    {
      int i = paramCharSequence.length();
      if ((i != 8) && (i != 15) && (i != 16))
        throw new IllegalArgumentException();
      for (int j = 0; ; j++)
      {
        if (j >= 8)
        {
          if (i <= 8)
            return;
          if (paramCharSequence.charAt(8) == 'T')
            break;
          throw new IllegalArgumentException();
        }
        if (!Character.isDigit(paramCharSequence.charAt(j)))
          throw new IllegalArgumentException();
      }
      for (int k = 9; ; k++)
      {
        if (k >= 15)
        {
          if ((i != 16) || (paramCharSequence.charAt(15) == 'Z'))
            break;
          throw new IllegalArgumentException();
        }
        if (!Character.isDigit(paramCharSequence.charAt(k)))
          throw new IllegalArgumentException();
      }
    }
  }

  public final String getAttendee()
  {
    return this.attendee;
  }

  public final String getDescription()
  {
    return this.description;
  }

  public final String getDisplayResult()
  {
    StringBuilder localStringBuilder = new StringBuilder(100);
    maybeAppend(this.summary, localStringBuilder);
    maybeAppend(this.start, localStringBuilder);
    maybeAppend(this.end, localStringBuilder);
    maybeAppend(this.location, localStringBuilder);
    maybeAppend(this.attendee, localStringBuilder);
    maybeAppend(this.description, localStringBuilder);
    return localStringBuilder.toString();
  }

  public final String getEnd()
  {
    return this.end;
  }

  public final double getLatitude()
  {
    return this.latitude;
  }

  public final String getLocation()
  {
    return this.location;
  }

  public final double getLongitude()
  {
    return this.longitude;
  }

  public final String getStart()
  {
    return this.start;
  }

  public final String getSummary()
  {
    return this.summary;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.CalendarParsedResult
 * JD-Core Version:    0.6.2
 */