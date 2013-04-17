import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import com.tencent.qqpimsecure.service.ToastSuspensionWindow;
import com.tencent.qqpimsecure.service.ToastSuspensionWindow.ToastSuspensionView;

public final class acd extends Handler
{
  public acd(ToastSuspensionWindow paramToastSuspensionWindow, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return;
      ToastSuspensionWindow localToastSuspensionWindow4 = this.a;
      int i = paramMessage.arg1;
      int j = paramMessage.arg2;
      if (localToastSuspensionWindow4.f == null)
        localToastSuspensionWindow4.f = new ToastSuspensionWindow.ToastSuspensionView(localToastSuspensionWindow4, localToastSuspensionWindow4.b);
      localToastSuspensionWindow4.f.setInfo(i, j);
      if (localToastSuspensionWindow4.e == null)
      {
        WindowManager.LayoutParams localLayoutParams1 = new WindowManager.LayoutParams();
        localLayoutParams1.gravity = 51;
        localLayoutParams1.type = 2003;
        localLayoutParams1.format = 1;
        localLayoutParams1.flags = (0x8 | localLayoutParams1.flags);
        localLayoutParams1.width = -2;
        localLayoutParams1.height = -2;
        WindowManager.LayoutParams localLayoutParams2 = new WindowManager.LayoutParams();
        localLayoutParams2.copyFrom(localLayoutParams1);
        localLayoutParams2.alpha = 1.0F;
        localToastSuspensionWindow4.e = localLayoutParams2;
        localToastSuspensionWindow4.e.x = 15;
        localToastSuspensionWindow4.e.y = 40;
      }
      if (zo.a().k())
        localToastSuspensionWindow4.f.setVisibility(0);
      while (true)
      {
        localToastSuspensionWindow4.c.addView(localToastSuspensionWindow4.f, localToastSuspensionWindow4.e);
        localToastSuspensionWindow4.g = true;
        abv.a().a(localToastSuspensionWindow4.i);
        break;
        localToastSuspensionWindow4.f.setVisibility(8);
      }
      ToastSuspensionWindow localToastSuspensionWindow3 = this.a;
      if (localToastSuspensionWindow3.f != null)
      {
        localToastSuspensionWindow3.f.setVisibility(0);
        localToastSuspensionWindow3.c.updateViewLayout(localToastSuspensionWindow3.f, localToastSuspensionWindow3.e);
        localToastSuspensionWindow3.g = true;
        continue;
        ToastSuspensionWindow localToastSuspensionWindow2 = this.a;
        if (localToastSuspensionWindow2.f != null)
        {
          localToastSuspensionWindow2.f.setVisibility(8);
          localToastSuspensionWindow2.c.updateViewLayout(localToastSuspensionWindow2.f, localToastSuspensionWindow2.e);
          localToastSuspensionWindow2.g = false;
          continue;
          ToastSuspensionWindow localToastSuspensionWindow1 = this.a;
          if (localToastSuspensionWindow1.f != null)
          {
            localToastSuspensionWindow1.c.removeView(localToastSuspensionWindow1.f);
            localToastSuspensionWindow1.f = null;
            localToastSuspensionWindow1.g = false;
          }
          abv.a().b(localToastSuspensionWindow1.i);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     acd
 * JD-Core Version:    0.6.2
 */