package com.tencent.tmsecure.module.phoneservice;

import android.content.Context;
import bxn;
import com.tencent.tmsecure.common.BaseManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class UsefulNumberManager extends BaseManager
{
  private bxn a;

  public final List<UsefulNumberEntity> getAllYellowNumbers()
  {
    if (isExpired());
    for (Object localObject = new ArrayList(); ; localObject = this.a.a())
      return localObject;
  }

  public final HashMap<String, ArrayList<UsefulNumberEntity>> getAllYellowNumbersWithGroup()
  {
    if (isExpired());
    for (HashMap localHashMap = new HashMap(); ; localHashMap = this.a.a)
      return localHashMap;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new bxn();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.phoneservice.UsefulNumberManager
 * JD-Core Version:    0.6.2
 */