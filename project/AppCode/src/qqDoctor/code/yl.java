import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import com.tencent.qqpimsecure.service.PrivacySafeSuspensionWindow;
import com.tencent.qqpimsecure.service.PrivacySafeSuspensionWindow.PrivacySafeSuspensionView;

public final class yl extends Handler
{
  public yl(PrivacySafeSuspensionWindow paramPrivacySafeSuspensionWindow, Looper paramLooper)
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
    }
    while (true)
    {
      return;
      PrivacySafeSuspensionWindow localPrivacySafeSuspensionWindow2 = this.a;
      int i = paramMessage.arg1;
      int j = paramMessage.arg2;
      if (localPrivacySafeSuspensionWindow2.e == null)
        localPrivacySafeSuspensionWindow2.e = new PrivacySafeSuspensionWindow.PrivacySafeSuspensionView(localPrivacySafeSuspensionWindow2, localPrivacySafeSuspensionWindow2.b);
      PrivacySafeSuspensionWindow.PrivacySafeSuspensionView.a(localPrivacySafeSuspensionWindow2.e, i, j);
      if (localPrivacySafeSuspensionWindow2.d == null)
      {
        WindowManager.LayoutParams localLayoutParams1 = new WindowManager.LayoutParams();
        localLayoutParams1.gravity = 53;
        localLayoutParams1.type = 2003;
        localLayoutParams1.format = 1;
        localLayoutParams1.flags = (0x8 | localLayoutParams1.flags);
        localLayoutParams1.width = -2;
        localLayoutParams1.height = -2;
        WindowManager.LayoutParams localLayoutParams2 = new WindowManager.LayoutParams();
        localLayoutParams2.copyFrom(localLayoutParams1);
        localLayoutParams2.alpha = 1.0F;
        localPrivacySafeSuspensionWindow2.d = localLayoutParams2;
        localPrivacySafeSuspensionWindow2.d.y = 60;
      }
      localPrivacySafeSuspensionWindow2.c.addView(localPrivacySafeSuspensionWindow2.e, localPrivacySafeSuspensionWindow2.d);
      localPrivacySafeSuspensionWindow2.f = true;
      continue;
      PrivacySafeSuspensionWindow localPrivacySafeSuspensionWindow1 = this.a;
      if (localPrivacySafeSuspensionWindow1.e != null)
      {
        localPrivacySafeSuspensionWindow1.c.removeView(localPrivacySafeSuspensionWindow1.e);
        localPrivacySafeSuspensionWindow1.e = null;
        localPrivacySafeSuspensionWindow1.f = false;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     yl
 * JD-Core Version:    0.6.2
 */