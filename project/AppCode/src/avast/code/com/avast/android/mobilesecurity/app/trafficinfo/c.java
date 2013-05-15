package com.avast.android.mobilesecurity.app.trafficinfo;

import com.avast.android.generic.util.t;

public class c
{
  public e a = e.a;
  public e b = e.a;
  public f c = f.a;
  public int d = -1;

  private String a()
  {
    String str;
    switch (this.d)
    {
    default:
      str = "UNKNOWN";
    case 7:
    case 8:
    case 9:
    case 0:
    case 4:
    case 5:
    case 2:
    case 3:
    case 1:
    case 6:
    }
    while (true)
    {
      return str;
      str = "BLUETOOTH";
      continue;
      str = "DUMMY";
      continue;
      str = "ETHERNET";
      continue;
      str = "MOBILE";
      continue;
      str = "MOBILE_DUN";
      continue;
      str = "MOBILE_HIPRI";
      continue;
      str = "MOBILE_MMS";
      continue;
      str = "MOBILE_SUPL";
      continue;
      str = "WIFI";
      continue;
      str = "WIMAX";
    }
  }

  public void a(String paramString)
  {
    t.a(paramString, "Connected: " + this.a + ", roaming: " + this.b + ", type: " + this.c + ", internal type: " + a());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.trafficinfo.c
 * JD-Core Version:    0.6.2
 */