import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.HorizontalScrollView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;

final class azn extends Handler
{
  azn(azj paramazj)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
    case 0:
    case 4:
    case 2:
    case 3:
    case 1:
    case 5:
    }
    while (true)
    {
      return;
      NetworkInfoEntity localNetworkInfoEntity2 = (NetworkInfoEntity)paramMessage.obj;
      if (azj.b(this.a))
        azj.a(this.a, localNetworkInfoEntity2);
      while (true)
      {
        azj.c(this.a);
        Message localMessage2 = obtainMessage(2);
        localMessage2.arg1 = 0;
        sendMessage(localMessage2);
        break;
        azj.b(this.a, localNetworkInfoEntity2);
      }
      NetworkInfoEntity localNetworkInfoEntity1 = (NetworkInfoEntity)paramMessage.obj;
      azj.c(this.a, localNetworkInfoEntity1);
      continue;
      if (azj.d(this.a))
        if (azj.e(this.a).getWidth() > 0)
        {
          azj.f(this.a);
          azj.g(this.a);
        }
        else
        {
          Message localMessage1 = obtainMessage(2);
          localMessage1.arg1 += localMessage1.arg1;
          if (localMessage1.arg1 < 3)
          {
            sendMessageDelayed(localMessage1, 1000L);
            continue;
            removeMessages(3);
            azj.h(this.a);
            continue;
            Bundle localBundle = paramMessage.getData();
            if (localBundle != null)
            {
              float f = localBundle.getFloat("refrash_process");
              if ((f >= 0.0F) && (f <= 100.0F))
              {
                azj.a(this.a, f);
                continue;
                FrameworkTemplateUI localFrameworkTemplateUI = this.a.getFrameworkTemplateUI();
                if (localFrameworkTemplateUI != null)
                  localFrameworkTemplateUI.removeExistedTipsView();
              }
            }
          }
        }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     azn
 * JD-Core Version:    0.6.2
 */