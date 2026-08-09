module Basic_gates (input a, b,output
not_out,and_out,nand_out,or_out,nor_out,xor_out,xnor_out);
    supply1 VDD;
    supply0 GND;

    // NOT gate
    pmos p_not(not_out, VDD, a);
    nmos n_not(not_out, GND, a);

    // NAND gate
    wire nand_pullup;
    wire nand_pmos_net;

    pmos p_nand1(nand_pullup, VDD, a);
    pmos p_nand2(nand_pullup, VDD, b);

    wire nand_nmos_net;
    nmos n_nand1(nand_nmos_net, GND, b);
    nmos n_nand2(nand_pullup, nand_nmos_net, a);

    assign nand_out = nand_pullup;

    // AND gate = NOT(NAND)
    wire and_net;
    pmos p_and(and_net, VDD, nand_pullup);
    nmos n_and(and_net, GND, nand_pullup);
    assign and_out = and_net;

    // NOR gate
    wire nor_pullup;
    pmos p_nor1(nor_pullup, VDD, a);
    pmos p_nor2(nor_pullup, VDD, b);

    wire nor_nmos_net;
    nmos n_nor1(nor_nmos_net, GND, b);
    nmos n_nor2(nor_pullup, nor_nmos_net, a);
    assign nor_out = nor_pullup;

    // OR gate = NOT(NOR)
    wire or_net;
    pmos p_or(or_net, VDD, nor_pullup);
    nmos n_or(or_net, GND, nor_pullup);
    assign or_out = or_net;

    // XOR gate (simplif ied using gates)
    wire na, nb, a_and_nb, b_and_na, xor_temp;
    not (na, a);
    not (nb, b);
    and (a_and_nb, a, nb);
    and (b_and_na, b, na);
    or (xor_temp, a_and_nb, b_and_na);
    assign xor_out = xor_temp;

    // XNOR = NOT(XOR)
    wire xnor_temp;
    pmos p_xnor(xnor_temp, VDD, xor_temp);
    nmos n_xnor(xnor_temp, GND, xor_temp);
    assign xnor_out = xnor_temp;

endmodule
