import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.WebUIActivity;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;

final class bey
  implements View.OnClickListener
{
  bey(bew parambew)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(bew.e(this.a), WebUIActivity.class);
    localIntent.putExtra("extra_url", "http://msm.qq.com/wap/sjfd_list.jsp");
    localIntent.putExtra("extra_title", 2131429289);
    this.a.getActivity().startActivity(localIntent);
    nd.a().a(26442);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bey
 * JD-Core Version:    0.6.2
 */