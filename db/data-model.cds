namespace my.agenda;
//using sap from '@sap/cds/common';
//using { Country, managed } from '@sap/cds/common';

//Definimos la estructura que van a tener los datos (entidades)
entity Personas {
    key ID : Integer;
    nombre : String;
    apellido : String;
    compra : Association to Compras;
}

entity Compras {
    key ID : Integer;
    nombre : String;
    descripcion : String;
    id_compra : Association to many Personas on id_compra.compra = $self;
}

/*
entity cantidadPersonas : managed {
    key ID : UUID;
    personas : Association to Personas;
    pais : Country;
}
*/