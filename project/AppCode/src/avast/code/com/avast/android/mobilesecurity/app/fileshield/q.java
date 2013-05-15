package com.avast.android.mobilesecurity.app.fileshield;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.avast.android.mobilesecurity.t;
import java.util.List;
import java.util.concurrent.BlockingQueue;

final class q extends Handler
{
  private String b;

  public q(FileShieldService paramFileShieldService, Looper paramLooper)
  {
    super(paramLooper);
  }

  public void handleMessage(Message paramMessage)
  {
    try
    {
      switch (paramMessage.what)
      {
      case 1:
        if ((FileShieldService.c(this.a).ad()) && (!FileShieldService.d(this.a)))
        {
          this.b = ((String)paramMessage.obj);
          FileShieldService.e(this.a).a(this.b, 128L);
        }
        break;
      case 0:
        if (FileShieldService.c(this.a).ae())
        {
          this.b = ((String)paramMessage.obj);
          FileShieldService.e(this.a).a(this.b, 256L);
        }
        break;
      case 2:
        this.b = ((String)paramMessage.obj);
        l locall = new l(this.a, this.b);
        FileShieldService.b(this.a).offer(locall);
        break;
      case 3:
        this.b = ((String)paramMessage.obj);
        m localm = new m(this.a, this.b);
        FileShieldService.b(this.a).offer(localm);
        break;
      case 4:
        List localList = (List)paramMessage.obj;
        if ((!localList.isEmpty()) && (localList.size() == 2))
        {
          s locals = new s(this.a, (String)localList.get(0), (String)localList.get(1));
          FileShieldService.b(this.a).offer(locals);
        }
        break;
      }
      label310: return;
    }
    catch (NullPointerException localNullPointerException)
    {
      break label310;
    }
    catch (ClassCastException localClassCastException)
    {
      break label310;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      break label310;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.fileshield.q
 * JD-Core Version:    0.6.2
 */