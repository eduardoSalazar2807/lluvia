   /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import Modelo.Contratos;
import java.util.List;

/**
 *
 * @author Diegoandres
 */
public interface CRUDCONTRATOS {
    public List listarContratos();
    public Contratos list(int id_contrato);
    public boolean add(Contratos per);
    public boolean edit(Contratos per);
    public boolean eliminar(int id_contrato);
}
