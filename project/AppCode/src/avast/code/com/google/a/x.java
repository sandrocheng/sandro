package com.google.a;

import java.io.IOException;

public class x extends IOException
{
  public x(String paramString)
  {
    super(paramString);
  }

  static x a()
  {
    return new x("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
  }

  static x b()
  {
    return new x("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
  }

  static x c()
  {
    return new x("CodedInputStream encountered a malformed varint.");
  }

  static x d()
  {
    return new x("Protocol message contained an invalid tag (zero).");
  }

  static x e()
  {
    return new x("Protocol message end-group tag did not match expected tag.");
  }

  static x f()
  {
    return new x("Protocol message tag had invalid wire type.");
  }

  static x g()
  {
    return new x("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
  }

  static x h()
  {
    return new x("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.x
 * JD-Core Version:    0.6.2
 */