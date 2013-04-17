import android.os.Handler;
import android.os.Message;

final class atc
  implements Runnable
{
  atc(atb paramatb, int paramInt)
  {
  }

  public final void run()
  {
    if (this.a == 2)
    {
      ib localib = this.b.d;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(1);
      fi.a(localib.a("file_safe_file_info", "mFileState=?", arrayOfString, "id ASC"));
    }
    Message localMessage = atb.a(this.b).obtainMessage(1001, this.a, 0);
    atb.b(this.b).sendMessageDelayed(localMessage, 1000L);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     atc
 * JD-Core Version:    0.6.2
 */