package com.avast.android.mobilesecurity.app.filter.core;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import com.avast.android.generic.util.m;
import java.util.List;

final class h
  implements k
{
  h(String paramString, Context paramContext)
  {
  }

  public void a()
  {
    m.b("MessageBlockerHelper", "Message with uuid: " + this.a + " not found.");
  }

  public void a(List paramList)
  {
    if ((paramList != null) && (!paramList.isEmpty()))
      this.b.getContentResolver().delete(ContentUris.withAppendedId(u.a, ((Long)paramList.get(0)).longValue()), null, null);
  }

  public void b()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.h
 * JD-Core Version:    0.6.2
 */