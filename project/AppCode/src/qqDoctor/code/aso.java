import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;

final class aso extends Handler
{
  aso(asn paramasn)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      this.a.e = 0;
      this.a.b.setImageResource(this.a.d[this.a.e]);
      this.a.f.sendEmptyMessageDelayed(2, 500L);
      continue;
      asn localasn = this.a;
      localasn.e = (1 + localasn.e);
      if (this.a.e >= this.a.d.length)
        this.a.e = 0;
      this.a.b.setImageResource(this.a.d[this.a.e]);
      this.a.f.sendEmptyMessageDelayed(2, 500L);
      continue;
      this.a.f.removeMessages(1);
      this.a.f.removeMessages(2);
      this.a.f.removeMessages(3);
      this.a.e = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aso
 * JD-Core Version:    0.6.2
 */