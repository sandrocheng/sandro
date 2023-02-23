package com.sandro.test.aosp_lib.inner;

import android.util.Log;

import com.sandro.test.aosp_lib.spublic.LogInterface;

public class Slog implements LogInterface {
    @Override
    public void d(String msg) {
        Log.d("Slog",msg);
    }
}
