import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.qscanner.QScannerManager;

final class bry
  implements sq.a
{
  bry(brx parambrx)
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
      String str2 = brp.V(this.a.a).getString(2131428094) + brp.W(this.a.a).getString(2131428093) + QScannerManager.getVirusBaseVersion(brp.X(this.a.a));
      Bundle localBundle2 = new Bundle();
      localBundle2.putString("msg_virus_text", str2);
      Message localMessage2 = brp.D(this.a.a).obtainMessage(11);
      localMessage2.setData(localBundle2);
      localMessage2.sendToTarget();
      ha.b(brp.Y(this.a.a), 2131428064);
      continue;
      String str1 = brp.Z(this.a.a).getString(2131428095) + brp.aa(this.a.a).getString(2131428093) + QScannerManager.getVirusBaseVersion(brp.ab(this.a.a));
      Bundle localBundle1 = new Bundle();
      localBundle1.putString("msg_virus_text", str1);
      Message localMessage1 = brp.D(this.a.a).obtainMessage(11);
      localMessage1.setData(localBundle1);
      localMessage1.sendToTarget();
      ha.b(brp.ac(this.a.a), 2131428064);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bry
 * JD-Core Version:    0.6.2
 */