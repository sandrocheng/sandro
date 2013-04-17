import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import com.tencent.tmsecure.utils.DualSimCallUtil;

final class bum extends BroadcastReceiver
{
  bum(buj.b paramb)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1;
    if (DualSimCallUtil.getCallState(paramContext, paramIntent) == 1)
    {
      str1 = paramIntent.getStringExtra("incoming_number");
      if (str1 == null)
        break label48;
    }
    while (true)
    {
      String str2 = PhoneNumberUtils.stripSeparators(str1);
      if (!TextUtils.isEmpty(str2))
        new bun(this, str2).start();
      return;
      label48: str1 = getResultData();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bum
 * JD-Core Version:    0.6.2
 */