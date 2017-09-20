package com.example.alunos.sqlite;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.example.alunos.sqlite.R;

/**
 * Created by alunos on 20/09/17.
 */

public class InsereActivity extends AppCompatActivity {

    @Override
    protected void onCreate (Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_insere);

        Button botao = (Button) findViewById(R.id.btnSalvar);

        botao.setOnClickListener(new View.OnClickListener() {
            public  void onClick(View v) {
                BancoController crud = new BancoController(getBaseContext());
                EditText titulo1 = (EditText) findViewById(R.id.txtTitulo);
                EditText autor1 = (EditText) findViewById(R.id.txtAutor);
                EditText editora1 = (EditText) findViewById(R.id.txtEditora);

                String titulo = titulo1.getText().toString();
                String autor = autor1.getText().toString();
                String editora = editora1.getText().toString();
                String resultado;

                resultado = crud.insereDado(titulo, autor, editora);
                Toast.makeText(getApplicationContext(), resultado, Toast.LENGTH_LONG).show();
            }
        });
    }

}
