import QQPIM.FBIllegaSoft;
import QQPIM.SoftKey;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.ArrayList;

final class gm
  implements Runnable
{
  gm(ge paramge, kw paramkw, int paramInt)
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
        break label179;
      str2 = "";
      localSoftKey.setSoftname(str2);
      if (this.a.getVersion() != null)
        break label190;
      str3 = "";
      label58: localSoftKey.setVersion(str3);
      ArrayList localArrayList = new ArrayList();
      FBIllegaSoft localFBIllegaSoft = new FBIllegaSoft();
      localFBIllegaSoft.setSoftkey(localSoftKey);
      localFBIllegaSoft.setCompany("");
      localFBIllegaSoft.setIllreason(this.b);
      localArrayList.add(localFBIllegaSoft);
      int i = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportFBIllegaReason(localArrayList);
      if (i != 0)
      {
        if (a.b(i) != fc.a)
          break label202;
        ha.b(this.c.a, 2131428398);
      }
    }
    while (true)
    {
      ha.b(this.c.a, 2131428486);
      return;
      str1 = this.a.getCertMD5();
      break;
      label179: str2 = this.a.getPackageName();
      break label39;
      label190: str3 = this.a.getVersion();
      break label58;
      label202: ha.b(this.c.a, 2131428399);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     gm
 * JD-Core Version:    0.6.2
 */