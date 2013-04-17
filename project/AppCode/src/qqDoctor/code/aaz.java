import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences.Editor;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.List;

final class aaz
  implements Runnable
{
  aaz(aau paramaau)
  {
  }

  public final void run()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("extra_notify_id", 1);
    try
    {
      if ((!aau.c()) || (aau.b(this.a)))
      {
        aau.c(true);
        List localList = a.b(aau.e(this.a).a.getApkListFromSDCard(new String[0], true, 77));
        aau.b(this.a, localList);
        jt localjt = aau.c(this.a);
        String str = localjt.h;
        localjt.a.a(new ju(localjt, str, localList));
        aau.e(this.a).a(localList);
        kd localkd = aau.f(this.a);
        int i = localList.size();
        localkd.b.putInt("apk_count", i).commit();
        if (localList.size() == 0)
          localIntent.setAction("com.tencent.qqpimsecure.NOTIFY_UI_NULL");
        while (true)
        {
          aau.g(this.a).sendBroadcast(localIntent);
          aau.c(false);
          break;
          localIntent.setAction("com.tencent.qqpimsecure.NOTIFY_UI_SUCCESS");
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
        localIntent.setAction("com.tencent.qqpimsecure.NOTIFY_UI_FAILURE");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aaz
 * JD-Core Version:    0.6.2
 */