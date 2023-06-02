using my.agenda as my from '../db/data-model'; //Le indicamos donde estan los modelos de datos.

service AgendaService {
  //Definimos el servicio que define dos entidades.
  entity Personas @readonly as projection on my.Personas;
  entity Productos @readonly as projection on my.Compras;
  //entity cantidadPersonas @insertonly as projection on my.cantidadPersonas;
}