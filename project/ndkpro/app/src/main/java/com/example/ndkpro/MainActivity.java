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

        btnInit();
    }

    private void btnInit() {
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

        Button btn_asyncTask = binding.asyncTask;
        btn_asyncTask.setOnClickListener(new View.OnClickListener(){

            @Override
            public void onClick(View v) {
                new Thread(){
                    public void run(){
                        NativeThreadAgent.startAsyncTask();
                    }
                }.start();

            }
        });

        Button btn_packagedTask = binding.packagedTask;
        btn_packagedTask.setOnClickListener(new View.OnClickListener(){

            @Override
            public void onClick(View v) {
                new Thread(){
                    public void run(){
                        NativeThreadAgent.startPackagedTask();
                    }
                }.start();

            }
        });

        Button btn_promise= binding.promise;
        btn_promise.setOnClickListener(new View.OnClickListener(){

            @Override
            public void onClick(View v) {
                new Thread(){
                    public void run(){
                        NativeThreadAgent.startPromise();
                    }
                }.start();

            }
        });

        binding.future.setOnClickListener(new View.OnClickListener(){

            @Override
            public void onClick(View v) {
                new Thread(){
                    public void run(){
                        NativeThreadAgent.startFutureTest();
                    }
                }.start();

            }
        });
        binding.sharedFurure.setOnClickListener(new View.OnClickListener(){

            @Override
            public void onClick(View v) {
                new Thread(){
                    public void run(){
                        NativeThreadAgent.startSharedFutureTest();
                    }
                }.start();

            }
        });
        binding.atomic.setOnClickListener(new View.OnClickListener(){

            @Override
            public void onClick(View v) {
                new Thread(){
                    public void run(){
                        NativeThreadAgent.atomicTest();
                    }
                }.start();

            }
        });
    }


}