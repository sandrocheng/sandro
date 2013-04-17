import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentFilter.MalformedMimeTypeException;
import android.text.TextUtils;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.utils.SDKUtil;

abstract class bvf extends BroadcastReceiver
{
  private bve a = new bve();
  private boolean b;

  public final void a(Context paramContext)
  {
    try
    {
      IntentFilter localIntentFilter1 = new IntentFilter("android.provider.Telephony.SMS_RECEIVED");
      localIntentFilter1.addCategory("android.intent.category.DEFAULT");
      localIntentFilter1.setPriority(2147483647);
      paramContext.registerReceiver(this, localIntentFilter1, "android.permission.BROADCAST_SMS", null);
      IntentFilter localIntentFilter2 = new IntentFilter("android.provider.Telephony.SMS_RECEIVED2");
      localIntentFilter2.addCategory("android.intent.category.DEFAULT");
      localIntentFilter2.setPriority(2147483647);
      paramContext.registerReceiver(this, localIntentFilter2, "android.permission.BROADCAST_SMS", null);
      IntentFilter localIntentFilter3 = new IntentFilter("android.provider.Telephony.GSM_SMS_RECEIVED");
      localIntentFilter3.addCategory("android.intent.category.DEFAULT");
      localIntentFilter3.setPriority(2147483647);
      paramContext.registerReceiver(this, localIntentFilter3, "android.permission.BROADCAST_SMS", null);
      IntentFilter localIntentFilter4 = new IntentFilter("android.provider.Telephony.WAP_PUSH_RECEIVED");
      localIntentFilter4.addDataType("application/vnd.wap.mms-message");
      localIntentFilter4.addCategory("android.intent.category.DEFAULT");
      localIntentFilter4.setPriority(2147483647);
      paramContext.registerReceiver(this, localIntentFilter4, "android.permission.BROADCAST_SMS", null);
      IntentFilter localIntentFilter5 = new IntentFilter("android.provider.Telephony.WAP_PUSH_RECEIVED");
      localIntentFilter5.addDataType("application/vnd.wap.sic");
      localIntentFilter5.addDataType("application/vnd.wap.slc");
      localIntentFilter5.addDataType("application/vnd.wap.coc");
      localIntentFilter5.addCategory("android.intent.category.DEFAULT");
      localIntentFilter5.setPriority(2147483647);
      paramContext.registerReceiver(this, localIntentFilter5, "android.permission.BROADCAST_SMS", null);
      this.b = true;
      return;
    }
    catch (IntentFilter.MalformedMimeTypeException localMalformedMimeTypeException)
    {
      while (true)
        localMalformedMimeTypeException.printStackTrace();
    }
  }

  abstract void a(SmsEntity paramSmsEntity, BroadcastReceiver paramBroadcastReceiver);

  public final boolean a()
  {
    return this.b;
  }

  public final void b(Context paramContext)
  {
    if (this.b)
    {
      paramContext.unregisterReceiver(this);
      this.b = false;
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    this.a.a(paramIntent);
    boolean bool = this.a.a();
    SmsEntity localSmsEntity = null;
    if (bool)
      localSmsEntity = this.a.b();
    if ((localSmsEntity != null) && (!TextUtils.isEmpty(localSmsEntity.phonenum)) && ((!TextUtils.isEmpty(localSmsEntity.body)) || (localSmsEntity.mmsData != null)) && (SDKUtil.getSDKVersion() > 4))
      a(localSmsEntity, this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bvf
 * JD-Core Version:    0.6.2
 */