import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.widget.Toast;

final class abq extends Handler
{
  abq(abp paramabp, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      abp.b(this.a);
      continue;
      String str1 = abp.a(this.a).getString(2131429504);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.a.c;
      String str2 = String.format(str1, arrayOfObject);
      int i = this.a.e.getRingerMode();
      int j = 0;
      if (i == 0)
        j = 1;
      if ((abp.c(this.a).bL()) && (j == 0) && (this.a.b != null))
        this.a.b.start();
      Toast.makeText(abp.a(this.a), str2, 1).show();
      abp.d(this.a);
      continue;
      Toast.makeText(abp.a(this.a), abp.a(this.a).getString(2131429505), 1).show();
      if (abp.c(this.a).bM() == 1)
        abp.d = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     abq
 * JD-Core Version:    0.6.2
 */