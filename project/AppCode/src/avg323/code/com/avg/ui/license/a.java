package com.avg.ui.license;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Messenger;
import android.text.method.SingleLineTransformationMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.avg.ui.license.qrreader.general.CaptureActivity;
import java.util.Collection;
import java.util.Iterator;

public class a extends com.avg.ui.general.fragments.c
{
  private EditText Z;
  private ProgressDialog aa;
  private AlertDialog ab;
  private Button ac;
  private boolean ad;
  private Handler ae = new b(this);
  private BroadcastReceiver af;
  private String ag = "";
  private String ah = "";
  private String ai = "";
  private String aj = null;

  private void F()
  {
    String str1 = "";
    if (this.Z != null)
      str1 = this.Z.getText().toString();
    String str2 = "";
    com.avg.toolkit.e.g localg = new com.avg.toolkit.e.g(this.Y.getApplicationContext());
    if (localg != null)
      str2 = localg.c();
    if (str1.equals(str2))
      this.ab = a(this.Y.getString(com.avg.ui.general.g.license_invalid_title), this.Y.getString(com.avg.ui.general.g.license_in_use));
    while (true)
    {
      return;
      if (!"".equals(str1))
      {
        this.aa = ProgressDialog.show(this.Y, this.Y.getString(com.avg.ui.general.g.license_activation_pro_title), this.Y.getString(com.avg.ui.general.g.please_wait), false, false, null);
        Bundle localBundle = new Bundle();
        localBundle.putString("__SAD", this.Z.getText().toString());
        localBundle.putParcelable("__SAH", new Messenger(this.ae));
        com.avg.toolkit.f.a(this.Y, 4500, 4501, localBundle);
      }
      else
      {
        this.ab = a(this.Y.getString(com.avg.ui.general.g.license_invalid_title), this.Y.getString(com.avg.ui.general.g.license_invalid_body));
      }
    }
  }

  private AlertDialog a(String paramString1, String paramString2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.Y);
    localBuilder.setTitle(paramString1);
    localBuilder.setIcon(com.avg.ui.general.c.dlg_ic_license);
    localBuilder.setMessage(paramString2);
    localBuilder.setPositiveButton(this.Y.getString(com.avg.ui.general.g.ok), new i(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
    return localAlertDialog;
  }

  private View a(View paramView)
  {
    TextView localTextView1 = (TextView)paramView.findViewById(com.avg.ui.general.d.tv_scan_qr);
    TextView localTextView2 = (TextView)paramView.findViewById(com.avg.ui.general.d.tv_text2);
    localTextView1.setText(this.ah);
    TextView localTextView3 = (TextView)paramView.findViewById(com.avg.ui.general.d.tv_or);
    localTextView3.setText(this.Y.getString(com.avg.ui.general.g.or));
    ((TextView)paramView.findViewById(com.avg.ui.general.d.tv_enter_manually)).setText(this.Y.getString(com.avg.ui.general.g.license_activation_enter_manually));
    localTextView2.setText(this.ai);
    this.Z = ((EditText)paramView.findViewById(com.avg.ui.general.d.edit_code));
    this.Z.setImeOptions(6);
    this.Z.setInputType(1073742079);
    com.avg.toolkit.e.g localg = new com.avg.toolkit.e.g(this.Y);
    if (localg != null);
    for (String str = localg.d(); ; str = "")
    {
      TextView localTextView4 = (TextView)paramView.findViewById(com.avg.ui.general.d.tv_current_license);
      localTextView4.setVisibility(0);
      localTextView4.setText(this.Y.getString(com.avg.ui.general.g.current_license) + "\n" + str);
      Button localButton = (Button)paramView.findViewById(com.avg.ui.general.d.btn_scan_qr);
      if (this.ad)
      {
        localButton.setVisibility(0);
        localButton.setOnClickListener(new d(this));
      }
      while (true)
      {
        this.ac = ((Button)paramView.findViewById(com.avg.ui.general.d.btn_ok));
        this.ac.setText(this.Y.getString(com.avg.ui.general.g.ok));
        if (this.aj == null)
          this.ac.setEnabled(false);
        this.ac.setOnClickListener(new e(this));
        if (this.Y.o())
          this.ac.setVisibility(8);
        this.Z.addTextChangedListener(new f(this));
        if (this.aj != null)
        {
          this.Z.setText(this.aj);
          this.Z.setEnabled(false);
        }
        return paramView;
        localButton.setVisibility(8);
        localTextView3.setVisibility(8);
        localTextView1.setVisibility(8);
      }
    }
  }

  private void a(Collection paramCollection)
  {
    Intent localIntent = new Intent(this.Y.getApplicationContext(), CaptureActivity.class);
    localIntent.addCategory("android.intent.category.DEFAULT");
    localIntent.setAction("SCAN_QR");
    if (paramCollection != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      Iterator localIterator = paramCollection.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (localStringBuilder.length() > 0)
          localStringBuilder.append(',');
        localStringBuilder.append(str);
      }
      localIntent.putExtra("SCAN_FORMATS", localStringBuilder.toString());
    }
    localIntent.addFlags(67108864);
    localIntent.addFlags(524288);
    a(localIntent, 49374);
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (paramViewGroup == null);
    for (View localView = null; ; localView = a(paramLayoutInflater.inflate(com.avg.ui.general.e.enter_license, paramViewGroup, false)))
      return localView;
  }

