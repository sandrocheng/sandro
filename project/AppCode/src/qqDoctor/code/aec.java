import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.ui.activity.SyncMobileAccountLoginActivity.a;
import com.tencent.qqpimsecure.ui.activity.SyncMobileRegisterActivity;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;

public final class aec extends Handler
{
  public aec(SyncMobileAccountLoginActivity.a parama)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 8193:
    case 12291:
    case 12292:
    case 12293:
    case 12289:
    }
    while (true)
    {
      return;
      this.a.a();
      if (paramMessage.arg1 == 0)
      {
        SyncMobileAccountLoginActivity.a.b();
        SyncMobileAccountLoginActivity.a.a(this.a).t(2);
        ha.a(SyncMobileAccountLoginActivity.a.b(this.a), 2131427680);
        SyncMobileAccountLoginActivity.a.c(this.a);
      }
      else
      {
        SyncMobileAccountLoginActivity.a.a(this.a, paramMessage.arg1);
        continue;
        this.a.a();
        ha.a(SyncMobileAccountLoginActivity.a.d(this.a), 2131428852);
        continue;
        this.a.a();
        if (103 == paramMessage.arg1)
        {
          ha.a(SyncMobileAccountLoginActivity.a.e(this.a), 2131428852);
        }
        else
        {
          Context localContext = SyncMobileAccountLoginActivity.a.f(this.a);
          String str = SyncMobileAccountLoginActivity.a.g(this.a).getResources().getString(2131427633);
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Integer.valueOf(103);
          ha.a(localContext, String.format(str, arrayOfObject));
          continue;
          this.a.a();
          SyncMobileAccountLoginActivity.a.b(this.a, paramMessage.arg1);
          continue;
          this.a.a();
          Intent localIntent = new Intent();
          localIntent.setClass(SyncMobileAccountLoginActivity.a.h(this.a), SyncMobileRegisterActivity.class);
          localIntent.putExtra("support_mode_key", paramMessage.arg1);
          this.a.getActivity().startActivityForResult(localIntent, 0);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aec
 * JD-Core Version:    0.6.2
 */