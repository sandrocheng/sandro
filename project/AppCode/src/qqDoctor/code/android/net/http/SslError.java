package android.net.http;

import java.security.cert.X509Certificate;

public class SslError
{
  public static final int SSL_EXPIRED = 1;
  public static final int SSL_IDMISMATCH = 2;
  public static final int SSL_MAX_ERROR = 4;
  public static final int SSL_NOTYETVALID = 0;
  public static final int SSL_UNTRUSTED = 3;
  SslCertificate mCertificate;
  int mErrors;

  public SslError(int paramInt, SslCertificate paramSslCertificate)
  {
    addError(paramInt);
    this.mCertificate = paramSslCertificate;
  }

  public SslError(int paramInt, X509Certificate paramX509Certificate)
  {
    addError(paramInt);
    this.mCertificate = new SslCertificate(paramX509Certificate);
  }

  public boolean addError(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < 4));
    for (boolean bool = true; ; bool = false)
    {
      if (bool)
        this.mErrors |= 1 << paramInt;
      return bool;
    }
  }

  public SslCertificate getCertificate()
  {
    return this.mCertificate;
  }

  public int getPrimaryError()
  {
    if (this.mErrors != 0);
    for (int i = 3; ; i--)
    {
      if (i < 0)
        i = 0;
      while ((this.mErrors & 1 << i) != 0)
        return i;
    }
  }

  public boolean hasError(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < 4))
    {
      bool = true;
      if (bool)
        if ((this.mErrors & 1 << paramInt) == 0)
          break label35;
    }
    label35: for (boolean bool = true; ; bool = false)
    {
      return bool;
      bool = false;
      break;
    }
  }

  public String toString()
  {
    return "primary error: " + getPrimaryError() + " certificate: " + getCertificate();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.net.http.SslError
 * JD-Core Version:    0.6.2
 */