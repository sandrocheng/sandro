package com.b.a;

import java.io.ByteArrayOutputStream;
import java.io.FilterOutputStream;

public final class l extends FilterOutputStream
{
  private final ByteArrayOutputStream a;

  private l(ByteArrayOutputStream paramByteArrayOutputStream, byte paramByte)
  {
    super(paramByteArrayOutputStream);
    this.a = paramByteArrayOutputStream;
  }

  private i a()
  {
    return new i(this.a.toByteArray());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.l
 * JD-Core Version:    0.6.2
 */