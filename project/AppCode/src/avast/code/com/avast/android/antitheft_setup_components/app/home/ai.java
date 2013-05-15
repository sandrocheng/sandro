package com.avast.android.antitheft_setup_components.app.home;

import android.content.Context;
import android.support.v4.app.Fragment;
import com.avast.android.antitheft_setup_components.app.home.b.b;
import com.avast.android.antitheft_setup_components.app.home.b.c;
import java.util.List;

public class ai extends com.avast.android.generic.ui.b.a
{
  public ai(Context paramContext, Fragment paramFragment)
  {
    super(paramContext, paramFragment);
  }

  public void a(Context paramContext, List paramList, boolean paramBoolean)
  {
    if (com.avast.android.antitheft_setup_components.app.home.b.a.a(paramContext))
      paramList.add(new com.avast.android.antitheft_setup_components.app.home.b.a());
    if (c.a(paramContext))
      paramList.add(new c());
    if (b.a(paramContext))
      paramList.add(new b());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.ai
 * JD-Core Version:    0.6.2
 */