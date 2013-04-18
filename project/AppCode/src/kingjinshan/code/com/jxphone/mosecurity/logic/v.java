package com.jxphone.mosecurity.logic;

import android.content.Context;
import com.ijinshan.kinghelper.a.i;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.logic.a.l;
import com.keniu.security.b.e;
import com.keniu.security.b.r;
import java.util.List;

final class v
  implements l
{
  private final r a;

  public v(Context paramContext)
  {
    this.a = e.e(paramContext);
  }

  public final b a(String paramString, boolean paramBoolean)
  {
    return this.a.a(i.b(paramString), paramBoolean);
  }

  public final List a()
  {
    return this.a.a();
  }

  public final boolean a(String paramString1, String paramString2)
  {
    return this.a.a(paramString1, paramString2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.logic.v
 * JD-Core Version:    0.6.2
 */