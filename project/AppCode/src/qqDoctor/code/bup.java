import android.content.BroadcastReceiver;
import com.tencent.tmsecure.module.aresengine.SmsEntity;

final class bup extends bvf
{
  bup(buo.a parama)
  {
  }

  final void a(SmsEntity paramSmsEntity, BroadcastReceiver paramBroadcastReceiver)
  {
    buo.c localc;
    BroadcastReceiver localBroadcastReceiver;
    if (paramSmsEntity != null)
    {
      localc = buo.a.a(this.a);
      localBroadcastReceiver = (BroadcastReceiver)new Object[] { paramBroadcastReceiver }[0];
      if (localc.a.c() != 1)
        break label80;
    }
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
      {
        buo.a locala = this.a;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(0);
        arrayOfObject[1] = paramBroadcastReceiver;
        locala.notifyDataReached(paramSmsEntity, arrayOfObject);
      }
      return;
      label80: if (localBroadcastReceiver != null)
        localBroadcastReceiver.abortBroadcast();
      new bvc(localc, paramSmsEntity).start();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bup
 * JD-Core Version:    0.6.2
 */