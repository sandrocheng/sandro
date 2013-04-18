package com.b.a;

import java.io.IOException;

public final class es extends IOException
{
  private static final long a = -1616151763072450476L;

  public es(String paramString)
  {
    super(paramString);
  }

  static es a()
  {
    return new es("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
  }

  static es b()
  {
    return new es("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
  }

  static es c()
  {
    return new es("CodedInputStream encountered a malformed varint.");
  }

  static es d()
  {
    return new es("Protocol message contained an invalid tag (zero).");
  }

  static es e()
  {
    return new es("Protocol message end-group tag did not match expected tag.");
  }

  static es f()
  {
    return new es("Protocol message tag had invalid wire type.");
  }

  static es g()
  {
    return new es("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
  }

  static es h()
  {
    return new es("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.es
 * JD-Core Version:    0.6.2
 */