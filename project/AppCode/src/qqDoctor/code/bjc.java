import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.qqpimsecure.view.securespace.SecureSmsDialogueView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class bjc extends BroadcastReceiver
{
  public bjc(SecureSmsDialogueView paramSecureSmsDialogueView)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null);
    while (true)
    {
      return;
      label220: if (SecureSmsDialogueView.u(this.a))
      {
        mk localmk;
        int i;
        int j;
        synchronized (SecureSmsDialogueView.e(this.a))
        {
          this.a.a = SecureSmsDialogueView.b(this.a).a(SecureSmsDialogueView.a(this.a));
          if ((this.a.a == null) || (this.a.a.size() <= 0))
            break label220;
          SecureSmsDialogueView.h(this.a).a(this.a.a);
          localmk = (mk)paramIntent.getSerializableExtra("smslog");
          i = paramIntent.getIntExtra("id", -1);
          j = SecureSmsDialogueView.d(this.a, i);
          if (j != -1);
        }
        ArrayList localArrayList = SecureSmsDialogueView.a(localmk);
        SecureSmsDialogueView.h(this.a).a().set(j, localmk);
        SecureSmsDialogueView.h(this.a).b().remove(Integer.valueOf(i));
        SecureSmsDialogueView.h(this.a).b().put(Integer.valueOf(i), localArrayList);
        SecureSmsDialogueView.h(this.a).notifyDataSetChanged();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bjc
 * JD-Core Version:    0.6.2
 */