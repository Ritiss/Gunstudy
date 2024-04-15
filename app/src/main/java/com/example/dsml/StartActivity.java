package com.example.dsml;

import android.content.Intent;
import android.widget.Button;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;

public class StartActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_start);


        Button ButtonLogin = findViewById(R.id.buttonLogin);


        ButtonLogin.setOnClickListener(v -> {
            Intent MaIntent = new Intent(StartActivity.this, LoginActivity.class);
            startActivity(MaIntent);


        });


        Button ButtonRegister = findViewById(R.id.buttonRegister);


        ButtonRegister.setOnClickListener(v -> {
            Intent MaIntent = new Intent(StartActivity.this, RegisterActivity.class);
            startActivity(MaIntent);


        });
    }
}