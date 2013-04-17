import QQPIM.FBIReportType;
import QQPIM.FBIllegaSoft;
import QQPIM.SoftKey;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.common.ErrorCode;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.ArrayList;

final class bno
  implements Runnable
{
  bno(bnd parambnd, kw paramkw, int paramInt)
  {
  }

  public final void run()
  {
    SoftKey localSoftKey = new SoftKey();
    String str1;
    String str2;
    label39: String str3;
    if (this.a.getCertMD5() == null)
    {
      str1 = "";
      localSoftKey.setUid(str1);
      if (this.a.getPackageName() != null)
        break label206;
      str2 = "";
      localSoftKey.setSoftname(str2);
      if (this.a.d() != null)
        break label217;
      str3 = "";
      label58: localSoftKey.setVersion(str3);
      ArrayList localArrayList = new ArrayList();
      FBIllegaSoft localFBIllegaSoft = new FBIllegaSoft();
      localFBIllegaSoft.setSoftkey(localSoftKey);
      localFBIllegaSoft.setCompany("");
      localFBIllegaSoft.setIllreason(this.b);
      localFBIllegaSoft.setReporttype(FBIReportType.FBI_FEEDBACK.value());
      localArrayList.add(localFBIllegaSoft);
      int i = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportFBIllegaReason(localArrayList);
      if (i == 0)
        break label244;
      if (ErrorCode.judgeErrorCode(i) != 0)
        break label229;
      Message localMessage = bnd.q(this.c).obtainMessage(18);
      localMessage.arg1 = i;
      localMessage.arg2 = this.b;
      bnd.q(this.c).sendMessage(localMessage);
    }
    while (true)
    {
      return;
      str1 = this.a.getCertMD5();
      break;
      label206: str2 = this.a.getPackageName();
      break label39;
      label217: str3 = this.a.d();
      break label58;
      label229: ha.b(bnd.x(this.c), 2131428399);
      continue;
      label244: ha.b(bnd.y(this.c), 2131427979);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bno
 * JD-Core Version:    0.6.2
 */