import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.qqpimsecure.view.securespace.SecureSmsDialogueView;
import java.util.ArrayList;
import java.util.List;

public final class bjd extends BroadcastReceiver
{
  public bjd(SecureSmsDialogueView paramSecureSmsDialogueView)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null);
    while (true)
    {
      return;
      label226: if (SecureSmsDialogueView.u(this.a))
      {
        mk localmk;
        int i;
        int j;
        synchronized (SecureSmsDialogueView.e(this.a))
        {
          this.a.a = SecureSmsDialogueView.b(this.a).a(SecureSmsDialogueView.a(this.a));
          if ((this.a.a == null) || (this.a.a.size() <= 0))
            break label226;
          SecureSmsDialogueView.h(this.a).a(this.a.a);
          localmk = (mk)paramIntent.getSerializableExtra("smslog");
          i = paramIntent.getIntExtra("id", -1);
          localmk.l = false;
          j = SecureSmsDialogueView.d(this.a, i);
          if (j != -1);
        }
        localmk.i = SecureSmsDialogueView.b(localmk);
        SecureSmsDialogueView.h(this.a).a().set(j, localmk);
        SecureSmsDialogueView.h(this.a).notifyDataSetChanged();
        if (localmk.i);
        a.a(SecureSmsDialogueView.v(this.a), new bje(this, localmk, j, i));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bjd
 * JD-Core Version:    0.6.2
 */