package com.example.alunos.listadinamica;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;

import com.example.alunos.listadinamica.model.Pessoa;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    ArrayList<Pessoa> vetor = new ArrayList<Pessoa>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void showList(View v) {
        Intent it = new Intent(this, mostraListaDinamica.class);
        it.putParcelableArrayListExtra("vetor", vetor);
        startActivity(it);

    }

    public void cadastrar() {

        EditText nome1 = (EditText) findViewById(R.id.editNome);
        String nome = nome1.getText().toString();

        EditText nome2 = (EditText) findViewById(R.id.editTelefone);
        String telefone = nome2.getText().toString();

        EditText nome3 = (EditText) findViewById(R.id.editIdade);
        int idade = Integer.parseInt(nome3.getText().toString());

        vetor.add(new Pessoa(nome, telefone, idade));
    }
}
