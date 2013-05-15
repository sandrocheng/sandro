package com.avast.android.mobilesecurity.app.scanner;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.avast.android.generic.util.ak;
import com.avast.android.generic.util.ga.TrackedDialogFragment;
import java.io.File;

public class ReportDialogFragment extends TrackedDialogFragment
{
  private Uri a;
  private int b;
  private String c;
  private String d;
  private String e;
  private k f;

  public ReportDialogFragment()
  {
  }

  public ReportDialogFragment(Bundle paramBundle)
  {
    setArguments(paramBundle);
  }

  public String a()
  {
    return "/ms/scanner/reportDialog";
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (!ak.a(getActivity(), this.a))
    {
      Toast.makeText(getActivity(), getText(2131493471), 1).show();
      if (this.f != null)
        this.f.a();
      dismiss();
    }
  }

  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof k))
      this.f = ((k)paramActivity);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Bundle localBundle = getArguments();
    if ((localBundle == null) || (localBundle.getParcelable("uri") == null))
      dismiss();
    while (true)
    {
      return;
      this.a = ((Uri)localBundle.getParcelable("uri"));
      this.b = Integer.parseInt(localBundle.getString("result"));
      this.c = localBundle.getString("infectionType");
      this.d = localBundle.getString("email");
      this.e = localBundle.getString("description");
    }
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903133, paramViewGroup, false);
    localView.findViewById(2131165380).setOnClickListener(new i(this));
    EditText localEditText1 = (EditText)localView.findViewById(2131165506);
    EditText localEditText2 = (EditText)localView.findViewById(2131165508);
    Button localButton = (Button)localView.findViewById(2131165509);
    localButton.setOnClickListener(new j(this, localEditText1, localEditText2));
    TextView localTextView1 = (TextView)localView.findViewById(2131165503);
    TextView localTextView2 = (TextView)localView.findViewById(2131165504);
    float f1;
    if ("file".equals(this.a.getScheme()))
    {
      localTextView1.setText(getText(2131493410));
      localTextView2.setText(this.a.getPath());
      f1 = (float)new File(this.a.getPath()).length() / 1024.0F / 1024.0F;
    }
    while (true)
    {
      float f2 = Math.max(f1, 0.1F);
      Object[] arrayOfObject1 = new Object[1];
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Float.valueOf(f2);
      arrayOfObject1[0] = String.format("%.1f", arrayOfObject2);
      localButton.setText(getString(2131493467, arrayOfObject1));
      Dialog localDialog = getDialog();
      localDialog.setTitle(getText(2131493466));
      localDialog.setCancelable(true);
      if (paramBundle == null)
      {
        ((TextView)localView.findViewById(2131165508)).setText(this.d);
        ((TextView)localView.findViewById(2131165506)).setText(this.e);
      }
      return localView;
      if ("package".equals(this.a.getScheme()))
      {
        localTextView1.setText(getText(2131493409));
        String str = this.a.toString().substring("package:".length());
        try
        {
          PackageManager localPackageManager = getActivity().getPackageManager();
          ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(str, 0);
          localTextView2.setText(localApplicationInfo.loadLabel(localPackageManager));
          long l = new File(localApplicationInfo.sourceDir).length();
          f1 = (float)l / 1024.0F / 1024.0F;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          localTextView2.setText(str);
        }
      }
    }
    while (true)
    {
      f1 = 0.0F;
      break;
      localTextView2.setText(this.a.toString());
    }
  }

  public void onDismiss(DialogInterface paramDialogInterface)
  {
    super.onDismiss(paramDialogInterface);
    if (this.f != null)
      this.f.b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.ReportDialogFragment
 * JD-Core Version:    0.6.2
 */