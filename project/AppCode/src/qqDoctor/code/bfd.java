import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.ContactSelectActivity;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bfd
  implements View.OnClickListener
{
  bfd(bfa parambfa, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(bfa.a(this.b), ContactSelectActivity.class);
    localIntent.putExtra("from", 5);
    localIntent.putExtra("type", 3);
    localIntent.putExtra("title", 2131429461);
    ((Activity)bfa.a(this.b)).startActivityForResult(localIntent, 5);
    this.a.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bfd
 * JD-Core Version:    0.6.2
 */