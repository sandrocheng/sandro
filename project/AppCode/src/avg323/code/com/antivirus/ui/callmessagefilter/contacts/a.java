package com.antivirus.ui.callmessagefilter.contacts;

public class a
{
  private com.antivirus.ui.callmessagefilter.b.d a;
  private com.antivirus.ui.callmessagefilter.a.d b;
  private String c;
  private boolean d = false;

  public a(com.antivirus.core.b.b.a parama)
  {
    this.a = com.antivirus.ui.callmessagefilter.b.d.a(parama.a());
    this.b = com.antivirus.ui.callmessagefilter.a.d.a(parama.b());
    if ("null".equals(parama.c()));
    for (this.c = null; ; this.c = parama.c())
      return;
  }

  public a(com.antivirus.ui.callmessagefilter.b.d paramd, com.antivirus.ui.callmessagefilter.a.d paramd1, String paramString)
  {
    if (paramd == null)
    {
      this.a = com.antivirus.ui.callmessagefilter.b.d.a;
      if (paramd1 != null)
        break label54;
      this.b = com.antivirus.ui.callmessagefilter.a.d.a;
      label31: if (!"null".equals(paramString))
        break label62;
    }
    label54: label62: for (this.c = null; ; this.c = paramString)
    {
      return;
      this.a = paramd;
      break;
      this.b = paramd1;
      break label31;
    }
  }

  public a(a parama)
  {
    this(parama.a(), parama.b(), parama.c());
  }

  public com.antivirus.ui.callmessagefilter.b.d a()
  {
    return this.a;
  }

  public void a(com.antivirus.ui.callmessagefilter.a.d paramd)
  {
    this.b = paramd;
  }

  public void a(com.antivirus.ui.callmessagefilter.b.d paramd)
  {
    this.a = paramd;
  }

  public void a(String paramString)
  {
    this.c = paramString;
  }

  public void a(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }

  public com.antivirus.ui.callmessagefilter.a.d b()
  {
    return this.b;
  }

  public String c()
  {
    return this.c;
  }

  public boolean d()
  {
    return this.d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.contacts.a
 * JD-Core Version:    0.6.2
 */