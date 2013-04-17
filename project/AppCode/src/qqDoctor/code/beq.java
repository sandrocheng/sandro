import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.ContactSelectActivity;

final class beq
  implements View.OnClickListener
{
  beq(bep parambep)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(bep.a(this.a), ContactSelectActivity.class);
    localIntent.putExtra("from", 5);
    localIntent.putExtra("type", 3);
    localIntent.putExtra("title", 2131429461);
    ((Activity)bep.b(this.a)).startActivityForResult(localIntent, 5);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     beq
 * JD-Core Version:    0.6.2
 */