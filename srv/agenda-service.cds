using my.agenda as my from '../db/data-model';

service AgendaService {
  entity Personas @readonly as projection on my.Personas;
  entity Productos @readonly as projection on my.Productos;
  //entity cantidadPersonas @insertonly as projection on my.cantidadPersonas;
}