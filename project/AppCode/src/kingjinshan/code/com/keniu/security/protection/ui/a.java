package com.keniu.security.protection.ui;

import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

public final class a extends DefaultHandler
{
  private StringBuilder a;
  private boolean b = false;
  private boolean c = false;
  private String d;

  public final String a()
  {
    return this.d;
  }

  public final void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    super.characters(paramArrayOfChar, paramInt1, paramInt2);
    if ((this.c) && (!this.b) && (paramArrayOfChar[paramInt1] != '\n') && (paramArrayOfChar[paramInt1] != ' '))
      this.a.append(paramArrayOfChar, paramInt1, paramInt2);
  }

  public final void endElement(String paramString1, String paramString2, String paramString3)
  {
    super.endElement(paramString1, paramString2, paramString3);
    if (!this.b)
    {
      if (paramString2.equalsIgnoreCase("address"))
      {
        this.d = this.a.toString().split("邮政编码")[0];
        this.b = true;
      }
      if (this.a != null)
        this.a.setLength(0);
    }
  }

  public final void startDocument()
  {
    super.startDocument();
    this.a = new StringBuilder();
  }

  public final void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
  {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString2.equalsIgnoreCase("address"))
      this.c = true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.a
 * JD-Core Version:    0.6.2
 */