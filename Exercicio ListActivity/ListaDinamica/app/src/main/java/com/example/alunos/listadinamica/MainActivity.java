package com.example.alunos.listadinamica;

import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        AudioManager mAudioManager;
        int volume;

        mAudioManager = (AudioManager) getSystemService(Context.AUDIO_SERVICE);

        volume = mAudioManager.getStreamVolume(AudioManager.STREAM_MUSIC);
        mAudioManager.setStreamVolume(AudioManager.STREAM_MUSIC, mAudioManager.getStreamMaxVolume(AudioManager.STREAM_MUSIC), 0);


        MediaPlayer ring = MediaPlayer.create(MainActivity.this, R.raw.exercicio);
        ring.start();
    }

    public void showList(View v) {
        Intent it = new Intent(this, mostraListaDinamica.class);
        startActivity(it);

    }
}
