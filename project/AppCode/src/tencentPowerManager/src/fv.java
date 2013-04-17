import android.content.Context;
import android.os.Bundle;
import android.os.FileObserver;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.tencent.tmsecure.common.BaseManager;
import java.util.HashMap;

final class fv extends BaseManager
{
  private fv.a a;
  private Handler b;

  public final void a(String paramString, int paramInt, fw paramfw)
  {
    fv.a locala = this.a;
    if (paramfw == null)
      throw new NullPointerException("the listener is null");
    fv.c localc = new fv.c(paramString, 512, paramfw);
    FileObserver localFileObserver = (FileObserver)locala.a.get(paramString);
    locala.a.put(paramString, localc);
    if (localFileObserver != null)
      localFileObserver.stopWatching();
    localc.startWatching();
    try
    {
      if (this.b == null)
      {
        HandlerThread localHandlerThread = new HandlerThread(fv.class.getName());
        localHandlerThread.start();
        this.b = new fv.b();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int getSingletonType()
  {
    return 1;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new fv.a();
  }

  final class a
  {
    HashMap<String, FileObserver> a = new HashMap();

    a()
    {
    }
  }

  final class b extends Handler
  {
    public b()
    {
      super();
    }

    protected final void finalize()
      throws Throwable
    {
      super.finalize();
    }

    public final void handleMessage(Message paramMessage)
    {
      Bundle localBundle = paramMessage.getData();
      localBundle.getInt("event");
      String str = localBundle.getString("path");
      bl.a(str);
    }
  }

  final class c extends FileObserver
  {
    private fw a;

    public c(String paramInt, int paramfw, fw arg4)
    {
      super(paramfw);
      Object localObject;
      this.a = localObject;
    }

    public final void onEvent(int paramInt, String paramString)
    {
      if ((this.a != null) && (fv.a(fv.this) != null))
      {
        Message localMessage = fv.a(fv.this).obtainMessage(0);
        localMessage.obj = this.a;
        Bundle localBundle = new Bundle();
        localBundle.putInt("event", paramInt);
        localBundle.putString("path", paramString);
        localMessage.setData(localBundle);
        localMessage.sendToTarget();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     fv
 * JD-Core Version:    0.6.2
 */