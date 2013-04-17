import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.QQWebdiskHelpActivity;

public final class ady
  implements View.OnClickListener
{
  public ady(QQWebdiskHelpActivity paramQQWebdiskHelpActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(di.b().e()));
    this.a.startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ady
 * JD-Core Version:    0.6.2
 */