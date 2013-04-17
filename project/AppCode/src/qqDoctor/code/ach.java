import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import com.tencent.qqpimsecure.service.UssdBlockedReceiver;

public final class ach
  implements View.OnClickListener
{
  public ach(UssdBlockedReceiver paramUssdBlockedReceiver)
  {
  }

  public final void onClick(View paramView)
  {
    UssdBlockedReceiver.b(this.a).removeView(UssdBlockedReceiver.a(this.a));
    UssdBlockedReceiver.c(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ach
 * JD-Core Version:    0.6.2
 */