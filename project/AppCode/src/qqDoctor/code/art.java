import android.graphics.Point;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.faceverify.util.EyeInfo;
import com.tencent.faceverify.util.FaceLib;
import com.tencent.faceverify.util.FaceLoc;
import com.tencent.faceverify.util.Utils;

public final class art extends Handler
{
  private String a = "DetectHandler";
  private arn b;
  private art.a c;
  private byte[] d;
  private Looper e;
  private boolean f;
  private boolean g;
  private Message h;
  private int i;

  public art(arn paramarn, Looper paramLooper)
  {
    super(paramLooper);
    this.b = paramarn;
    this.e = paramLooper;
    Point localPoint = this.b.f().b;
    this.d = new byte[localPoint.x * localPoint.y];
    this.g = false;
    this.f = false;
    this.h = this.b.getHandler().obtainMessage(11);
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      this.i = (1 + this.i);
      if (!this.f)
      {
        if (arn.b())
          this.f = true;
      }
      else if ((this.c != null) && (this.c.a))
      {
        new StringBuilder("handleMessage in DetectHandler early return 1 @messageId=").append(this.i).toString();
      }
      else
      {
        removeCallbacks(this.c);
        byte[] arrayOfByte = (byte[])paramMessage.obj;
        int j = paramMessage.arg2;
        int k = paramMessage.arg1;
        art.a locala = new art.a(arrayOfByte, j, k);
        post(locala);
        this.c = locala;
        continue;
        this.g = true;
        while ((this.c != null) && (this.c.a));
        if (this.f)
        {
          arn.c();
          this.f = false;
        }
        this.h.sendToTarget();
        this.e.quit();
      }
    }
  }

  final class a
    implements Runnable
  {
    boolean a = false;
    private byte[] b;
    private int c;
    private int d;

    public a(byte[] paramInt1, int paramInt2, int arg4)
    {
      this.b = paramInt1;
      this.c = paramInt2;
      int i;
      this.d = i;
    }

    public final void run()
    {
      this.a = true;
      Utils.getRecogData(this.b, true, art.a(art.this), this.c, this.d);
      int i = FaceLib.faceDetect(art.a(art.this), this.c, this.d, FaceLoc.class, EyeInfo.class, true);
      if (!art.b(art.this))
      {
        if (i != 0)
          break label115;
        Message localMessage2 = Message.obtain(art.c(art.this).getHandler(), 4);
        localMessage2.obj = this.b;
        localMessage2.arg1 = this.c;
        localMessage2.arg2 = this.d;
        localMessage2.sendToTarget();
      }
      while (true)
      {
        this.a = false;
        return;
        label115: Message localMessage1 = Message.obtain(art.c(art.this).getHandler(), 5);
        localMessage1.obj = this.b;
        localMessage1.arg1 = this.c;
        localMessage1.arg2 = this.d;
        localMessage1.sendToTarget();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     art
 * JD-Core Version:    0.6.2
 */