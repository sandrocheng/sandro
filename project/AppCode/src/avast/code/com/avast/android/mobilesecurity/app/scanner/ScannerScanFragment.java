package com.avast.android.mobilesecurity.app.scanner;

import android.os.Bundle;
import com.avast.android.mobilesecurity.q;
import com.avast.android.mobilesecurity.scan.ScanFragment;

public class ScannerScanFragment extends ScanFragment
{
  public ScannerScanFragment()
  {
    Bundle localBundle = getArguments();
    if (localBundle == null)
      localBundle = new Bundle();
    localBundle.putSerializable("serviceClass", ScannerScanService.class);
    localBundle.putParcelable("logUri", q.a());
    setArguments(localBundle);
  }

  public String a()
  {
    return "/ms/scanner/scan";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.ScannerScanFragment
 * JD-Core Version:    0.6.2
 */