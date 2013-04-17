import android.content.Context;
import android.os.Bundle;
import android.os.FileObserver;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.module.tools.IFileChangedListener;
import java.util.HashMap;

public final class byq extends BaseManager
{
  private byq.a a;
  private Handler b;

  public final void a(String paramString)
  {
    byq.a locala = this.a;
    FileObserver localFileObserver = (FileObserver)locala.a.get(paramString);
    if (localFileObserver != null)
    {
      localFileObserver.stopWatching();
      locala.a.remove(paramString);
    }
    if (this.a.a.size() == 0);
    try
    {
      this.b.removeMessages(0);
      this.b.getLooper().quit();
      this.b = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(String paramString, int paramInt, IFileChangedListener paramIFileChangedListener)
  {
    byq.a locala = this.a;
    if (paramIFileChangedListener == null)
      throw new NullPointerException("the listener is null");
    byq.c localc = new byq.c(paramString, paramInt, paramIFileChangedListener);
    FileObserver localFileObserver = (FileObserver)locala.a.get(paramString);
    locala.a.put(paramString, localc);
    if (localFileObserver != null)
      localFileObserver.stopWatching();
    localc.startWatching();
    try
    {
      if (this.b == null)
      {
        HandlerThread localHandlerThread = new HandlerThread(byq.class.getName());
        localHandlerThread.start();
        this.b = new byq.b();
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
    this.a = new byq.a();
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
      int i = localBundle.getInt("event");
      String str = localBundle.getString("path");
      ((IFileChangedListener)paramMessage.obj).onChanage(i, str);
    }
  }

  final class c extends FileObserver
  {
    private IFileChangedListener a;

    public c(String paramInt, int paramIFileChangedListener, IFileChangedListener arg4)
    {
      super(paramIFileChangedListener);
      Object localObject;
      this.a = localObject;
    }

    public final void onEvent(int paramInt, String paramString)
    {
      if ((this.a != null) && (byq.a(byq.this) != null))
      {
        Message localMessage = byq.a(byq.this).obtainMessage(0);
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

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     byq
 * JD-Core Version:    0.6.2
 */