package com.sandro.test.aosp_lib;

import com.sandro.test.aosp_lib.inner.Slog;
import com.sandro.test.aosp_lib.spublic.LogInterface;

public class LogBuild {
    private static LogInterface log = new Slog();
    public static LogInterface create(){
        return log;
    }
}
