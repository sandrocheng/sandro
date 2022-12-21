package com.example.ndkpro;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.example.ndkpro.databinding.ActivityMainBinding;
import com.sandro.nativelib.NativeAgent;
import com.sandro.nativelib.NativeCAgent;
import com.sandro.nativelib.NativeThreadAgent;

public class MainActivity extends AppCompatActivity {

    // Used to load the 'native-lib' library on application startup.
    static {
        System.loadLibrary("native-lib");
    }

    private ActivityMainBinding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        // Example of a call to a native method
        TextView tv = binding.sampleText;
        String str = NativeAgent.getInstance().stringFromJNI()
                + "\n"
                + NativeCAgent.stringFromCJNI();
        tv.setText(str);

        Button btn_waitAndNotify = binding.waitAndNotify;
        btn_waitAndNotify.setOnClickListener(new View.OnClickListener(){

            @Override
            public void onClick(View v) {
                new Thread(){
                    public void run(){
                        NativeThreadAgent.waitAndNotifyStart();
                    }
                }.start();

            }
        });
    }


}