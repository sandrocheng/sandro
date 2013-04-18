package com.keniu.security.f;

import java.io.FileOutputStream;
import java.io.IOException;

final class x
  implements af
{
  x(w paramw, FileOutputStream paramFileOutputStream)
  {
  }

  public final int a(byte[] paramArrayOfByte, int paramInt)
  {
    try
    {
      this.a.write(paramArrayOfByte, 0, paramInt);
      y localy1 = w.a(this.b);
      localy1.c = (paramInt + localy1.c);
      y localy2 = w.a(this.b);
      localy2.e = (paramInt + localy2.e);
      this.b.k();
      if (this.b.g())
      {
        i = 2;
        return i;
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        int i = 6;
        continue;
        i = 0;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.f.x
 * JD-Core Version:    0.6.2
 */