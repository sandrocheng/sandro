import QQPIM.STNetLocal;
import QQPIM.STVecNetLocal;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.ArrayList;
import java.util.List;

final class wm
  implements Runnable
{
  wm(wh paramwh)
  {
  }

  public final void run()
  {
    int i = 0;
    STVecNetLocal localSTVecNetLocal;
    synchronized (wh.a)
    {
      if (!a.h(this.a.b))
        break label605;
      localSTVecNetLocal = new STVecNetLocal();
      localSTVecNetLocal.veclocal = new ArrayList();
      new ArrayList();
      List localList = (List)fj.a(this.a.b, "", "file_network_local_upload");
      if ((localList != null) && (!localList.isEmpty()))
        for (int i3 = 0; i3 < localList.size(); i3++)
        {
          STNetLocal localSTNetLocal2 = (STNetLocal)localList.get(i3);
          localSTVecNetLocal.veclocal.add(localSTNetLocal2);
        }
      if (localSTVecNetLocal.veclocal.size() > 0)
      {
        int j = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportLocalNet(localSTVecNetLocal);
        if (j == 0)
          break label210;
        if (a.b(j) == fc.a)
          new StringBuilder("^^ upload network error ,code ").append(j).toString();
      }
    }
    label210: int k = localSTVecNetLocal.veclocal.size();
    Object localObject3;
    for (Object localObject2 = ""; ; localObject2 = localObject3)
    {
      if (i < k)
      {
        STNetLocal localSTNetLocal1 = (STNetLocal)localSTVecNetLocal.veclocal.get(i);
        int m = localSTNetLocal1.nNetType;
        if (m == wh.a(fl.a))
        {
          this.a.c.b.putBoolean("is_wifi_upload", true).commit();
          localObject3 = (String)localObject2 + fl.a.toString();
          break label606;
        }
        int n = localSTNetLocal1.nNetType;
        if (n == wh.a(fl.b))
        {
          localObject3 = (String)localObject2 + fl.b.toString();
          this.a.c.b.putBoolean("is_gprs_wap_upload", true).commit();
          break label606;
        }
        int i1 = localSTNetLocal1.nNetType;
        if (i1 == wh.a(fl.c))
        {
          localObject3 = (String)localObject2 + fl.c.toString();
          this.a.c.b.putBoolean("is_gprs_cmnet_upload", true).commit();
          break label606;
        }
        int i2 = localSTNetLocal1.nNetType;
        if (i2 == wh.a(fl.d))
        {
          localObject3 = (String)localObject2 + fl.d.toString();
          this.a.c.b.putBoolean("is_none_upload", true).commit();
          break label606;
        }
      }
      else
      {
        if (wh.a(this.a))
          this.a.c.b.putBoolean("is_upload_started", false).commit();
        this.a.b.deleteFile("file_network_local_upload");
        break;
      }
      localObject3 = localObject2;
      break label606;
      label605: return;
      label606: i++;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     wm
 * JD-Core Version:    0.6.2
 */