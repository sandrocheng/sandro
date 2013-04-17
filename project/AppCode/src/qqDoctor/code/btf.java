import android.os.Bundle;
import com.tencent.tmsecure.module.update.IUpdateListener.UpdateListener;
import com.tencent.tmsecure.module.update.UpdateInfo;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.params.HttpParams;

public class btf
{
  HttpParams a = null;
  boolean b = false;
  String c = null;
  int d = 0;
  public btf.a e = null;

  protected final void a(int paramInt, Bundle paramBundle)
  {
    if (this.e != null)
    {
      if (paramInt != 1)
        break label51;
      btf.a locala = this.e;
      int i = paramBundle.getInt("key_errcode");
      locala.a.onUpdateEvent(locala.b, i);
      locala.c.set(true);
    }
    while (true)
    {
      return;
      label51: if (paramInt == 2);
    }
  }

  public static final class a
  {
    public a(IUpdateListener.UpdateListener paramUpdateListener, UpdateInfo paramUpdateInfo, AtomicBoolean paramAtomicBoolean)
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     btf
 * JD-Core Version:    0.6.2
 */