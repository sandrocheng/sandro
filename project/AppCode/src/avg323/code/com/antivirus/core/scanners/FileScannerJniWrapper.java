package com.antivirus.core.scanners;

public class FileScannerJniWrapper
{
  static
  {
    System.loadLibrary("FileScanner");
  }

  public native void cancel(int paramInt);

  public native void destroy(int paramInt);

  public native int getFileCount(int paramInt);

  public native String[] scan(int paramInt, String paramString);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.FileScannerJniWrapper
 * JD-Core Version:    0.6.2
 */