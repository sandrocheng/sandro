import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.tencent.qqpimsecure.view.privacy.CameraSwitchWindowView;

public final class bgk extends Handler
{
  public bgk(CameraSwitchWindowView paramCameraSwitchWindowView)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return;
      if (CameraSwitchWindowView.a(this.a).a.getBoolean("need_save_file_status", true))
      {
        CameraSwitchWindowView.b(this.a).setImageResource(2130837806);
      }
      else
      {
        CameraSwitchWindowView.b(this.a).setImageResource(2130837805);
        continue;
        if (CameraSwitchWindowView.c(this.a).getVisibility() == 0)
        {
          CameraSwitchWindowView.c(this.a).setVisibility(8);
          CameraSwitchWindowView.d(this.a).setBackgroundResource(2130837706);
          if (CameraSwitchWindowView.a(this.a).a.getBoolean("need_save_file_status", true))
          {
            CameraSwitchWindowView.b(this.a).setImageResource(2130837806);
          }
          else
          {
            CameraSwitchWindowView.b(this.a).setImageResource(2130837805);
            continue;
            if (CameraSwitchWindowView.e(this.a) != null)
            {
              CameraSwitchWindowView.f(this.a).setBackgroundResource(2130837712);
              CameraSwitchWindowView.f(this.a).setImageBitmap(CameraSwitchWindowView.e(this.a));
              CameraSwitchWindowView.g(this.a).setVisibility(0);
              CameraSwitchWindowView.h(this.a).setVisibility(0);
              CameraSwitchWindowView.d(this.a).setBackgroundResource(2130837707);
              continue;
              int i = paramMessage.arg1;
              int j = paramMessage.arg2;
              CameraSwitchWindowView.a(this.a, j, i);
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bgk
 * JD-Core Version:    0.6.2
 */