import QQPIM.stAntiTheftReport;
import QQPIM.stUrgentInfo;
import android.os.Handler;
import android.os.Message;
import android.widget.EditText;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofAccountLoginActivity.a;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.concurrent.atomic.AtomicReference;

public final class ahh extends Thread
{
  public ahh(PickproofAccountLoginActivity.a parama)
  {
  }

  public final void run()
  {
    String str2;
    String str3;
    if (PickproofAccountLoginActivity.a.o(this.a) == 3)
    {
      str2 = PickproofAccountLoginActivity.a.b(this.a).getText().toString();
      str3 = PickproofAccountLoginActivity.a.p(this.a).getBindQQNum();
      if (str3.equals(str2))
      {
        Message localMessage5 = PickproofAccountLoginActivity.a.q(this.a).obtainMessage(100001);
        localMessage5.obj = str2;
        PickproofAccountLoginActivity.a.r(this.a).sendMessage(localMessage5);
      }
    }
    while (true)
    {
      return;
      stAntiTheftReport localstAntiTheftReport2 = new stAntiTheftReport();
      localstAntiTheftReport2.cmd = 1;
      AtomicReference localAtomicReference3 = new AtomicReference();
      ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportAntiTheft(str2, localstAntiTheftReport2, localAtomicReference3);
      if ((localAtomicReference3.get() != null) && (((Integer)localAtomicReference3.get()).intValue() == 0))
      {
        String str4 = PickproofAccountLoginActivity.a.p(this.a).getHelperNumber();
        if ((str4 != null) && (!"".equals(str4)))
        {
          AtomicReference localAtomicReference5 = new AtomicReference();
          stUrgentInfo localstUrgentInfo2 = new stUrgentInfo(str4);
          ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).setUrgentInfo(str2, localstUrgentInfo2, localAtomicReference5);
          if ((localAtomicReference5.get() == null) || (((Integer)localAtomicReference5.get()).intValue() != 0))
            break label325;
          PickproofAccountLoginActivity.a.p(this.a).setHelperNumber(str4);
        }
        while (true)
        {
          stAntiTheftReport localstAntiTheftReport3 = new stAntiTheftReport();
          localstAntiTheftReport3.cmd = 4;
          AtomicReference localAtomicReference4 = new AtomicReference();
          ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportAntiTheft(str3, localstAntiTheftReport3, localAtomicReference4);
          Message localMessage4 = PickproofAccountLoginActivity.a.s(this.a).obtainMessage(100001);
          localMessage4.obj = str2;
          PickproofAccountLoginActivity.a.t(this.a).sendMessage(localMessage4);
          break;
          label325: PickproofAccountLoginActivity.a.p(this.a).setHelperNumber("");
        }
      }
      Message localMessage3 = PickproofAccountLoginActivity.a.u(this.a).obtainMessage(100002);
      localMessage3.obj = str2;
      PickproofAccountLoginActivity.a.v(this.a).sendMessage(localMessage3);
      continue;
      String str1 = PickproofAccountLoginActivity.a.b(this.a).getText().toString();
      stAntiTheftReport localstAntiTheftReport1 = new stAntiTheftReport();
      if (PickproofAccountLoginActivity.a.o(this.a) == 1);
      for (localstAntiTheftReport1.cmd = 4; ; localstAntiTheftReport1.cmd = 1)
      {
        AtomicReference localAtomicReference1 = new AtomicReference();
        ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportAntiTheft(str1, localstAntiTheftReport1, localAtomicReference1);
        if ((localAtomicReference1.get() == null) || ((((Integer)localAtomicReference1.get()).intValue() != 0) && (((Integer)localAtomicReference1.get()).intValue() != -2)))
          break label565;
        if (PickproofAccountLoginActivity.a.o(this.a) != 1)
        {
          AtomicReference localAtomicReference2 = new AtomicReference();
          stUrgentInfo localstUrgentInfo1 = new stUrgentInfo("00000000000");
          ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).setUrgentInfo(str1, localstUrgentInfo1, localAtomicReference2);
        }
        Message localMessage2 = PickproofAccountLoginActivity.a.w(this.a).obtainMessage(100001);
        localMessage2.obj = str1;
        PickproofAccountLoginActivity.a.x(this.a).sendMessage(localMessage2);
        break;
      }
      label565: Message localMessage1 = PickproofAccountLoginActivity.a.y(this.a).obtainMessage(100002);
      localMessage1.obj = str1;
      PickproofAccountLoginActivity.a.z(this.a).sendMessage(localMessage1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ahh
 * JD-Core Version:    0.6.2
 */