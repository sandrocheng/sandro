package org.antivirus.license.qrreader.general;

 enum CaptureActivityHandler$State
{
  static
  {
    DONE = new State("DONE", 2);
    State[] arrayOfState = new State[3];
    arrayOfState[0] = PREVIEW;
    arrayOfState[1] = SUCCESS;
    arrayOfState[2] = DONE;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.general.CaptureActivityHandler.State
 * JD-Core Version:    0.6.2
 */