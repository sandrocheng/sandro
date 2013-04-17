import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.update.IUpdateObserver;
import com.tencent.tmsecure.module.update.UpdateConfig;
import com.tencent.tmsecure.module.update.UpdateInfo;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.io.File;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public final class bzc extends BaseManager
{
  public Context a;
  public String b = null;
  public AtomicBoolean c = new AtomicBoolean(false);
  public WupSessionManager d;
  public HashMap<Integer, SoftReference<IUpdateObserver>> e = new HashMap();

  public final String a(int paramInt)
  {
    String str1 = UpdateConfig.getFileNameByFlag(paramInt);
    String str2 = this.b + File.separator + str1;
    if (!new File(str2).exists())
      btd.a(this.a, str1, this.b);
    return str2;
  }

  public final void a(UpdateInfo paramUpdateInfo)
  {
    synchronized (this.e)
    {
      Iterator localIterator = this.e.entrySet().iterator();
      IUpdateObserver localIUpdateObserver;
      do
      {
        Map.Entry localEntry;
        do
        {
          if (!localIterator.hasNext())
            return;
          localEntry = (Map.Entry)localIterator.next();
        }
        while (((Integer)localEntry.getKey()).intValue() != paramUpdateInfo.flag);
        localIUpdateObserver = (IUpdateObserver)((SoftReference)localEntry.getValue()).get();
      }
      while (localIUpdateObserver == null);
      localIUpdateObserver.onChanged(paramUpdateInfo);
    }
  }

  public final int getSingletonType()
  {
    return 1;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = paramContext;
    this.b = paramContext.getFilesDir().getAbsolutePath();
    this.d = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bzc
 * JD-Core Version:    0.6.2
 */