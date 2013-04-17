import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.telephony.SmsManager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.qqpimsecure.view.securespace.SecureSmsDialogueView;
import java.util.Iterator;
import java.util.List;

public final class bjj
  implements View.OnClickListener
{
  public bjj(SecureSmsDialogueView paramSecureSmsDialogueView)
  {
  }

  public final void onClick(View paramView)
  {
    SmsManager localSmsManager = SmsManager.getDefault();
    String str1 = SecureSmsDialogueView.k(this.a).getText().toString();
    if (str1.length() == 0)
    {
      Toast.makeText(SecureSmsDialogueView.l(this.a), SecureSmsDialogueView.m(this.a).getString(2131427684), 0).show();
      return;
    }
    if (di.b().b())
      gu.a(SecureSmsDialogueView.n(this.a), SecureSmsDialogueView.a(this.a), str1);
    while (true)
    {
      SecureSmsDialogueView.k(this.a).setText("");
      break;
      if (str1.length() > 70)
      {
        Iterator localIterator = localSmsManager.divideMessage(str1).iterator();
        while (localIterator.hasNext())
        {
          String str2 = (String)localIterator.next();
          SecureSmsDialogueView.a(this.a, str2);
          Intent localIntent2 = new Intent();
          localIntent2.setAction("com.tencent.qqpimsecure.intent_secure_sms_sent");
          PendingIntent localPendingIntent2 = PendingIntent.getBroadcast(SecureSmsDialogueView.o(this.a), 0, localIntent2, 0);
          localSmsManager.sendTextMessage(SecureSmsDialogueView.a(this.a), null, str2, localPendingIntent2, null);
        }
      }
      else
      {
        SecureSmsDialogueView.a(this.a, str1);
        Intent localIntent1 = new Intent();
        localIntent1.setAction("com.tencent.qqpimsecure.intent_secure_sms_sent");
        PendingIntent localPendingIntent1 = PendingIntent.getBroadcast(SecureSmsDialogueView.p(this.a), 0, localIntent1, 0);
        localSmsManager.sendTextMessage(SecureSmsDialogueView.a(this.a), null, str1, localPendingIntent1, null);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bjj
 * JD-Core Version:    0.6.2
 */