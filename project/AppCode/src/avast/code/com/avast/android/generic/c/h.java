package com.avast.android.generic.c;

import java.security.MessageDigest;
import java.security.PrivateKey;
import javax.crypto.Cipher;

public class h
{
  private byte[] a = { 48, 33 };
  private byte[] b = { 48, 9, 6, 5, 43, 14, 3, 2, 26, 5, 0 };
  private byte[] c = { 4, 20 };
  private Cipher d = Cipher.getInstance("RSA/ECB/PKCS1Padding");
  private MessageDigest e = MessageDigest.getInstance("SHA1");

  public void a(PrivateKey paramPrivateKey)
  {
    this.d.init(1, paramPrivateKey);
  }

  public void a(byte[] paramArrayOfByte)
  {
    this.e.update(paramArrayOfByte);
  }

  public byte[] a()
  {
    this.d.update(this.a);
    this.d.update(this.b);
    this.d.update(this.c);
    this.d.update(this.e.digest());
    return this.d.doFinal();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.c.h
 * JD-Core Version:    0.6.2
 */