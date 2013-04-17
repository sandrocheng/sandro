import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.PhoneNumberUtils;
import com.tencent.tmsecure.utils.DualSimCallUtil;
import java.util.concurrent.ConcurrentLinkedQueue;

final class bvq extends BroadcastReceiver
{
  bvq(bvp.a parama)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.intent.action.NEW_OUTGOING_CALL"))
    {
      str3 = paramIntent.getStringExtra("android.intent.extra.PHONE_NUMBER");
      if (str3 != null)
      {
        localConcurrentLinkedQueue2 = bvp.a.a(this.a);
        if (str3 == null)
          str3 = "null";
        localConcurrentLinkedQueue2.add(str3);
      }
    }
    while (DualSimCallUtil.getCallState(paramContext, paramIntent) != 1)
      while (true)
      {
        ConcurrentLinkedQueue localConcurrentLinkedQueue2;
        return;
        String str3 = getResultData();
      }
    String str1 = paramIntent.getStringExtra("incoming_number");
    if (str1 != null);
    while (true)
    {
      String str2 = PhoneNumberUtils.stripSeparators(str1);
      ConcurrentLinkedQueue localConcurrentLinkedQueue1 = bvp.a.b(this.a);
      if (str2 == null)
        str2 = "null";
      localConcurrentLinkedQueue1.add(str2);
      break;
      str1 = getResultData();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bvq
 * JD-Core Version:    0.6.2
 */