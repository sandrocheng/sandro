import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.ContactSelectActivity;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofUrgentContactActivity;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofUrgentContactActivity.a;

public final class ahp
  implements View.OnClickListener
{
  public ahp(PickproofUrgentContactActivity.a parama)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(PickproofUrgentContactActivity.a.d(this.a), ContactSelectActivity.class);
    localIntent.putExtra("from", 5);
    localIntent.putExtra("type", 3);
    this.a.a.startActivityForResult(localIntent, 5);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ahp
 * JD-Core Version:    0.6.2
 */