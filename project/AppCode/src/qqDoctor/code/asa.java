import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import java.io.File;

final class asa extends Handler
{
  asa(arz paramarz)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 0:
    case 5:
    case 1:
    case 6:
    case 2:
    case 7:
    case 4:
    case 9:
    case 101:
    case 102:
      while (true)
      {
        return;
        String str13 = arz.a(this.a).getString(2131429891);
        Object[] arrayOfObject6 = new Object[2];
        arrayOfObject6[0] = Integer.valueOf(1);
        arrayOfObject6[1] = Integer.valueOf(paramMessage.arg1);
        String str14 = String.format(str13, arrayOfObject6);
        if (str14 != null)
        {
          this.a.c.c.setText(str14);
          this.a.c.a.show();
          this.a.c.f.sendEmptyMessage(1);
          continue;
          String str11 = arz.b(this.a).getString(2131429896);
          Object[] arrayOfObject5 = new Object[2];
          arrayOfObject5[0] = Integer.valueOf(1);
          arrayOfObject5[1] = Integer.valueOf(paramMessage.arg1);
          String str12 = String.format(str11, arrayOfObject5);
          if (str12 != null)
          {
            this.a.b.setMessage(str12);
            this.a.b.show();
            continue;
            String str9 = arz.c(this.a).getString(2131429891);
            Object[] arrayOfObject4 = new Object[2];
            arrayOfObject4[0] = Integer.valueOf(paramMessage.arg1);
            arrayOfObject4[1] = Integer.valueOf(paramMessage.arg2);
            String str10 = String.format(str9, arrayOfObject4);
            if (str10 != null)
            {
              this.a.c.c.setText(str10);
              continue;
              String str7 = arz.d(this.a).getString(2131429896);
              Object[] arrayOfObject3 = new Object[2];
              arrayOfObject3[0] = Integer.valueOf(paramMessage.arg1);
              arrayOfObject3[1] = Integer.valueOf(paramMessage.arg2);
              String str8 = String.format(str7, arrayOfObject3);
              if (str8 != null)
              {
                this.a.b.setMessage(str8);
                continue;
                String str4 = (String)paramMessage.obj;
                if (str4 != null)
                {
                  File localFile = new File(str4);
                  if (localFile.exists())
                  {
                    String str5 = arz.e(this.a).getString(2131429898);
                    Object[] arrayOfObject2 = new Object[1];
                    arrayOfObject2[0] = localFile.getName();
                    String str6 = String.format(str5, arrayOfObject2);
                    if (str6 != null)
                    {
                      ha.b(arz.f(this.a), str6);
                      continue;
                      String str1 = (String)paramMessage.obj;
                      if (str1 != null)
                      {
                        String str2 = arz.g(this.a).getString(2131429901);
                        Object[] arrayOfObject1 = new Object[1];
                        arrayOfObject1[0] = str1.substring(1 + str1.lastIndexOf("/"));
                        String str3 = String.format(str2, arrayOfObject1);
                        if (str3 != null)
                        {
                          ha.b(arz.h(this.a), str3);
                          continue;
                          this.a.c.f.sendEmptyMessage(3);
                          this.a.c.b.setImageResource(2130837741);
                          arz.i(this.a).sendEmptyMessageDelayed(101, 500L);
                          continue;
                          this.a.b.setMessage(arz.j(this.a).getString(2131429895));
                          arz.i(this.a).sendEmptyMessageDelayed(102, 500L);
                          continue;
                          if (this.a.c.a != null)
                            this.a.c.a.dismiss();
                          arz.k(this.a).sendBroadcast(new Intent("filesafe.reloadData"));
                          continue;
                          if (this.a.b != null)
                            this.a.b.dismiss();
                          this.a.f = false;
                          arz.l(this.a).sendBroadcast(new Intent("filesafe.reloadData"));
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    case 10:
    }
    arz localarz = this.a;
    if (paramMessage.arg1 == 0);
    for (boolean bool = true; ; bool = false)
    {
      arz.a(localarz, bool);
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     asa
 * JD-Core Version:    0.6.2
 */