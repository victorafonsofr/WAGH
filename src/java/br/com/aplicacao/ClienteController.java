package br.com.aplicacao;

import com.aplicacao.model.ClienteModel;
import com.aplicacao.dao.Cliente;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import java.util.LinkedHashMap;
import java.util.stream.Collectors;

@Controller
public class ClienteController {
    
    @RequestMapping(value = "/adicionarCliente", method = RequestMethod.GET) 
    public ModelAndView cliente() {
        return new ModelAndView("adicionarCliente", "command", new Cliente()); 
    } 
    
    @RequestMapping(value = "/consultarCliente", method = RequestMethod.GET) 
    public ModelAndView cliente2() {
        return new ModelAndView("consultarCliente", "command", new Cliente()); 
    }
    
    @ModelAttribute("cliente") 
    public Cliente criarClienteModelo() { 
        return new Cliente(); 
    }

    @ModelAttribute("cliente2") 
    public Cliente criarClienteModelo2() { 
        return new Cliente(); 
    }
    
    @RequestMapping(value = "/adicionarCliente", method = RequestMethod.POST) 
    public String adicionarCliente(@ModelAttribute("cliente") @Validated Cliente cli, BindingResult bindingResult, Model modelo) { 
        if (bindingResult.hasErrors()) { 
            return "adicionarCliente";
        } 
        // Adicionando atributos do cliente ao modelo para exibição
        modelo.addAttribute("nome_cliente", cli.getNome_cliente());
        modelo.addAttribute("sexo", cli.getSexo());
        modelo.addAttribute("rg", cli.getRg());
        modelo.addAttribute("cpf", cli.getCpf());
        modelo.addAttribute("data_nasc", cli.getData_nasc());
        modelo.addAttribute("email", cli.getCadastro()); // "Cadastro" adaptado para email
        
        inserirClienteBanco(cli);
        return "resultadoCliente"; 
    }
    
    @RequestMapping(value = "/consultarCliente", method = RequestMethod.POST) 
    public String consultarCliente(@ModelAttribute("cliente2") Cliente cli, Model modelo) { 
       
        Cliente dadosCliente = consultarClienteBancoCodigo(cli.getCod_cliente());
        
        modelo.addAttribute("nome_cliente", dadosCliente.getNome_cliente()); 
        modelo.addAttribute("cod_cliente", dadosCliente.getCod_cliente());
        modelo.addAttribute("cpf", dadosCliente.getCpf());
        modelo.addAttribute("sexo", dadosCliente.getSexo());
        return "consultarCliente"; 
    }
    
    // Métodos de integração com o modelo de dados (ClientesModel)
    public ArrayList<Cliente> consultarClienteBanco() {
        ClienteModel con = new ClienteModel();
        ArrayList<Cliente> lista = con.consultarCliente();
        return lista;
    }
    
    public String inserirClienteBanco(Cliente cli) {
        ClienteModel con = new ClienteModel();
        String res = con.inserirCliente(cli);
        return res;
    }
    
    public Cliente consultarClienteBancoCodigo(int codigo) {
        ClienteModel con = new ClienteModel();
        Cliente cliente = con.consultarClienteCodigo(codigo);
        return cliente;
    }

    @ModelAttribute("webConsultaClientes") 
    public Map<Integer, String> webConsultaClientes() { 
        ArrayList<Cliente> con = consultarClienteBanco();
        
        Map<Integer, String> consultaClientes = new HashMap<>();
        for (int i = 0; i < con.size(); i++)
            consultaClientes.put(con.get(i).getCod_cliente(), con.get(i).getNome_cliente());
        return ordenarMap(consultaClientes);
    }

    public Map<Integer, String> ordenarMap(Map<Integer, String> consultaClientes) {
        return consultaClientes.entrySet()
            .stream()
            .sorted(Map.Entry.comparingByValue())
            .collect(Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue, (e1, e2) -> e1, LinkedHashMap::new));
    }
}
