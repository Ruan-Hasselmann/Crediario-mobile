import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario de cliente'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              final isValid = _form.currentState!.validate();
              if (isValid) {
                _form.currentState!.save();
                Navigator.of(context).pop();
              }
            },
            icon: Icon(Icons.save),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
            key: _form,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nome'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nome inválido';
                    }

                    return null;
                  },
                  onSaved: (value) {
                    print(value);
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Cpf'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Cpf inválido';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'RG'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'RG inválido';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Telefone'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Telefone inválido';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Vendedor'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Vendedor inválido';
                    }
                    return null;
                  },
                )
              ],
            )),
      ),
    );
  }
}
