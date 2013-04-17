import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;

final class as extends Handler
{
  as(ar paramar)
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
    case 4:
    case 5:
    case 6:
    }
    while (true)
    {
      return;
      if ((!ar.c(this.a)) && (ar.d(this.a) <= 0))
      {
        String str2 = "";
        if (paramMessage.arg1 == 1)
          str2 = this.a.b.getResources().getString(2131099789);
        while (true)
        {
          this.a.c = e.a(this.a.b, str2);
          this.a.c.setOnCancelListener(new at(this));
          this.a.c.show();
          if (!ar.c(this.a))
            break;
          break;
          if (paramMessage.arg1 == 2)
            str2 = this.a.b.getResources().getString(2131099788);
        }
        if (!ar.c(this.a))
        {
          String str1 = (String)paramMessage.obj;
          p.a(this.a.b, str1);
          continue;
          if (this.a.c != null)
          {
            this.a.c.dismiss();
            continue;
            if (ar.d(this.a) <= 0)
            {
              this.a.a(this.a.b, this.a.d, new aw(this));
              continue;
              if (ar.d(this.a) <= 0);
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     as
 * JD-Core Version:    0.6.2
 */