import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Environment;
import android.text.TextUtils;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.lang.reflect.Array;
import java.util.ArrayList;

final class yy
  implements Runnable
{
  yy(yw paramyw, boolean paramBoolean1, ho paramho, boolean paramBoolean2, boolean paramBoolean3)
  {
  }

  public final void run()
  {
    if ((this.a) && (((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportChannelInfo() == 0))
      this.b.i(this.c);
    nd localnd1;
    ArrayList localArrayList1;
    nd localnd2;
    label140: label305: int i;
    label319: int i3;
    label338: label621: String[] arrayOfString;
    label465: int[][] arrayOfInt2;
    label559: int m;
    if (this.d)
    {
      localnd1 = nd.a();
      localArrayList1 = localnd1.b();
      localnd2 = nd.a();
      iu localiu = new iu(QQPimApplication.a());
      if (new iy(QQPimApplication.a()).a.getBoolean("netword_service_status", di.b().f()))
      {
        if (localiu.getTotalForMonth() > 0L)
          nd.a(localArrayList1, 26126);
        if (localiu.j())
        {
          nd.a(localArrayList1, 26127);
          if (!localiu.m())
            break label874;
          nd.a(localArrayList1, 26132);
        }
      }
      else
      {
        ho localho = ho.a();
        if ((localho.by()) || (localho.p()))
          nd.a(localArrayList1, 26131);
        if (!new iy(QQPimApplication.a()).a.getBoolean("netword_service_status", di.b().f()))
          nd.a(localArrayList1, 26194);
        if ((localiu.m()) && (localiu.h()) && (localiu.getTotalForMonth() > 0L))
          nd.a(localArrayList1, 26217);
        if ((localiu.m()) && (localiu.o()))
          nd.a(localArrayList1, 26218);
        if (localho.aF())
          nd.a(localArrayList1, 26282);
        if (localho.cH())
          nd.a(localArrayList1, 26284);
        if (!localho.cv())
          break label897;
        nd.a(localArrayList1, 26303);
        if (Environment.getExternalStorageState().equals("mounted"))
          break label907;
        i = 1;
        if (i == 0)
        {
          if (Environment.getExternalStorageState().equals("mounted"))
            break label925;
          i3 = 1;
          if ((i3 == 0) && (new ib().a() > 0))
            nd.a(localArrayList1, 26344);
        }
        if (new ji().a() > 0)
          nd.a(localArrayList1, 26345);
        if (new hq(2).c() + new jp("securesmslog", "secure_mms_pdu", "secure_mms_parts").b() + new hi(1).c() > 0)
          nd.a(localArrayList1, 26346);
        if (ho.a().by())
          nd.a(localArrayList1, 26347);
        if (!ho.a().co())
          break label943;
        nd.a(localArrayList1, 26424);
        if (ho.a().cj() == 0)
          nd.a(localArrayList1, 26429);
        String str1 = ho.a().ci();
        if ((str1 != null) && (!str1.equals("")))
          nd.a(localArrayList1, 26430);
        if (ho.a().bD())
        {
          nd.a(localArrayList1, 26443);
          String str4 = ((AntitheftManager)ManagerCreator.getManager(AntitheftManager.class)).getBindQQNum();
          if ((str4 == null) || (str4 == ""))
            break label953;
          nd.a(localArrayList1, 26447);
        }
        if (((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class)).isPackageInstalled("com.tencent.powermanager"))
          nd.a(localArrayList1, 26399);
        if (((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class)).isPackageInstalled("com.tencent.benchmark"))
          nd.a(localArrayList1, 26463);
        if (!ho.a().dE())
          break label963;
        nd.a(localArrayList1, 26444);
        btb localbtb = new btb();
        btl localbtl1 = localbtb.a;
        String str2 = localbtl1.c.getString(localbtl1.a + "." + "data", null);
        if ((str2 == null) || (TextUtils.isEmpty(str2)))
          break label1135;
        arrayOfString = str2.split(";");
        int[] arrayOfInt = { arrayOfString.length, 2 };
        arrayOfInt2 = (int[][])Array.newInstance(Integer.TYPE, arrayOfInt);
        m = 0;
        label731: if (m < arrayOfInt2.length)
          break label982;
        btl localbtl2 = localbtb.a;
        localbtl2.b.putString(localbtl2.a + "." + "data", null);
        localbtl2.b.commit();
      }
    }
    label809: label874: label1135: for (int[][] arrayOfInt1 = arrayOfInt2; ; arrayOfInt1 = null)
    {
      if (arrayOfInt1 != null)
      {
        int j = 0;
        if (j < arrayOfInt1.length)
        {
          int k = arrayOfInt1[j][0];
          if (k == 0)
            localnd2.b(26464, arrayOfInt1[j][1]);
          while (true)
          {
            j++;
            break label809;
            if (!localnd2.a("Editor_ACTION_TrafficAutoAdjust_Close", 200))
              break;
            nd.a(localArrayList1, 26128);
            break;
            if (!localnd2.a("Editor_ACTION_NetWorkTraffic_Window_Close", 201))
              break label140;
            nd.a(localArrayList1, 26133);
            break label140;
            nd.a(localArrayList1, 26304);
            break label305;
            if (!a.b())
            {
              i = 2;
              break label319;
            }
            i = 0;
            break label319;
            if (!a.b())
            {
              i3 = 2;
              break label338;
            }
            i3 = 0;
            break label338;
            nd.a(localArrayList1, 26425);
            break label465;
            nd.a(localArrayList1, 26448);
            break label559;
            if (!ho.a().dF())
              break label621;
            nd.a(localArrayList1, 26446);
            break label621;
            String str3 = arrayOfString[m];
            int n = str3.indexOf(':');
            int i1 = Integer.parseInt(str3.substring(0, n));
            int i2 = Integer.parseInt(str3.substring(n + 1, str3.length()));
            arrayOfInt2[m][0] = i1;
            arrayOfInt2[m][1] = i2;
            m++;
            break label731;
            if (k == 1)
              localnd2.b(26465, arrayOfInt1[j][1]);
          }
        }
      }
      ArrayList localArrayList2 = nd.a(localArrayList1);
      localArrayList2.addAll(localnd1.e());
      if (((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportSoftUsageInfo(localArrayList2) == 0)
      {
        localnd1.c();
        localnd1.d();
        this.b.g(System.currentTimeMillis());
      }
      yw.c(this.e);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     yy
 * JD-Core Version:    0.6.2
 */