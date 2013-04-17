import QQPIM.ReqHeader;
import android.content.Context;

public final class da
{
  private static String a = "";
  private static String b = "";
  private static String c = "";
  private static boolean d = false;

  public static ReqHeader a()
  {
    ReqHeader localReqHeader = new ReqHeader();
    localReqHeader.setPlatformid((byte)1);
    String str1 = bl.f().g();
    if (str1 == null)
      str1 = "";
    localReqHeader.setLc(str1);
    String str2 = bl.f().a(ca.a.h);
    if (str2 == null)
      str2 = "";
    localReqHeader.setImei(str2);
    String str3 = bl.f().a(ca.a.i);
    if (str3 == null)
      str3 = "";
    localReqHeader.setImsi(str3);
    String str4 = bl.f().a(ca.a.j);
    if (str4 == null)
      str4 = "";
    localReqHeader.setVersion(str4);
    localReqHeader.setMobileno("");
    return localReqHeader;
  }

  public static ReqHeader a(String paramString)
  {
    if (paramString == null);
    ReqHeader localReqHeader;
    for (Object localObject = null; ; localObject = localReqHeader)
    {
      return localObject;
      localReqHeader = new ReqHeader();
      localReqHeader.setPlatformid((byte)1);
      String str1 = bl.f().g();
      if (str1 == null)
        str1 = "";
      localReqHeader.setLc(str1);
      String str2 = bl.f().a(ca.a.h);
      if (str2 == null)
        str2 = "";
      localReqHeader.setImei(str2);
      String str3 = bl.f().a(ca.a.i);
      if (str3 == null)
        str3 = "";
      localReqHeader.setImsi(str3);
      String str4 = bl.f().a(ca.a.j);
      if (str4 == null)
        str4 = "";
      localReqHeader.setVersion(str4);
      String str5 = paramString.replace(",", "");
      if (str5 == null)
        str5 = "";
      localReqHeader.setMobileno(str5);
    }
  }

  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    if ((paramContext == null) || (paramString1 == null) || (paramString2 == null) || (paramString1.length() <= 0) || (paramString2.length() <= 0));
    while (true)
    {
      return;
      d = true;
    }
  }

  public static void a(boolean paramBoolean)
  {
    d = false;
  }

  public static String b()
  {
    return a;
  }

  public static void b(String paramString)
  {
    a = null;
    a = new String(paramString);
  }

  public static String c()
  {
    return b;
  }

  public static void c(String paramString)
  {
    b = null;
    b = new String(paramString);
  }

  public static String d()
  {
    return c;
  }

  public static void d(String paramString)
  {
    c = null;
    c = new String(paramString);
  }

  public static boolean e()
  {
    return d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     da
 * JD-Core Version:    0.6.2
 */