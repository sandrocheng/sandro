import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class aay extends Thread
{
  aay(aau paramaau, boolean paramBoolean)
  {
  }

  public final void run()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("extra_notify_id", 0);
    try
    {
      if ((!aau.b()) || (aau.b(this.b)))
      {
        aau.b(true);
        localList = a.b(aau.e(this.b).a.getInstalledApp(121, 2));
        localArrayList1 = new ArrayList();
        localArrayList2 = new ArrayList();
        Iterator localIterator = localList.iterator();
        while (true)
        {
          if (!localIterator.hasNext())
            break label175;
          localkw = (kw)localIterator.next();
          if (!localkw.isSystemApp())
            break;
          localArrayList2.add(localkw);
        }
      }
    }
    catch (Exception localException)
    {
      List localList;
      ArrayList localArrayList1;
      ArrayList localArrayList2;
      kw localkw;
      localException.printStackTrace();
      localIntent.setAction("com.tencent.qqpimsecure.NOTIFY_UI_FAILURE");
      while (true)
      {
        aau.g(this.b).sendBroadcast(localIntent);
        aau.b(false);
        return;
        localArrayList1.add(localkw);
        break;
        label175: localList.clear();
        localList.addAll(localArrayList1);
        localList.addAll(localArrayList2);
        jt localjt = aau.c(this.b);
        String str = localjt.i;
        localjt.a.a(new ju(localjt, str, localList));
        if ((this.a) && (aau.b(this.b)))
        {
          Message localMessage = new Message();
          localMessage.what = 1;
          localMessage.obj = Boolean.valueOf(false);
          aau.h(this.b).sendMessage(localMessage);
          aau.h(this.b).sendEmptyMessage(2);
        }
        kd localkd1 = aau.f(this.b);
        int i = localArrayList1.size();
        localkd1.b.putInt("third_party_app_count", i).commit();
        kd localkd2 = aau.f(this.b);
        int j = localArrayList2.size();
        localkd2.b.putInt("system_app_count", j).commit();
        aau.b(this.b, localList);
        localIntent.setAction("com.tencent.qqpimsecure.NOTIFY_UI_SUCCESS");
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aay
 * JD-Core Version:    0.6.2
 */