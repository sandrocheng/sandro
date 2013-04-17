import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.qqpimsecure.service.TimedTaskReceiver;

final class yv extends BroadcastReceiver
{
  yv(yr paramyr)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    long l = System.currentTimeMillis();
    ho.a().a(l);
    new acc(this.a.a).a(new Intent(paramContext, TimedTaskReceiver.class));
    wr.a(this.a.a).c();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     yv
 * JD-Core Version:    0.6.2
 */