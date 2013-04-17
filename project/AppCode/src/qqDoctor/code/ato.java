import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class ato extends Handler
{
  ato(atn paramatn)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case 8:
    default:
    case 5:
    case 6:
    case 7:
    case 9:
    }
    while (true)
    {
      return;
      String str6 = atn.a(this.a).getString(2131429896);
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = Integer.valueOf(1);
      arrayOfObject3[1] = Integer.valueOf(paramMessage.arg1);
      String str7 = String.format(str6, arrayOfObject3);
      if (str7 != null)
      {
        atn.b(this.a).setMessage(str7);
        atn.b(this.a).show();
        continue;
        String str4 = atn.c(this.a).getString(2131429896);
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Integer.valueOf(paramMessage.arg1);
        arrayOfObject2[1] = Integer.valueOf(paramMessage.arg2);
        String str5 = String.format(str4, arrayOfObject2);
        if (str5 != null)
        {
          atn.b(this.a).setMessage(str5);
          continue;
          String str1 = (String)paramMessage.obj;
          if (str1 != null)
          {
            String str2 = atn.d(this.a).getString(2131429901);
            Object[] arrayOfObject1 = new Object[1];
            arrayOfObject1[0] = str1.substring(1 + str1.lastIndexOf("/"));
            String str3 = String.format(str2, arrayOfObject1);
            if (str3 != null)
            {
              ha.b(atn.e(this.a), str3);
              continue;
              new StringBuilder("decry fail count:").append(paramMessage.arg1).toString();
              new StringBuilder("decry count:").append(paramMessage.arg2).toString();
              atn.f(this.a).sendEmptyMessage(102);
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ato
 * JD-Core Version:    0.6.2
 */