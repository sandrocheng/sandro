import android.app.Activity;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class rc
  implements View.OnClickListener
{
  rc(rb paramrb, EditText paramEditText1, boolean paramBoolean, EditText paramEditText2, lf paramlf, CheckBoxView paramCheckBoxView1, CheckBoxView paramCheckBoxView2, dv paramdv, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str1 = this.b.getText().toString().trim();
    vk localvk;
    lf locallf;
    vy localvy;
    if (str1.length() > 0)
    {
      if (this.c)
        str1 = str1.replaceAll("\\*+$", "") + "*";
      String str2 = this.d.getText().toString().trim();
      if ("".equals(str2))
        str2 = ki.a(str1);
      this.e.enableForCalling = this.f.getChecked();
      this.e.enableForSMS = this.g.getChecked();
      this.e.phonenum = str1;
      this.e.name = str2;
      localvk = new vk(this.i.a, new rd(this));
      locallf = this.e;
      locallf.b = this.e.b;
      locallf.a = null;
      if (localvk.a(locallf))
      {
        localvy = new vy(localvk, locallf);
        if (localvy.b())
        {
          new vp(localvk, locallf).start();
          this.h.dismiss();
        }
      }
    }
    while (true)
    {
      return;
      localvy.a();
      break;
      vo localvo = new vo(localvk, locallf);
      ((Activity)localvk.a).runOnUiThread(new vq(localvk, locallf, localvo));
      break;
      ha.a(this.i.a, this.i.a.getResources().getString(2131428239));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     rc
 * JD-Core Version:    0.6.2
 */