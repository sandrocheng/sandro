package com.antivirus.ui.callmessagefilter.contacts;

public class g extends com.antivirus.ui.callmessagefilter.d
  implements Comparable
{
  private a a = null;

  public g(String paramString1, String paramString2, long paramLong, String paramString3)
  {
    super(paramString1, null, paramString2, k.a, paramLong, paramString3);
  }

  public int a(g paramg)
  {
    return a().compareTo(paramg.a());
  }

  public void a(a parama)
  {
    this.a = parama;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1 = true;
    if (super.equals(paramObject));
    while (true)
    {
      return bool1;
      if ((paramObject instanceof g))
      {
        boolean bool2 = a().equals(((g)paramObject).a());
        boolean bool3 = f().replaceAll("-", "").equals(((g)paramObject).a().replaceAll("-", ""));
        if ((bool2) && (bool3));
        for (boolean bool4 = bool1; ; bool4 = false)
        {
          bool1 = bool4;
          break;
        }
      }
      bool1 = false;
    }
  }

  public com.antivirus.ui.callmessagefilter.b.d i()
  {
    if (this.a == null);
    for (com.antivirus.ui.callmessagefilter.b.d locald = com.antivirus.ui.callmessagefilter.b.d.a; ; locald = this.a.a())
      return locald;
  }

  public com.antivirus.ui.callmessagefilter.a.d j()
  {
    if (this.a == null);
    for (com.antivirus.ui.callmessagefilter.a.d locald = com.antivirus.ui.callmessagefilter.a.d.a; ; locald = this.a.b())
      return locald;
  }

  public a k()
  {
    return this.a;
  }

  public String toString()
  {
    return "ContactsData{blackWhiteListData=" + this.a + super.toString() + '}';
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.contacts.g
 * JD-Core Version:    0.6.2
 */