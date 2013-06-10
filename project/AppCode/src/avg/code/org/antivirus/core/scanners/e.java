package org.antivirus.core.scanners;

import java.io.Serializable;

public final class e
  implements Serializable
{
  public String a;
  public String b;
  public String c;
  public f d;
  public String e;

  public e(String paramString1, String paramString2, String paramString3, f paramf, String paramString4)
  {
    if (paramString1 == null)
      paramString1 = "0000000000000000000000000000000000000000";
    this.a = paramString1;
    if (paramString2 == null)
      paramString2 = "0000000000000000000000000000000000000000";
    this.b = paramString2;
    if (paramString3 == null)
      paramString3 = "0000000000000000000000000000000000000000";
    this.c = paramString3;
    if (paramf == null)
      paramf = f.e;
    this.d = paramf;
    if (paramString4 == null)
      paramString4 = "0";
    this.e = paramString4;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.scanners.e
 * JD-Core Version:    0.6.2
 */