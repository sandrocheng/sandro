package com.avast.android.generic.internet.c;

public enum h
{
  static
  {
    h[] arrayOfh = new h[8];
    arrayOfh[0] = a;
    arrayOfh[1] = b;
    arrayOfh[2] = c;
    arrayOfh[3] = d;
    arrayOfh[4] = e;
    arrayOfh[5] = f;
    arrayOfh[6] = g;
    arrayOfh[7] = h;
  }

  public static h a(String paramString)
  {
    h localh;
    if ("Error:illegal_argument_exception".equals(paramString))
      localh = a;
    while (true)
    {
      return localh;
      if ("Error:invalid_request_type".equals(paramString))
        localh = b;
      else if ("Error:password_invalid".equals(paramString))
        localh = c;
      else if ("Error:invalid_email".equals(paramString))
        localh = d;
      else if ("Error:invalid_credentials".equals(paramString))
        localh = e;
      else if ("Error:internal_server_error".equals(paramString))
        localh = f;
      else if ("Error:email_already_used".equals(paramString))
        localh = g;
      else
        localh = h;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.h
 * JD-Core Version:    0.6.2
 */