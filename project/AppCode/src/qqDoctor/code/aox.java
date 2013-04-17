import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;

final class aox
  implements View.OnClickListener
{
  aox(aou paramaou)
  {
  }

  public final void onClick(View paramView)
  {
    aou.b(this.a, aou.q(this.a).getText().toString());
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.putExtra("sms_body", aou.r(this.a));
    localIntent.setType("vnd.android-dir/mms-sms");
    aou.w(this.a).startActivity(localIntent);
    this.a.getActivity().finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aox
 * JD-Core Version:    0.6.2
 */