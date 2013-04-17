import android.app.Activity;
import com.tencent.qqpimsecure.view.securespace.SecureSmsDialogueView;
import com.tencent.tmsecure.module.aresengine.DataHandler.DataHandlerCallback;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;
import java.util.HashSet;
import java.util.List;

public final class bjg
  implements DataHandler.DataHandlerCallback
{
  public bjg(SecureSmsDialogueView paramSecureSmsDialogueView)
  {
  }

  public final void onCallback(TelephonyEntity paramTelephonyEntity, int paramInt1, int paramInt2, Object[] paramArrayOfObject)
  {
    if ((!(paramTelephonyEntity instanceof SmsEntity)) || (paramInt1 != 1) || (paramInt2 != 2) || (SecureSmsDialogueView.d(this.a).d.contains(Integer.valueOf(new mk((SmsEntity)paramTelephonyEntity).id))));
    while (true)
    {
      return;
      synchronized (SecureSmsDialogueView.e(this.a))
      {
        this.a.a = SecureSmsDialogueView.b(this.a).a(SecureSmsDialogueView.a(this.a));
        if ((this.a.a != null) && (this.a.a.size() > 0))
        {
          mk localmk = (mk)this.a.a.get(-1 + this.a.a.size());
          if (localmk.id == SecureSmsDialogueView.f(this.a))
            localmk.h = SecureSmsDialogueView.g(this.a);
          SecureSmsDialogueView.a(this.a, this.a.a);
          SecureSmsDialogueView.b(this.a, this.a.a);
          ((Activity)SecureSmsDialogueView.i(this.a)).runOnUiThread(new bjh(this));
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bjg
 * JD-Core Version:    0.6.2
 */