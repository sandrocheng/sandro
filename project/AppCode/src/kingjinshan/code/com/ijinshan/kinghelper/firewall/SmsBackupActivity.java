package com.ijinshan.kinghelper.firewall;

import android.os.Bundle;
import android.os.Environment;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.keniu.security.main.BaseTitleActivity;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

public class SmsBackupActivity extends BaseTitleActivity
  implements View.OnClickListener
{
  private static final String a = "SmsBackupActivity";
  private static final SimpleDateFormat b = new SimpleDateFormat("yyyy年MM月dd日 hh:mm:ss");
  private static final String c = Environment.getExternalStorageDirectory() + "/mosecurity/SMSBackup/smsbak.bak";
  private static final String d = Environment.getExternalStorageDirectory() + "/mosecurity/SMSBackup/smsbakd.bak";
  private static final String e = "sms_backup";
  private static final String f = "sms_backup_friend";
  private static final int l = 1;
  private static final int m = 2;
  private TextView g;
  private ProgressBar h;
  private View i;
  private View j;
  private int k = 0;
  private er n;
  private en o;

  private static boolean b(File paramFile1, File paramFile2)
  {
    boolean bool;
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(paramFile1);
      FileOutputStream localFileOutputStream = new FileOutputStream(paramFile2);
      byte[] arrayOfByte = new byte[1024];
      while (true)
      {
        int i1 = localFileInputStream.read(arrayOfByte);
        if (i1 < 0)
          break;
        localFileOutputStream.write(arrayOfByte, 0, i1);
      }
      localFileOutputStream.close();
      localFileInputStream.close();
      bool = true;
    }
    catch (Exception localException)
    {
      bool = false;
    }
    return bool;
  }

  private void c()
  {
    this.o = new en(this);
    this.o.execute(new Void[0]);
  }

  private void d()
  {
    this.n = new er(this);
    this.n.execute(new Void[0]);
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131230903:
    case 2131230904:
    }
    while (true)
    {
      return;
      this.o = new en(this);
      this.o.execute(new Void[0]);
      continue;
      this.n = new er(this);
      this.n.execute(new Void[0]);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2130903067, 2131427720);
    this.g = ((TextView)findViewById(2131230901));
    File localFile1 = new File(d);
    if (!localFile1.exists())
    {
      File localFile2 = new File(c);
      if (localFile2.exists())
      {
        TextView localTextView1 = this.g;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = b.format(new Date(localFile2.lastModified()));
        localTextView1.setText(getString(2131427727, arrayOfObject1));
      }
    }
    while (true)
    {
      this.h = ((ProgressBar)findViewById(2131230902));
      this.i = findViewById(2131230903);
      this.i.setOnClickListener(this);
      this.j = findViewById(2131230904);
      this.j.setOnClickListener(this);
      return;
      this.g.setText(2131427728);
      continue;
      TextView localTextView2 = this.g;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = b.format(new Date(localFile1.lastModified()));
      localTextView2.setText(getString(2131427727, arrayOfObject2));
    }
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool;
    if (paramInt == 4)
      if (this.k == 1)
      {
        aq localaq1 = new aq(this, (byte)0);
        localaq1.a(2131427738);
        localaq1.b(2131427739);
        localaq1.a(17039370, new el(this));
        localaq1.b(17039360, null);
        localaq1.c().show();
        bool = false;
      }
    while (true)
    {
      return bool;
      if (this.k == 2)
      {
        aq localaq2 = new aq(this, (byte)0);
        localaq2.a(2131427738);
        localaq2.b(2131427740);
        localaq2.a(17039370, new em(this));
        localaq2.b(17039360, null);
        localaq2.c().show();
        bool = false;
      }
      else
      {
        bool = super.onKeyUp(paramInt, paramKeyEvent);
        continue;
        bool = super.onKeyUp(paramInt, paramKeyEvent);
      }
    }
  }

  protected void onStop()
  {
    super.onStop();
    if (this.o != null)
    {
      this.o.a();
      this.o = null;
    }
    if (this.n != null)
    {
      this.n.a();
      this.n = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.SmsBackupActivity
 * JD-Core Version:    0.6.2
 */