  public void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    String str;
    int i;
    if ((paramInt1 == 49374) && (paramInt2 == -1))
    {
      str = paramIntent.getStringExtra("SCAN_RESULT");
      paramIntent.getStringExtra("SCAN_RESULT_FORMAT");
      paramIntent.getByteArrayExtra("SCAN_RESULT_BYTES");
      i = paramIntent.getIntExtra("SCAN_RESULT_ORIENTATION", -2147483648);
      if (i != -2147483648)
        break label98;
    }
    while (true)
    {
      paramIntent.getStringExtra("SCAN_RESULT_ERROR_CORRECTION_LEVEL");
      if (str != null)
      {
        this.Z.setText(str);
        if (!"".equals(str))
          this.ac.setEnabled(true);
      }
      return;
      label98: Integer.valueOf(i);
    }
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    Bundle localBundle = this.Y.getIntent().getExtras();
    this.ag = this.Y.getString(com.avg.ui.general.g.license_activation_block_title);
    this.ah = this.Y.getString(com.avg.ui.general.g.license_activation_scan_qr);
    if (localBundle != null)
    {
      this.ag = localBundle.getString("title");
      this.ah = localBundle.getString("firest_edit_text");
      this.aj = localBundle.getString("lcc");
    }
    this.ad = this.Y.getPackageManager().hasSystemFeature("android.hardware.camera");
    this.Y.getWindow().setSoftInputMode(2);
  }

  public Dialog c(Bundle paramBundle)
  {
    return new AlertDialog.Builder(this.Y).setView(q()).setIcon(com.avg.ui.general.c.dlg_ic_license).setTitle(this.ag).setView(a(this.Y.getLayoutInflater().inflate(com.avg.ui.general.e.enter_license, null))).setPositiveButton(com.avg.ui.general.g.ok, new h(this)).setNegativeButton(com.avg.ui.general.g.cancel, new g(this)).create();
  }

  public void r()
  {
    super.r();
    if (this.Z != null)
    {
      this.Z.setTransformationMethod(new SingleLineTransformationMethod());
      this.Z.setInputType(1);
    }
  }

  public void t()
  {
    if (this.aa != null)
    {
      this.aa.dismiss();
      this.aa = null;
    }
    if (this.ab != null)
      this.ab = null;
    if (this.af != null)
    {
      this.Y.unregisterReceiver(this.af);
      this.af = null;
    }
    super.t();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.a
 * JD-Core Version:    0.6.2
 */