import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.io.File;

public final class od extends abu
{
  private Context d;
  private SoftwareManager e;
  private abe f;
  private final Handler g = new oe();

  public od(Context paramContext)
  {
    this.d = paramContext;
    this.e = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
    this.f = new abe();
  }

  public final void a()
  {
    super.a();
    this.g.removeMessages(1);
  }

  public final void a(mp parammp)
  {
    String str1 = (String)parammp.h;
    AppEntity localAppEntity1 = this.e.getApkInfo(str1, 77);
    AppEntity localAppEntity2;
    if (localAppEntity1 == null)
    {
      localAppEntity2 = new AppEntity();
      File localFile = new File(str1);
      String str2 = localFile.getName();
      if ((str2 != null) && (!str2.equals("")))
        str2 = str2.substring(0, -4 + str2.length());
      localAppEntity2.setPackageName(null);
      localAppEntity2.setApkPath(str1);
      localAppEntity2.setAppName(str2);
      localAppEntity2.setSize(localFile.length());
      localAppEntity2.setIcon(this.d.getResources().getDrawable(2130837787));
      localAppEntity2.setApkFlag(true);
    }
    for (AppEntity localAppEntity3 = localAppEntity2; ; localAppEntity3 = localAppEntity1)
    {
      kw localkw = a.a(localAppEntity3);
      this.f.b(localkw);
      parammp.h = localkw;
      Message localMessage = this.g.obtainMessage();
      localMessage.what = 1;
      localMessage.obj = parammp;
      this.g.sendMessage(localMessage);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     od
 * JD-Core Version:    0.6.2
 */