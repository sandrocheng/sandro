package com.avast.android.mobilesecurity.app.firewall.a;

import android.database.Cursor;
import android.net.Uri;
import com.avast.android.generic.util.x;
import com.avast.android.mobilesecurity.b.a;

public class c extends a
{
  private b b;

  public c(x paramx, Cursor paramCursor, Uri paramUri, b paramb)
  {
    super(paramx, paramCursor, paramUri);
    this.b = paramb;
  }

  public boolean a(String paramString, int paramInt)
  {
    this.b.a();
    return super.a(paramString, paramInt);
  }

  public boolean a(String paramString1, String paramString2)
  {
    this.b.a();
    return super.a(paramString1, paramString2);
  }

  public boolean a(String paramString, boolean paramBoolean)
  {
    this.b.a();
    return super.a(paramString, paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.a.c
 * JD-Core Version:    0.6.2
 */