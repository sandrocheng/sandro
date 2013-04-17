import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import com.tencent.qqpimsecure.ui.activity.commontools.ScreenShotDlgActivity;
import com.tencent.qqpimsecure.ui.activity.commontools.ScreenShotPreviewActivity;
import com.tencent.tmsecure.common.BaseService;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.utils.SDKUtil;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class abp extends BaseService
{
  public static boolean a;
  public static boolean d = false;
  MediaPlayer b = null;
  String c = "";
  AudioManager e;
  private Bitmap f;
  private aal g;
  private ho h;
  private Context i;
  private Uri j;
  private Handler k = new abq(this, TMSApplication.getApplicaionContext().getMainLooper());
  private BroadcastReceiver l = new abs(this);
  private BroadcastReceiver m = new abt(this);

  private void a()
  {
    if (!Environment.getExternalStorageState().equals("mounted"))
      ha.b(this.i, this.i.getString(2131429514));
    for (int n = 0; ; n = 1)
    {
      if (ScreenShotPreviewActivity.a)
        n = 0;
      if (ScriptHelper.canRunAtRoot() != 0)
      {
        if (!ScreenShotDlgActivity.a)
        {
          Intent localIntent = new Intent(this.i, ScreenShotDlgActivity.class);
          localIntent.setFlags(268435456);
          this.i.startActivity(localIntent);
        }
        n = 0;
      }
      if (n == 0)
        if ((this.h.bM() != 0) && (this.h.bM() == 1))
          d = false;
      while (true)
      {
        return;
        new Thread(new abr(this)).start();
      }
    }
  }

  private boolean b()
  {
    String str1 = "";
    Bitmap.CompressFormat localCompressFormat = Bitmap.CompressFormat.PNG;
    if (this.h.bP() == 0)
    {
      str1 = ".png";
      localCompressFormat = Bitmap.CompressFormat.PNG;
    }
    boolean bool2;
    while (true)
    {
      if (!new File(this.h.bN()).exists())
        new File(this.h.bN()).mkdir();
      this.c = (this.h.bN() + new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date()) + str1);
      if (SDKUtil.getSDKVersion() >= 14)
        try
        {
          String str3 = this.c;
          String str4 = "screencap -p  " + str3;
          ArrayList localArrayList = new ArrayList();
          localArrayList.add(str4);
          String.valueOf(ScriptHelper.runScript(new StringBuilder(), localArrayList));
          File localFile3 = new File(this.c);
          boolean bool3 = localFile3.exists();
          bool2 = false;
          if (bool3)
          {
            boolean bool4 = localFile3.isFile();
            bool2 = false;
            if (bool4)
            {
              this.i.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(localFile3)));
              bool2 = true;
            }
          }
          return bool2;
          if (this.h.bP() == 1)
          {
            str1 = ".jpg";
            localCompressFormat = Bitmap.CompressFormat.JPEG;
          }
        }
        catch (Exception localException)
        {
          while (true)
          {
            localException.printStackTrace();
            bool2 = false;
          }
        }
    }
    this.f = a.d(TMSApplication.getApplicaionContext());
    int n = this.h.bQ();
    if (n == 0);
    label310: label491: for (int i1 = 100; ; i1 = 100)
    {
      Bitmap localBitmap;
      String str2;
      if (this.f != null)
      {
        localBitmap = this.f;
        str2 = this.c;
      }
      while (true)
      {
        try
        {
          File localFile1 = new File(str2);
          if (!localFile1.exists())
            localFile1.createNewFile();
          FileOutputStream localFileOutputStream = new FileOutputStream(localFile1);
          localBitmap.compress(localCompressFormat, i1, localFileOutputStream);
          localFileOutputStream.close();
          File localFile2 = new File(this.c);
          if ((localFile2.exists()) && (localFile2.isFile()))
            this.i.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(localFile2)));
          bool1 = true;
          bool2 = bool1;
          break;
          if (n == 1)
          {
            i1 = 80;
            break label310;
          }
          if (n != 2)
            break label491;
          i1 = 50;
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          localFileNotFoundException.printStackTrace();
          continue;
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
          continue;
        }
        boolean bool1 = false;
      }
    }
  }

  public IBinder onBind()
  {
    return null;
  }

  public void onCreate(Context paramContext)
  {
    this.i = paramContext;
    this.h = ho.a();
    if (this.b == null)
    {
      this.j = Uri.parse("file:///system/media/audio/ui/camera_click.ogg");
      if (this.j != null)
        this.b = MediaPlayer.create(this.i, this.j);
    }
    if (this.e == null)
      this.e = ((AudioManager)this.i.getSystemService("audio"));
    this.g = new aal(this.i);
    this.g.a(new aal.a(this));
    this.g.a();
    paramContext.registerReceiver(this.l, new IntentFilter("notification_screenshot_action"));
    paramContext.registerReceiver(this.m, new IntentFilter("shake_screenshot_action"));
  }

  public void onDestory()
  {
    super.onDestory();
    ov.a().b(false);
    d = false;
    if (this.b != null)
    {
      this.b.stop();
      this.b.release();
      this.b = null;
    }
    this.g.b();
    this.i.unregisterReceiver(this.l);
    this.i.unregisterReceiver(this.m);
  }

  public void onStart(Intent paramIntent)
  {
    if (paramIntent == null);
    while (true)
    {
      return;
      if (paramIntent.getAction() != null)
        if (paramIntent.getAction().equals("open_screenshot_service_action"))
        {
          if (this.h.bM() == 0)
            ov.a().b(true);
          else
            ov.a().b(false);
        }
        else
        {
          if (paramIntent.getAction().equals("notification_screenshot_action"))
            this.k.sendEmptyMessageDelayed(0, 500L);
          if (paramIntent.getAction().equals("shake_screenshot_action"))
            a();
        }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     abp
 * JD-Core Version:    0.6.2
 */