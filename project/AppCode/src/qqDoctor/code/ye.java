import android.app.Activity;
import android.content.Intent;
import com.tencent.qqpimsecure.uilib.ui.activity.PluginActivity;
import com.tencent.tmsecure.module.plugin.AbsPluginControler;
import com.tencent.tmsecure.module.plugin.PluginIntent;

public final class ye extends AbsPluginControler
{
  public final void startActivityForResult(Activity paramActivity, int paramInt, PluginIntent paramPluginIntent)
  {
    Intent localIntent = new Intent();
    localIntent.putExtras(PluginIntent.convertToBundle(paramPluginIntent));
    PluginActivity.startPluginView(paramActivity, paramInt, localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ye
 * JD-Core Version:    0.6.2
 */