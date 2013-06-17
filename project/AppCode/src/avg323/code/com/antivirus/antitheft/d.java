package com.antivirus.antitheft;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import com.antivirus.AVService;
import com.antivirus.wipe.ak;
import com.avg.toolkit.b.e;
import com.avg.toolkit.b.g;
import com.avg.toolkit.f.a;
import java.util.HashMap;

public class d extends g
{
  public e a()
  {
    return e.b;
  }

  public boolean a(Context paramContext)
  {
    return false;
  }

  public boolean a(Context paramContext, Message paramMessage)
  {
    return true;
  }

  public boolean a(Context paramContext, Object paramObject)
  {
    try
    {
      HashMap localHashMap = (HashMap)paramObject;
      Object localObject1 = localHashMap.get("lost");
      if (localObject1 != null)
      {
        Boolean localBoolean3 = (Boolean)localObject1;
        if ((localBoolean3 != null) && (localBoolean3.booleanValue()))
        {
          Bundle localBundle = new Bundle();
          localBundle.putString("body", "FindMyPhone");
          AVService.a(paramContext, 9000, 9001, localBundle);
        }
      }
      Object localObject2 = localHashMap.get("wipe");
      if (localObject2 != null)
      {
        Boolean localBoolean2 = (Boolean)localObject2;
        if ((localBoolean2 != null) && (localBoolean2.booleanValue()))
        {
          ak localak = new ak(paramContext);
          ak.a();
          localak.g();
          localak.h();
          localak.i();
          ak.j();
        }
      }
      Object localObject3 = localHashMap.get("lock");
      if (localObject3 != null)
      {
        Boolean localBoolean1 = (Boolean)localObject3;
        if ((localBoolean1 != null) && (localBoolean1.booleanValue()))
          AVService.a(paramContext, 9000, 9002, null);
      }
      bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      while (true)
      {
        a.a(localException);
        boolean bool = false;
      }
    }
  }

  public boolean b(Context paramContext)
  {
    return true;
  }

  public int b_()
  {
    return 9003;
  }

  public String c()
  {
    return "Device.getStatus";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.d
 * JD-Core Version:    0.6.2
 */