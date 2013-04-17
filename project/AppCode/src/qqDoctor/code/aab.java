import QQPIM.UserActionTime;
import com.tencent.tccdb.MMatchSysResult;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.ArrayList;
import java.util.Arrays;

public final class aab extends Thread
{
  public aab(zs paramzs, mk parammk, MMatchSysResult paramMMatchSysResult, dv paramdv)
  {
  }

  public final void run()
  {
    int i = this.d.d.dc();
    mm localmm = this.d.b.a(this.a.date);
    if (localmm == null)
      localmm = this.d.b.b(this.a.date);
    label203: dv localdv;
    if (localmm == null)
    {
      localmm = new mm();
      localmm.a = -1;
      localmm.d = ((int)(System.currentTimeMillis() / 1000L));
      localmm.b = this.a.a();
      localmm.c = this.a.getBody();
      localmm.n = this.a.protocolType;
      localmm.m = this.b.actionReason;
      localmm.e = this.b.finalAction;
      localmm.h = this.b.minusMark;
      localmm.f = this.b.contentType;
      if (this.b.ruleTypeID != null)
        localmm.g.addAll(Arrays.asList(this.b.ruleTypeID));
      if (localmm.a <= 0)
        break label361;
      this.d.b.b(localmm);
      ArrayList localArrayList1 = new ArrayList();
      localArrayList1.add(localmm);
      ArrayList localArrayList2 = this.d.b.a(localArrayList1, this.d.d.db(), i);
      ArrayList localArrayList3 = zs.a(localArrayList2);
      int j = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportSms(localArrayList3);
      if (j == 0)
        this.d.b.a(localArrayList2);
      if (this.c != null)
      {
        localdv = this.c;
        if (j != 0)
          break label375;
      }
    }
    label361: label375: for (boolean bool = true; ; bool = false)
    {
      localdv.a(Boolean.valueOf(bool));
      return;
      UserActionTime localUserActionTime = new UserActionTime();
      localUserActionTime.time = ((int)(System.currentTimeMillis() / 1000L));
      localUserActionTime.userAction = 11;
      localmm.i.add(localUserActionTime);
      break;
      this.d.b.a(localmm);
      break label203;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aab
 * JD-Core Version:    0.6.2
 */