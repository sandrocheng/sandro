import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import java.io.File;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

final class gd extends BaseManager
{
  String a = null;
  HashMap<Integer, SoftReference<ga>> b;

  gd()
  {
    new AtomicBoolean(false);
    this.b = new HashMap();
  }

  public final int getSingletonType()
  {
    return 1;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = paramContext.getFilesDir().getAbsolutePath();
    ManagerCreator.getManager(gg.class);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     gd
 * JD-Core Version:    0.6.2
 */