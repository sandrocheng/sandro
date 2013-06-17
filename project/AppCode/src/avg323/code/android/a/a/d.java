package android.a.a;

import java.io.IOException;

class d
{
  public static final void a(e parame, int paramInt)
  {
    int i = parame.b();
    if (i != paramInt)
      throw new IOException("Expected chunk of type 0x" + Integer.toHexString(paramInt) + ", read 0x" + Integer.toHexString(i) + ".");
  }

  public static final void a(e parame, String paramString)
  {
    int i = parame.b();
    if (!Integer.toHexString(i).startsWith(paramString))
      throw new IOException("Expected chunk of type starting with " + paramString + ", read " + Integer.toHexString(i) + ".");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.a.a.d
 * JD-Core Version:    0.6.2
 */