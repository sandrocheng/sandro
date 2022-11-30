package com.example.ndkpro;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;

import com.example.ndkpro.databinding.ActivityMainBinding;
import com.sandro.nativelib.NativeAgent;

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
                + NativeAgent.getInstance().stringFromCJNI();
        tv.setText(str);
    }


}