import android.os.Handler;
import android.os.Message;
import com.tencent.powermanager.uilib.ExpectTimeView;

public final class cy extends Handler
{
  public cy(ExpectTimeView paramExpectTimeView)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    ExpectTimeView.a(this.a);
    this.a.setTextHour(ExpectTimeView.b(this.a));
    this.a.setTextMin(ExpectTimeView.c(this.a));
    if ((ExpectTimeView.b(this.a) == ExpectTimeView.d(this.a)) && (ExpectTimeView.c(this.a) == ExpectTimeView.e(this.a)));
    while (true)
    {
      return;
      ExpectTimeView.f(this.a).sendEmptyMessageDelayed(65537, 20L);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     cy
 * JD-Core Version:    0.6.2
 */