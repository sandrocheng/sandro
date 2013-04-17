import QQPIM.SoftElementInfo;
import QQPIM.SoftList;
import QQPIM.SoftListType;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Environment;
import android.os.FileObserver;
import android.os.Handler;
import android.os.Messenger;
import android.widget.Toast;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.applist.AppListManager;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;

public class px
  implements dq.a
{
  public static Toast a;
  private static px r = null;
  private String b = "CameraDataManager";
  private boolean c;
  private boolean d;
  private boolean e;
  private boolean f = false;
  private ArrayList<px.a> g = new ArrayList();
  private String h;
  private final HashMap<String, Long> i = new HashMap();
  private final HashMap<String, Long> j = new HashMap();
  private Context k;
  private bgj l;
  private hm m;
  private SoftList n;
  private ArrayList<mc<String, Integer>> o = new ArrayList();
  private boolean p;
  private ArrayList<String> q = new ArrayList();
  private Messenger s;
  private ArrayList<String> t = new ArrayList();
  private boolean u;
  private dq v;
  private ho w;
  private Handler x;
  private Handler y = new pz(this);

  private px(Context paramContext)
  {
    this.k = paramContext;
    if (this.s == null)
      this.s = new Messenger(this.y);
    if (a == null)
      a = new Toast(this.k);
    this.v = new dq(this.k);
    this.w = ho.a();
    this.x = new Handler(this.k.getMainLooper());
  }

  public static px a(Context paramContext)
  {
    if (r == null);
    try
    {
      if (r == null)
        r = new px(paramContext);
      return r;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(File paramFile)
  {
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile != null)
    {
      int i1 = arrayOfFile.length;
      for (int i2 = 0; i2 < i1; i2++)
      {
        File localFile = arrayOfFile[i2];
        if (localFile.isDirectory())
        {
          this.q.add(localFile.getAbsolutePath());
          a(localFile);
        }
      }
    }
  }

  private void a(mc<String, Integer> parammc)
  {
    String str = (String)parammc.a;
    parammc.b = Integer.valueOf(1 + ((Integer)parammc.b).intValue());
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(str);
    fi.a(this.k, localArrayList, this.s);
  }

  public final void a()
  {
    this.n = ((AppListManager)ManagerCreator.getManager(AppListManager.class)).loadAppList(SoftListType.CAMERA_SOFTWARE_LIST);
    this.m = new hm(this.k);
  }

  public final void a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (this.l != null)
      this.l.a(paramFloat1, paramFloat2, paramFloat3);
  }

  public final void a(ActivityManager.RunningTaskInfo paramRunningTaskInfo)
  {
    String str1 = this.m.a.getString("Pic_Camera_Dir", "");
    String str2 = this.m.a.getString("movice_camera_dir", "");
    if ((str1 != null) && (!str1.equals("")) && (str2 != null) && (!str2.equals("")))
      this.u = true;
    if ((!this.u) || (paramRunningTaskInfo == null) || (paramRunningTaskInfo.topActivity == null) || (!this.m.a.getBoolean("need_show_box", true)) || (!this.w.w()))
      return;
    String str3 = paramRunningTaskInfo.topActivity.getPackageName();
    int i1;
    if ((this.h == null) || (!this.h.equals(str3)))
    {
      this.h = str3;
      i1 = 0;
      if (i1 >= this.n.vctSofts.size())
        break label1007;
      if (!((SoftElementInfo)this.n.vctSofts.get(i1)).pkgname.equals(this.h));
    }
    label683: label849: label983: label1007: for (int i2 = 1; ; i2 = 0)
    {
      if (i2 != 0)
        if (!this.c)
        {
          if (!Environment.getExternalStorageState().equals("mounted"))
            break;
          this.c = true;
          if (!this.f)
          {
            String str5 = this.m.a.getString("Pic_Camera_Dir", "");
            String str6 = this.m.a.getString("movice_camera_dir", "");
            if ((str5 == null) || (str5.equals("")) || (str6 == null) || (str6.equals("")))
              break label849;
            ArrayList localArrayList;
            int i4;
            if ((str5.equals(str6)) && (str5.indexOf("DCIM") != -1))
            {
              File[] arrayOfFile1 = new File(str5).listFiles();
              if (arrayOfFile1 != null)
              {
                int i6 = 0;
                while (true)
                  if (i6 < arrayOfFile1.length)
                  {
                    File localFile2 = arrayOfFile1[i6];
                    if (localFile2.isDirectory())
                    {
                      String str11 = localFile2.getAbsolutePath();
                      if (str11.indexOf("/.") == -1)
                      {
                        px.a locala5 = new px.a(str11);
                        locala5.startWatching();
                        this.g.add(locala5);
                      }
                    }
                    i6++;
                    continue;
                    i1++;
                    break;
                  }
              }
              localArrayList = fi.a();
              if (localArrayList != null)
                i4 = 0;
            }
            else
            {
              while (i4 < localArrayList.size())
              {
                String str8 = (String)localArrayList.get(i4);
                String str9 = str8 + "/DCIM";
                if (str5.indexOf(str9) == -1)
                {
                  File[] arrayOfFile2 = new File(str9).listFiles();
                  if (arrayOfFile2 != null)
                    for (int i5 = 0; i5 < arrayOfFile2.length; i5++)
                    {
                      File localFile1 = arrayOfFile2[i5];
                      if (localFile1.isDirectory())
                      {
                        String str10 = localFile1.getAbsolutePath();
                        if ((str10.indexOf("/.") == -1) && (!str10.equals(str5)) && (!str10.equals(str6)))
                        {
                          px.a locala4 = new px.a(str10);
                          locala4.startWatching();
                          this.g.add(locala4);
                        }
                      }
                    }
                }
                else
                {
                  i4++;
                  continue;
                  px.a locala2 = new px.a(str5);
                  locala2.startWatching();
                  this.g.add(locala2);
                  px.a locala3 = new px.a(str6);
                  locala3.startWatching();
                  this.g.add(locala3);
                }
              }
            }
            this.q.clear();
            this.v.a();
            this.v.a(this);
            this.f = true;
          }
          if (this.l == null)
            this.l = new bgj(this.k);
          String str4 = "";
          if (this.t.size() > 0)
            str4 = (String)this.t.get(-1 + this.t.size());
          this.l.a(this.p, str4);
          if (this.p)
            this.p = false;
        }
      while (true)
        if ((this.c) && (zo.a().a(paramRunningTaskInfo.topActivity)))
        {
          this.c = false;
          if (this.l != null)
            this.l.a();
          this.i.clear();
          this.j.clear();
          this.t.clear();
          break;
          for (int i3 = 0; i3 < this.q.size(); i3++)
          {
            String str7 = (String)this.q.get(i3);
            if (str7.indexOf("/.") == -1)
            {
              px.a locala1 = new px.a(str7);
              locala1.startWatching();
              this.g.add(locala1);
            }
          }
          break label683;
          if (this.c)
          {
            c();
            if ((this.l == null) || (!str3.equals(this.k.getPackageName())))
              break label983;
            this.p = true;
          }
        }
      while (true)
      {
        this.c = false;
        if (this.l == null)
          break label786;
        this.l.a();
        break label786;
        break;
        this.i.clear();
        this.j.clear();
        this.t.clear();
      }
    }
  }

  public final void b()
  {
    String str1 = this.m.a.getString("Pic_Camera_Dir", "");
    String str2 = this.m.a.getString("movice_camera_dir", "");
    if ((str1 != null) && (!str1.equals("")) && (str2 != null) && (!str2.equals("")))
      this.u = true;
    while (true)
    {
      return;
      if (this.q.size() > 0)
        this.u = true;
      else
        new Thread(new py(this)).start();
    }
  }

  public final void c()
  {
    for (int i1 = 0; i1 < this.g.size(); i1++)
      ((px.a)this.g.get(i1)).stopWatching();
    this.g.clear();
    this.v.b(this);
    this.v.b();
    this.f = false;
  }

  public final ArrayList<String> d()
  {
    return this.t;
  }

  public final class a extends FileObserver
  {
    private String a;
    private String b;
    private boolean c;
    private boolean d;

    public a(String arg2)
    {
      super(410);
      this.a = str;
    }

    public final void onEvent(int paramInt, String paramString)
    {
      switch (paramInt)
      {
      default:
      case 8:
      case 16:
      case 128:
      case 256:
      case 2:
      }
      while (true)
      {
        return;
        if (px.a(px.this).a.getBoolean("need_save_file_status", true))
        {
          String str2 = paramString.toLowerCase();
          if (px.b(px.this))
          {
            if ((k.b(new File(str2)) == 1) && (this.d))
            {
              px.b(px.this, false);
              if ((px.c(px.this)) && ((px.d(px.this).size() == 0) || (!px.d(px.this).containsKey(paramString)) || ((px.d(px.this).containsKey(paramString)) && (System.currentTimeMillis() - ((Long)px.d(px.this).get(paramString)).longValue() > 1000L))))
              {
                px.d(px.this).put(paramString, Long.valueOf(System.currentTimeMillis()));
                this.b = null;
                this.c = false;
                this.d = false;
                px.a(px.this, this.a + "/" + paramString);
                if (((px.a(px.this).a.getString("movice_camera_dir", "") == null) || (px.a(px.this).a.getString("movice_camera_dir", "").equals(""))) && (!px.b(px.this, this.a)))
                {
                  hm localhm2 = px.a(px.this);
                  String str4 = this.a;
                  localhm2.b.putString("movice_camera_dir", str4).commit();
                }
              }
            }
          }
          else if ((px.e(px.this)) && (k.b(new File(str2)) == 0) && (paramInt != 16) && (this.d))
          {
            px.c(px.this, false);
            if ((px.c(px.this)) && ((px.f(px.this).size() == 0) || (!px.f(px.this).containsKey(paramString)) || ((px.f(px.this).containsKey(paramString)) && (System.currentTimeMillis() - ((Long)px.f(px.this).get(paramString)).longValue() > 1000L))))
            {
              px.f(px.this).put(paramString, Long.valueOf(System.currentTimeMillis()));
              this.b = null;
              this.c = false;
              this.d = false;
              px.a(px.this, this.a + "/" + paramString);
              if (((px.a(px.this).a.getString("Pic_Camera_Dir", "") == null) || (px.a(px.this).a.getString("Pic_Camera_Dir", "").equals(""))) && (!px.b(px.this, this.a)))
              {
                hm localhm1 = px.a(px.this);
                String str3 = this.a;
                localhm1.b.putString("Pic_Camera_Dir", str3).commit();
                continue;
                if (px.a(px.this).a.getBoolean("need_save_file_status", true))
                {
                  String str1 = paramString.toLowerCase();
                  if (this.b == null)
                    this.b = str1;
                  int i;
                  while (true)
                  {
                    i = k.b(new File(str1));
                    if (i != 1)
                      break label767;
                    px.b(px.this, true);
                    break;
                    if (str1.equals(this.b + ".tmp"))
                      this.c = true;
                  }
                  label767: if (i == 0)
                  {
                    px.c(px.this, true);
                  }
                  else if (str1.equals("temp_video"))
                  {
                    px.b(px.this, true);
                    continue;
                    if ((paramString.toLowerCase().equals(this.b)) || (this.c))
                      this.d = true;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     px
 * JD-Core Version:    0.6.2
 */