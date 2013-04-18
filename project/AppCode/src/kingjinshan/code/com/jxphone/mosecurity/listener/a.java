package com.jxphone.mosecurity.listener;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import com.jxphone.mosecurity.logic.h;

public final class a extends ContentObserver
{
  private Context a;

  private a(Context paramContext, Handler paramHandler)
  {
    super(paramHandler);
    this.a = paramContext;
  }

  public final void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    if (paramBoolean);
    while (true)
    {
      return;
      h.b(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.listener.a
 * JD-Core Version:    0.6.2
 */