package com.example.aosp_sandro;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

import com.sandro.test.aosp_lib.LogBuild;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        LogBuild.create().d("start");
    }
}