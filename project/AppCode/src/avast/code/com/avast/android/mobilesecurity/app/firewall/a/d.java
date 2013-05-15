package com.avast.android.mobilesecurity.app.firewall.a;

import android.content.ContentResolver;
import android.net.Uri;
import com.avast.android.generic.util.x;

public class d extends com.avast.android.generic.d.d
{
  private b c;

  public d(ContentResolver paramContentResolver, Uri paramUri, x paramx, b paramb)
  {
    super(paramContentResolver, paramUri, paramx);
    this.c = paramb;
  }

  public d(ContentResolver paramContentResolver, Uri paramUri, b paramb)
  {
    super(paramContentResolver, paramUri);
    this.c = paramb;
  }

  public boolean a(String paramString, int paramInt)
  {
    this.c.a();
    return super.a(paramString, paramInt);
  }

  public boolean a(String paramString1, String paramString2)
  {
    this.c.a();
    return super.a(paramString1, paramString2);
  }

  public boolean a(String paramString, boolean paramBoolean)
  {
    this.c.a();
    return super.a(paramString, paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.a.d
 * JD-Core Version:    0.6.2
 */