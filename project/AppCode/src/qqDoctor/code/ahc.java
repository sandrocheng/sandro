import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.WebUIActivity;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofAccountLoginActivity.a;

public final class ahc
  implements View.OnClickListener
{
  public ahc(PickproofAccountLoginActivity.a parama)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(PickproofAccountLoginActivity.a.d(this.a), WebUIActivity.class);
    localIntent.putExtra("extra_url", "http://aq.qq.com/lost_pwd?lang=zh_cn&login_type=normal&source_id=2369");
    PickproofAccountLoginActivity.a.e(this.a).startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ahc
 * JD-Core Version:    0.6.2
 */