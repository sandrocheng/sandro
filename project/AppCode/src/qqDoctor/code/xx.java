import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofActivity;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class xx
  implements View.OnClickListener
{
  xx(xn paramxn, EditText paramEditText, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str = this.a.getText().toString().trim();
    if (this.c.a(str))
    {
      Intent localIntent = new Intent();
      localIntent.setClass(this.c.a, PickproofActivity.class);
      this.c.a.startActivity(localIntent);
      this.b.dismiss();
    }
    while (true)
    {
      return;
      ha.a(this.c.a, this.c.a.getResources().getString(2131428611));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     xx
 * JD-Core Version:    0.6.2
 */