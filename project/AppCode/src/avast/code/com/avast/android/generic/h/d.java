package com.avast.android.generic.h;

import android.content.Context;
import android.os.Bundle;
import com.avast.android.generic.util.f;
import com.avast.android.generic.util.g;
import com.avast.android.generic.util.t;

public class d extends l
{
  public void a(Context paramContext, String paramString, Bundle paramBundle)
  {
    t.a("AvastGeneric", paramContext, "Sending C2DM registration message...");
    try
    {
      g.a(paramContext, true);
      label13: t.a("AvastGeneric", paramContext, "C2DM registration message sent...");
      return;
    }
    catch (f localf)
    {
      break label13;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.h.d
 * JD-Core Version:    0.6.2
 */