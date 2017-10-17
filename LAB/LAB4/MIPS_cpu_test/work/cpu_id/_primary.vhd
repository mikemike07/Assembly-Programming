library verilog;
use verilog.vl_types.all;
entity cpu_id is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        iack            : in     vl_logic;
        m_regwrite      : in     vl_logic;
        wb_regwrite     : in     vl_logic;
        wb_w_cp0reg     : in     vl_logic;
        wb_write_mask   : in     vl_logic_vector(3 downto 0);
        mul_update_a    : in     vl_logic;
        mul_update_b    : in     vl_logic;
        mul_forward_a   : in     vl_logic_vector(1 downto 0);
        mul_forward_b   : in     vl_logic_vector(1 downto 0);
        mul_stall       : in     vl_logic;
        id_pca4         : in     vl_logic_vector(31 downto 0);
        id_ins          : in     vl_logic_vector(31 downto 0);
        ex_write_num    : in     vl_logic_vector(4 downto 0);
        m_result_bus    : in     vl_logic_vector(31 downto 0);
        m_write_num     : in     vl_logic_vector(4 downto 0);
        m_memread       : in     vl_logic;
        wb_write_bus    : in     vl_logic_vector(31 downto 0);
        wb_write_num    : in     vl_logic_vector(4 downto 0);
        stall_n         : out    vl_logic;
        id_pc_src       : out    vl_logic_vector(1 downto 0);
        ex_alu_src      : out    vl_logic;
        ex_alu_op       : out    vl_logic_vector(3 downto 0);
        ex_alu_move_cond: out    vl_logic_vector(1 downto 0);
        ex_reg2sn       : out    vl_logic;
        ex_sht          : out    vl_logic;
        ex_shd          : out    vl_logic;
        ex_shp          : out    vl_logic;
        ex_result_sel   : out    vl_logic_vector(1 downto 0);
        ex_reg_dst      : out    vl_logic_vector(1 downto 0);
        ex_memwrite     : out    vl_logic;
        ex_memread      : out    vl_logic;
        ex_store_op     : out    vl_logic_vector(2 downto 0);
        ex_mhi_en       : out    vl_logic;
        ex_mlo_en       : out    vl_logic;
        ex_align_op     : out    vl_logic_vector(2 downto 0);
        ex_mulreg_sel   : out    vl_logic;
        ex_wbdata_sel   : out    vl_logic_vector(1 downto 0);
        ex_regwrite     : out    vl_logic;
        ex_cpwren       : out    vl_logic;
        ex_cprrsel      : out    vl_logic;
        ex_w_cp0reg     : out    vl_logic;
        id_add_out      : out    vl_logic_vector(31 downto 0);
        id_jump_pc      : out    vl_logic_vector(31 downto 0);
        id_rs_data      : out    vl_logic_vector(31 downto 0);
        ex_pca4         : out    vl_logic_vector(31 downto 0);
        ex_ins_rs       : out    vl_logic_vector(4 downto 0);
        ex_ins_rt       : out    vl_logic_vector(4 downto 0);
        ex_ins_rd       : out    vl_logic_vector(4 downto 0);
        ex_ins_sa       : out    vl_logic_vector(4 downto 0);
        ex_a_bus        : out    vl_logic_vector(31 downto 0);
        ex_b_bus        : out    vl_logic_vector(31 downto 0);
        ex_extend_bus   : out    vl_logic_vector(31 downto 0);
        mul_a           : out    vl_logic_vector(31 downto 0);
        mul_b           : out    vl_logic_vector(31 downto 0);
        mul_rs          : out    vl_logic_vector(4 downto 0);
        mul_rt          : out    vl_logic_vector(4 downto 0);
        mul_start       : out    vl_logic;
        mul_sign        : out    vl_logic;
        mul_type        : out    vl_logic_vector(1 downto 0);
        id2intctl       : out    vl_logic_vector(31 downto 0);
        id_intctl_epc   : in     vl_logic_vector(31 downto 0);
        id_intctl_cause : in     vl_logic_vector(31 downto 0);
        id_intctl_status: in     vl_logic_vector(31 downto 0)
    );
end cpu_id;
