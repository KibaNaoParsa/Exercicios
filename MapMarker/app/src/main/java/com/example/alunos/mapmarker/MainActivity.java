package com.example.alunos.mapmarker;

import android.Manifest;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.support.v4.app.ActivityCompat;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.media.AudioManager;
import android.media.MediaPlayer;

public class MainActivity extends Activity {

    Button btnShowLocation;
    Button btnMapa;
    TextView txtLatitude;
    TextView txtLongitude;
    private static final int REQUEST_CODE_PERMISSION = 2;
    String mPermission = Manifest.permission.ACCESS_FINE_LOCATION;
    GPSTracker gps;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        /*try {
            if (ActivityCompat.checkSelfPermission(this, mPermission)
                    != PackageManager.PERMISSION_GRANTED) {

                ActivityCompat.requestPermissions(this, new String []{mPermission}, REQUEST_CODE_PERMISSION);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }*/

        btnShowLocation = (Button) findViewById(R.id.btnVerificar);
        txtLatitude = (TextView) findViewById(R.id.txtLatitude);
        txtLongitude = (TextView) findViewById(R.id.txtLongitude);

        btnShowLocation.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {
                gps = new GPSTracker(MainActivity.this);

                if (gps.canGetLocation()) {
                    double latitude = gps.getLatitude();
                    double longitude = gps.getLongitude();

                    txtLatitude.setText(String.valueOf(latitude));
                    txtLongitude.setText(String.valueOf(longitude));
                } else {
                    txtLatitude.setText("Não disponível...");
                    txtLongitude.setText("Não disponível...");
                    gps.showSettingsAlert();
                }
            }

        });

        btnMapa = (Button) findViewById(R.id.btnMapa);

        btnMapa.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent it = new Intent (MainActivity.this, MapsActivity.class);
                startActivity(it);
            }
        });

        AudioManager mAudioManager;
        int volume;

        mAudioManager = (AudioManager) getSystemService(Context.AUDIO_SERVICE);

        volume = mAudioManager.getStreamVolume(AudioManager.STREAM_MUSIC);
        mAudioManager.setStreamVolume(AudioManager.STREAM_MUSIC, mAudioManager.getStreamMaxVolume(AudioManager.STREAM_MUSIC), 0);


        MediaPlayer ring = MediaPlayer.create(MainActivity.this, R.raw.exercicio);
        ring.start();
    }
}
