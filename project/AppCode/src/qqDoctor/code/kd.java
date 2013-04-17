import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.qqpimsecure.service.QQPimApplication;

public final class kd
{
  public SharedPreferences a = QQPimApplication.a().getSharedPreferences("software_setting", 0);
  public SharedPreferences.Editor b = this.a.edit();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     kd
 * JD-Core Version:    0.6.2
 */