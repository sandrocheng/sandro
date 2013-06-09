package org.antivirus.antitheft;

import android.content.Context;
import android.content.Intent;
import android.os.Message;
import java.util.HashMap;
import org.antivirus.AVService;
import org.antivirus.core.Logger;
import org.antivirus.core.a.q;
import org.antivirus.core.a.v;
import org.antivirus.wipe.ai;

public class d extends v
{
  public final boolean a()
  {
    return false;
  }

  public final boolean a(Context paramContext)
  {
    return true;
  }

  public final boolean a(Context paramContext, Message paramMessage)
  {
    return true;
  }

  public final boolean a(Context paramContext, Object paramObject)
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
          Intent localIntent2 = new Intent(paramContext, AVService.class);
          localIntent2.putExtra("__SAC", 100);
          localIntent2.putExtra("body", "FindMyPhone");
          paramContext.startService(localIntent2);
        }
      }
      Object localObject2 = localHashMap.get("wipe");
      if (localObject2 != null)
      {
        Boolean localBoolean2 = (Boolean)localObject2;
        if ((localBoolean2 != null) && (localBoolean2.booleanValue()))
        {
          ai localai = new ai(paramContext);
          ai.a();
          localai.b();
          ai.c();
          localai.d();
          ai.e();
        }
      }
      Object localObject3 = localHashMap.get("lock");
      if (localObject3 != null)
      {
        Boolean localBoolean1 = (Boolean)localObject3;
        if ((localBoolean1 != null) && (localBoolean1.booleanValue()))
        {
          Intent localIntent1 = new Intent(paramContext, AVService.class);
          localIntent1.putExtra("__SAC", 103);
          paramContext.startService(localIntent1);
        }
      }
      bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      while (true)
      {
        Logger.log(localException);
        boolean bool = false;
      }
    }
  }

  public final q b()
  {
    return q.b;
  }

  public final int c()
  {
    return 1032;
  }

  public final String d()
  {
    return "Device.getStatus";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.d
 * JD-Core Version:    0.6.2
 */