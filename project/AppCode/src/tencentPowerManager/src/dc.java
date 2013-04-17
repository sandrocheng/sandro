import android.os.Handler;
import android.os.Message;
import com.tencent.powermanager.uilib.button.SleekButtonView;
import java.util.ArrayList;

public final class dc extends Handler
{
  public dc(SleekButtonView paramSleekButtonView)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (!SleekButtonView.a(this.a));
    while (true)
    {
      return;
      SleekButtonView.a(this.a, SleekButtonView.b(this.a));
      SleekButtonView.c(this.a);
      if (SleekButtonView.b(this.a) >= SleekButtonView.d(this.a).size())
        SleekButtonView.e(this.a);
      SleekButtonView.f(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     dc
 * JD-Core Version:    0.6.2
 */