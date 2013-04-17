import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.widget.TextView;
import com.tencent.tmsecure.module.aresengine.MmsContentConfigHeader;
import com.tencent.tmsecure.module.aresengine.MmsData;

final class awv extends BroadcastReceiver
{
  awv(awt paramawt)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    mk localmk = (mk)paramIntent.getSerializableExtra("smslog");
    int i = paramIntent.getIntExtra("id", -1);
    if ((localmk.mmsData.mmsContentConfigHeader != null) && (localmk.mmsData.mmsContentConfigHeader.subject != null) && (!localmk.mmsData.mmsContentConfigHeader.subject.equals("")))
      awt.b(this.a).setText(awt.a(this.a).getText(2131427346) + localmk.mmsData.mmsContentConfigHeader.subject);
    awt.d(this.a).sendMessage(awt.c(this.a).obtainMessage(106));
    if ((i != -1) && (i == awt.e(this.a)))
      awt.b(this.a, localmk);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     awv
 * JD-Core Version:    0.6.2
 */