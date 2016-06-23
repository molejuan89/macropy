/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function fecha(){
    var d = new Date();
            var mm=new Date();
            var m2 = mm.getMonth() + 1;
            var mesok = (m2 < 10) ? '0' + m2 : m2;
            var mesok=new Array(12);
                    mesok[0]="Enero";
                    mesok[1]="Febrero";
                    mesok[2]="Marzo";
                    mesok[3]="Abril";
                    mesok[4]="Mayo";
                    mesok[5]="Junio";
                    mesok[6]="Julio";
                    mesok[7]="Agosto";
                    mesok[8]="Septiembre";
                    mesok[9]="Octubre";
                    mesok[10]="Noviembre";
                    mesok[11]="Diciembre";
            document.write(d.getDate(),'/'+mesok[mm.getMonth()],'/'+d.getFullYear(),
            '<br>'+d.getHours(),':'+d.getMinutes());
    
}


