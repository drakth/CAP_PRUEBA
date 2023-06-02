namespace my.agenda;
using { Country, managed } from '@sap/cds/common';

entity Personas {
    key ID : Integer;
    nombre : String;
    apellido : String;
    producto : Association to Productos;
    //producto : String;
}

entity Productos {
    key ID : Integer;
    nombre : String;
    descripcion : String;
    //personas : String;
    personas : Association to many Personas on personas.producto = $self;
}

/*
entity cantidadPersonas : managed {
    key ID : UUID;
    personas : Association to Personas;
    pais : Country;
}
*/