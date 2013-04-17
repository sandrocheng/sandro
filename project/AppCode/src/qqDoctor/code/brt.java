import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.qscanner.QScannerManager;

final class brt
  implements sq.a
{
  brt(brp parambrp)
  {
  }

  public final void a(int paramInt)
  {
    new StringBuilder("resultType = ").append(paramInt).toString();
    switch (paramInt)
    {
    case 1:
    default:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      String str2 = brp.L(this.a).getString(2131428094) + brp.M(this.a).getString(2131428093) + QScannerManager.getVirusBaseVersion(brp.N(this.a));
      Bundle localBundle2 = new Bundle();
      localBundle2.putString("msg_virus_text", str2);
      Message localMessage2 = brp.D(this.a).obtainMessage(11);
      localMessage2.setData(localBundle2);
      localMessage2.sendToTarget();
      continue;
      String str1 = brp.O(this.a).getString(2131428095) + brp.P(this.a).getString(2131428093) + QScannerManager.getVirusBaseVersion(brp.Q(this.a));
      Bundle localBundle1 = new Bundle();
      localBundle1.putString("msg_virus_text", str1);
      Message localMessage1 = brp.D(this.a).obtainMessage(11);
      localMessage1.setData(localBundle1);
      localMessage1.sendToTarget();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     brt
 * JD-Core Version:    0.6.2
 */