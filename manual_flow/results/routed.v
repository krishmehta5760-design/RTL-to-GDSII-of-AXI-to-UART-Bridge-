module axi2uart_bridge_top (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awready,
    s_axi_wready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bvalid,
    s_axi_wvalid,
    uart_clk,
    uart_rst_n,
    uart_tx_out,
    s_axi_awaddr,
    s_axi_bresp,
    s_axi_wdata,
    s_axi_wstrb);
 input s_axi_aclk;
 input s_axi_aresetn;
 output s_axi_awready;
 output s_axi_wready;
 input s_axi_awvalid;
 input s_axi_bready;
 output s_axi_bvalid;
 input s_axi_wvalid;
 input uart_clk;
 input uart_rst_n;
 output uart_tx_out;
 input [3:0] s_axi_awaddr;
 output [1:0] s_axi_bresp;
 input [31:0] s_axi_wdata;
 input [3:0] s_axi_wstrb;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire fifo_rempty;
 wire fifo_rinc;
 wire fifo_wfull;
 wire fifo_winc;
 wire tx_start_reg;
 wire uart_ready;
 wire zero_;
 wire \u_async_fifo/_0_ ;
 wire \u_async_fifo/fifomem/_000_ ;
 wire \u_async_fifo/fifomem/_001_ ;
 wire \u_async_fifo/fifomem/_002_ ;
 wire \u_async_fifo/fifomem/_003_ ;
 wire \u_async_fifo/fifomem/_004_ ;
 wire \u_async_fifo/fifomem/_005_ ;
 wire \u_async_fifo/fifomem/_006_ ;
 wire \u_async_fifo/fifomem/_007_ ;
 wire \u_async_fifo/fifomem/_008_ ;
 wire \u_async_fifo/fifomem/_009_ ;
 wire \u_async_fifo/fifomem/_010_ ;
 wire \u_async_fifo/fifomem/_011_ ;
 wire \u_async_fifo/fifomem/_012_ ;
 wire \u_async_fifo/fifomem/_013_ ;
 wire \u_async_fifo/fifomem/_014_ ;
 wire \u_async_fifo/fifomem/_015_ ;
 wire \u_async_fifo/fifomem/_016_ ;
 wire \u_async_fifo/fifomem/_017_ ;
 wire \u_async_fifo/fifomem/_018_ ;
 wire \u_async_fifo/fifomem/_019_ ;
 wire \u_async_fifo/fifomem/_020_ ;
 wire \u_async_fifo/fifomem/_021_ ;
 wire \u_async_fifo/fifomem/_022_ ;
 wire \u_async_fifo/fifomem/_023_ ;
 wire \u_async_fifo/fifomem/_024_ ;
 wire \u_async_fifo/fifomem/_025_ ;
 wire \u_async_fifo/fifomem/_026_ ;
 wire \u_async_fifo/fifomem/_027_ ;
 wire \u_async_fifo/fifomem/_028_ ;
 wire \u_async_fifo/fifomem/_029_ ;
 wire \u_async_fifo/fifomem/_030_ ;
 wire \u_async_fifo/fifomem/_031_ ;
 wire \u_async_fifo/fifomem/_032_ ;
 wire \u_async_fifo/fifomem/_033_ ;
 wire \u_async_fifo/fifomem/_034_ ;
 wire \u_async_fifo/fifomem/_035_ ;
 wire \u_async_fifo/fifomem/_036_ ;
 wire \u_async_fifo/fifomem/_037_ ;
 wire \u_async_fifo/fifomem/_038_ ;
 wire \u_async_fifo/fifomem/_039_ ;
 wire \u_async_fifo/fifomem/_040_ ;
 wire \u_async_fifo/fifomem/_041_ ;
 wire \u_async_fifo/fifomem/_042_ ;
 wire \u_async_fifo/fifomem/_043_ ;
 wire \u_async_fifo/fifomem/_044_ ;
 wire \u_async_fifo/fifomem/_045_ ;
 wire \u_async_fifo/fifomem/_046_ ;
 wire \u_async_fifo/fifomem/_047_ ;
 wire \u_async_fifo/fifomem/_048_ ;
 wire \u_async_fifo/fifomem/_049_ ;
 wire \u_async_fifo/fifomem/_050_ ;
 wire \u_async_fifo/fifomem/_051_ ;
 wire \u_async_fifo/fifomem/_052_ ;
 wire \u_async_fifo/fifomem/_053_ ;
 wire \u_async_fifo/fifomem/_054_ ;
 wire \u_async_fifo/fifomem/_055_ ;
 wire \u_async_fifo/fifomem/_056_ ;
 wire \u_async_fifo/fifomem/_057_ ;
 wire \u_async_fifo/fifomem/_058_ ;
 wire \u_async_fifo/fifomem/_059_ ;
 wire \u_async_fifo/fifomem/_060_ ;
 wire \u_async_fifo/fifomem/_061_ ;
 wire \u_async_fifo/fifomem/_062_ ;
 wire \u_async_fifo/fifomem/_063_ ;
 wire \u_async_fifo/fifomem/_064_ ;
 wire \u_async_fifo/fifomem/_065_ ;
 wire \u_async_fifo/fifomem/_066_ ;
 wire \u_async_fifo/fifomem/_067_ ;
 wire \u_async_fifo/fifomem/_068_ ;
 wire \u_async_fifo/fifomem/_069_ ;
 wire \u_async_fifo/fifomem/_070_ ;
 wire \u_async_fifo/fifomem/_071_ ;
 wire \u_async_fifo/fifomem/_072_ ;
 wire \u_async_fifo/fifomem/_073_ ;
 wire \u_async_fifo/fifomem/_074_ ;
 wire \u_async_fifo/fifomem/_075_ ;
 wire \u_async_fifo/fifomem/_076_ ;
 wire \u_async_fifo/fifomem/_077_ ;
 wire \u_async_fifo/fifomem/_078_ ;
 wire \u_async_fifo/fifomem/_079_ ;
 wire \u_async_fifo/fifomem/_080_ ;
 wire \u_async_fifo/fifomem/_081_ ;
 wire \u_async_fifo/fifomem/_082_ ;
 wire \u_async_fifo/fifomem/_083_ ;
 wire \u_async_fifo/fifomem/_084_ ;
 wire \u_async_fifo/fifomem/_085_ ;
 wire \u_async_fifo/fifomem/_086_ ;
 wire \u_async_fifo/fifomem/_087_ ;
 wire \u_async_fifo/fifomem/_088_ ;
 wire \u_async_fifo/fifomem/_089_ ;
 wire \u_async_fifo/fifomem/_090_ ;
 wire \u_async_fifo/fifomem/_091_ ;
 wire \u_async_fifo/fifomem/_092_ ;
 wire \u_async_fifo/fifomem/_093_ ;
 wire \u_async_fifo/fifomem/_094_ ;
 wire \u_async_fifo/fifomem/_095_ ;
 wire \u_async_fifo/fifomem/_096_ ;
 wire \u_async_fifo/fifomem/_097_ ;
 wire \u_async_fifo/fifomem/_098_ ;
 wire \u_async_fifo/fifomem/_099_ ;
 wire \u_async_fifo/fifomem/_100_ ;
 wire \u_async_fifo/fifomem/_101_ ;
 wire \u_async_fifo/fifomem/_102_ ;
 wire \u_async_fifo/fifomem/_103_ ;
 wire \u_async_fifo/fifomem/_104_ ;
 wire \u_async_fifo/fifomem/_105_ ;
 wire \u_async_fifo/fifomem/_106_ ;
 wire \u_async_fifo/fifomem/_107_ ;
 wire \u_async_fifo/fifomem/_108_ ;
 wire \u_async_fifo/fifomem/_109_ ;
 wire \u_async_fifo/fifomem/_110_ ;
 wire \u_async_fifo/fifomem/_111_ ;
 wire \u_async_fifo/fifomem/_112_ ;
 wire \u_async_fifo/fifomem/_113_ ;
 wire \u_async_fifo/fifomem/_114_ ;
 wire \u_async_fifo/fifomem/_115_ ;
 wire \u_async_fifo/fifomem/_116_ ;
 wire \u_async_fifo/fifomem/_117_ ;
 wire \u_async_fifo/fifomem/_118_ ;
 wire \u_async_fifo/fifomem/_119_ ;
 wire \u_async_fifo/fifomem/_120_ ;
 wire \u_async_fifo/fifomem/_121_ ;
 wire \u_async_fifo/fifomem/_122_ ;
 wire \u_async_fifo/fifomem/_123_ ;
 wire \u_async_fifo/fifomem/_124_ ;
 wire \u_async_fifo/fifomem/_125_ ;
 wire \u_async_fifo/fifomem/_126_ ;
 wire \u_async_fifo/fifomem/_127_ ;
 wire \u_async_fifo/fifomem/_128_ ;
 wire \u_async_fifo/fifomem/_129_ ;
 wire \u_async_fifo/fifomem/_130_ ;
 wire \u_async_fifo/fifomem/_131_ ;
 wire \u_async_fifo/fifomem/_132_ ;
 wire \u_async_fifo/fifomem/_133_ ;
 wire \u_async_fifo/fifomem/_134_ ;
 wire \u_async_fifo/fifomem/_135_ ;
 wire \u_async_fifo/fifomem/_136_ ;
 wire \u_async_fifo/fifomem/_137_ ;
 wire \u_async_fifo/fifomem/_138_ ;
 wire \u_async_fifo/fifomem/_139_ ;
 wire \u_async_fifo/fifomem/_140_ ;
 wire \u_async_fifo/fifomem/_141_ ;
 wire \u_async_fifo/fifomem/_142_ ;
 wire \u_async_fifo/fifomem/_143_ ;
 wire \u_async_fifo/fifomem/_144_ ;
 wire \u_async_fifo/fifomem/_145_ ;
 wire \u_async_fifo/fifomem/_146_ ;
 wire \u_async_fifo/fifomem/_147_ ;
 wire \u_async_fifo/fifomem/_148_ ;
 wire \u_async_fifo/fifomem/_149_ ;
 wire \u_async_fifo/fifomem/_150_ ;
 wire \u_async_fifo/fifomem/_151_ ;
 wire \u_async_fifo/fifomem/_152_ ;
 wire \u_async_fifo/fifomem/_153_ ;
 wire \u_async_fifo/fifomem/_154_ ;
 wire \u_async_fifo/fifomem/_155_ ;
 wire \u_async_fifo/fifomem/_156_ ;
 wire \u_async_fifo/fifomem/_157_ ;
 wire \u_async_fifo/fifomem/_158_ ;
 wire \u_async_fifo/fifomem/_159_ ;
 wire \u_async_fifo/fifomem/_160_ ;
 wire \u_async_fifo/fifomem/_161_ ;
 wire \u_async_fifo/fifomem/_162_ ;
 wire \u_async_fifo/fifomem/_163_ ;
 wire \u_async_fifo/fifomem/_164_ ;
 wire \u_async_fifo/fifomem/_165_ ;
 wire \u_async_fifo/fifomem/_166_ ;
 wire \u_async_fifo/fifomem/_167_ ;
 wire \u_async_fifo/fifomem/_168_ ;
 wire \u_async_fifo/fifomem/_169_ ;
 wire \u_async_fifo/fifomem/_170_ ;
 wire \u_async_fifo/fifomem/_171_ ;
 wire \u_async_fifo/fifomem/_172_ ;
 wire \u_async_fifo/fifomem/_173_ ;
 wire \u_async_fifo/fifomem/_174_ ;
 wire \u_async_fifo/fifomem/_175_ ;
 wire \u_async_fifo/fifomem/_176_ ;
 wire \u_async_fifo/fifomem/_177_ ;
 wire \u_async_fifo/fifomem/_178_ ;
 wire \u_async_fifo/fifomem/_179_ ;
 wire \u_async_fifo/fifomem/_180_ ;
 wire \u_async_fifo/fifomem/_181_ ;
 wire \u_async_fifo/fifomem/_182_ ;
 wire \u_async_fifo/fifomem/_183_ ;
 wire \u_async_fifo/fifomem/_184_ ;
 wire \u_async_fifo/rptr_empty/_00_ ;
 wire \u_async_fifo/rptr_empty/_01_ ;
 wire \u_async_fifo/rptr_empty/_02_ ;
 wire \u_async_fifo/rptr_empty/_03_ ;
 wire \u_async_fifo/rptr_empty/_04_ ;
 wire \u_async_fifo/rptr_empty/_05_ ;
 wire \u_async_fifo/rptr_empty/_06_ ;
 wire \u_async_fifo/rptr_empty/_07_ ;
 wire \u_async_fifo/rptr_empty/_08_ ;
 wire \u_async_fifo/rptr_empty/_09_ ;
 wire \u_async_fifo/rptr_empty/_10_ ;
 wire \u_async_fifo/rptr_empty/_11_ ;
 wire \u_async_fifo/rptr_empty/_12_ ;
 wire \u_async_fifo/rptr_empty/_13_ ;
 wire \u_async_fifo/rptr_empty/rempty_val ;
 wire \u_async_fifo/wptr_full/_00_ ;
 wire \u_async_fifo/wptr_full/_01_ ;
 wire \u_async_fifo/wptr_full/_02_ ;
 wire \u_async_fifo/wptr_full/_03_ ;
 wire \u_async_fifo/wptr_full/_04_ ;
 wire \u_async_fifo/wptr_full/_05_ ;
 wire \u_async_fifo/wptr_full/_06_ ;
 wire \u_async_fifo/wptr_full/_07_ ;
 wire \u_async_fifo/wptr_full/_08_ ;
 wire \u_async_fifo/wptr_full/_09_ ;
 wire \u_async_fifo/wptr_full/_10_ ;
 wire \u_async_fifo/wptr_full/_11_ ;
 wire \u_async_fifo/wptr_full/_12_ ;
 wire \u_async_fifo/wptr_full/_13_ ;
 wire \u_async_fifo/wptr_full/wfull_val ;
 wire \u_axi_slave/_000_ ;
 wire \u_axi_slave/_001_ ;
 wire \u_axi_slave/_002_ ;
 wire \u_axi_slave/_003_ ;
 wire \u_axi_slave/_004_ ;
 wire \u_axi_slave/_005_ ;
 wire \u_axi_slave/_006_ ;
 wire \u_axi_slave/_007_ ;
 wire \u_axi_slave/_008_ ;
 wire \u_axi_slave/_009_ ;
 wire \u_axi_slave/_010_ ;
 wire \u_axi_slave/_011_ ;
 wire \u_axi_slave/_012_ ;
 wire \u_axi_slave/_013_ ;
 wire \u_axi_slave/_014_ ;
 wire \u_axi_slave/_015_ ;
 wire \u_axi_slave/_016_ ;
 wire \u_axi_slave/_017_ ;
 wire \u_axi_slave/_018_ ;
 wire \u_axi_slave/_019_ ;
 wire \u_axi_slave/_020_ ;
 wire \u_axi_slave/_021_ ;
 wire \u_axi_slave/_022_ ;
 wire \u_axi_slave/_023_ ;
 wire \u_axi_slave/_024_ ;
 wire \u_axi_slave/_025_ ;
 wire \u_axi_slave/_026_ ;
 wire \u_axi_slave/_027_ ;
 wire \u_axi_slave/_028_ ;
 wire \u_axi_slave/_029_ ;
 wire \u_axi_slave/_030_ ;
 wire \u_axi_slave/_031_ ;
 wire \u_axi_slave/_032_ ;
 wire \u_axi_slave/_033_ ;
 wire \u_axi_slave/_034_ ;
 wire \u_axi_slave/_035_ ;
 wire \u_axi_slave/_036_ ;
 wire \u_axi_slave/_037_ ;
 wire \u_axi_slave/_038_ ;
 wire \u_axi_slave/_039_ ;
 wire \u_axi_slave/_040_ ;
 wire \u_axi_slave/_041_ ;
 wire \u_axi_slave/_042_ ;
 wire \u_axi_slave/_043_ ;
 wire \u_axi_slave/_044_ ;
 wire \u_axi_slave/_045_ ;
 wire \u_axi_slave/_046_ ;
 wire \u_axi_slave/_047_ ;
 wire \u_axi_slave/_048_ ;
 wire \u_axi_slave/_049_ ;
 wire \u_axi_slave/_050_ ;
 wire \u_axi_slave/_051_ ;
 wire \u_axi_slave/_052_ ;
 wire \u_axi_slave/_053_ ;
 wire \u_axi_slave/_054_ ;
 wire \u_axi_slave/_055_ ;
 wire \u_axi_slave/_056_ ;
 wire \u_axi_slave/_057_ ;
 wire \u_axi_slave/_058_ ;
 wire \u_axi_slave/_059_ ;
 wire \u_axi_slave/_060_ ;
 wire \u_axi_slave/_061_ ;
 wire \u_axi_slave/_062_ ;
 wire \u_axi_slave/_063_ ;
 wire \u_axi_slave/_064_ ;
 wire \u_axi_slave/_065_ ;
 wire \u_axi_slave/_066_ ;
 wire \u_axi_slave/_067_ ;
 wire \u_axi_slave/_068_ ;
 wire \u_axi_slave/_069_ ;
 wire \u_axi_slave/_070_ ;
 wire \u_axi_slave/_071_ ;
 wire \u_axi_slave/_072_ ;
 wire \u_axi_slave/_073_ ;
 wire \u_axi_slave/_074_ ;
 wire \u_axi_slave/_075_ ;
 wire \u_axi_slave/_076_ ;
 wire \u_axi_slave/_077_ ;
 wire \u_axi_slave/_078_ ;
 wire \u_axi_slave/_079_ ;
 wire \u_axi_slave/_080_ ;
 wire \u_axi_slave/_081_ ;
 wire \u_axi_slave/_082_ ;
 wire \u_axi_slave/_083_ ;
 wire \u_axi_slave/_084_ ;
 wire \u_axi_slave/_085_ ;
 wire \u_axi_slave/_086_ ;
 wire \u_axi_slave/_087_ ;
 wire \u_axi_slave/_088_ ;
 wire \u_axi_slave/_089_ ;
 wire \u_axi_slave/_090_ ;
 wire \u_axi_slave/_091_ ;
 wire \u_axi_slave/_092_ ;
 wire \u_axi_slave/_093_ ;
 wire \u_axi_slave/_094_ ;
 wire \u_axi_slave/_095_ ;
 wire \u_axi_slave/_096_ ;
 wire \u_uart_tx/_000_ ;
 wire \u_uart_tx/_001_ ;
 wire \u_uart_tx/_002_ ;
 wire \u_uart_tx/_003_ ;
 wire \u_uart_tx/_004_ ;
 wire \u_uart_tx/_005_ ;
 wire \u_uart_tx/_006_ ;
 wire \u_uart_tx/_007_ ;
 wire \u_uart_tx/_008_ ;
 wire \u_uart_tx/_009_ ;
 wire \u_uart_tx/_010_ ;
 wire \u_uart_tx/_011_ ;
 wire \u_uart_tx/_012_ ;
 wire \u_uart_tx/_013_ ;
 wire \u_uart_tx/_014_ ;
 wire \u_uart_tx/_015_ ;
 wire \u_uart_tx/_016_ ;
 wire \u_uart_tx/_017_ ;
 wire \u_uart_tx/_018_ ;
 wire \u_uart_tx/_019_ ;
 wire \u_uart_tx/_020_ ;
 wire \u_uart_tx/_021_ ;
 wire \u_uart_tx/_022_ ;
 wire \u_uart_tx/_023_ ;
 wire \u_uart_tx/_024_ ;
 wire \u_uart_tx/_025_ ;
 wire \u_uart_tx/_026_ ;
 wire \u_uart_tx/_027_ ;
 wire \u_uart_tx/_028_ ;
 wire \u_uart_tx/_029_ ;
 wire \u_uart_tx/_030_ ;
 wire \u_uart_tx/_031_ ;
 wire \u_uart_tx/_032_ ;
 wire \u_uart_tx/_033_ ;
 wire \u_uart_tx/_034_ ;
 wire \u_uart_tx/_035_ ;
 wire \u_uart_tx/_036_ ;
 wire \u_uart_tx/_037_ ;
 wire \u_uart_tx/_038_ ;
 wire \u_uart_tx/_039_ ;
 wire \u_uart_tx/_040_ ;
 wire \u_uart_tx/_041_ ;
 wire \u_uart_tx/_042_ ;
 wire \u_uart_tx/_043_ ;
 wire \u_uart_tx/_044_ ;
 wire \u_uart_tx/_045_ ;
 wire \u_uart_tx/_046_ ;
 wire \u_uart_tx/_047_ ;
 wire \u_uart_tx/_048_ ;
 wire \u_uart_tx/_049_ ;
 wire \u_uart_tx/_050_ ;
 wire \u_uart_tx/_051_ ;
 wire \u_uart_tx/_052_ ;
 wire \u_uart_tx/_053_ ;
 wire \u_uart_tx/_054_ ;
 wire \u_uart_tx/_055_ ;
 wire \u_uart_tx/_056_ ;
 wire \u_uart_tx/_057_ ;
 wire \u_uart_tx/_058_ ;
 wire \u_uart_tx/_059_ ;
 wire \u_uart_tx/_060_ ;
 wire \u_uart_tx/_061_ ;
 wire \u_uart_tx/_062_ ;
 wire \u_uart_tx/_063_ ;
 wire \u_uart_tx/_064_ ;
 wire \u_uart_tx/_065_ ;
 wire \u_uart_tx/_066_ ;
 wire \u_uart_tx/_067_ ;
 wire \u_uart_tx/tx_active ;
 wire \u_uart_tx/tx_done ;
 wire \u_uart_tx/zero_ ;
 wire net1;
 wire clknet_0_s_axi_aclk;
 wire clknet_4_0_0_s_axi_aclk;
 wire clknet_4_1_0_s_axi_aclk;
 wire clknet_4_2_0_s_axi_aclk;
 wire clknet_4_3_0_s_axi_aclk;
 wire clknet_4_4_0_s_axi_aclk;
 wire clknet_4_5_0_s_axi_aclk;
 wire clknet_4_6_0_s_axi_aclk;
 wire clknet_4_7_0_s_axi_aclk;
 wire clknet_4_8_0_s_axi_aclk;
 wire clknet_4_9_0_s_axi_aclk;
 wire clknet_4_10_0_s_axi_aclk;
 wire clknet_4_11_0_s_axi_aclk;
 wire clknet_4_12_0_s_axi_aclk;
 wire clknet_4_13_0_s_axi_aclk;
 wire clknet_4_14_0_s_axi_aclk;
 wire clknet_4_15_0_s_axi_aclk;
 wire clknet_0_uart_clk;
 wire clknet_3_0__leaf_uart_clk;
 wire clknet_3_1__leaf_uart_clk;
 wire clknet_3_2__leaf_uart_clk;
 wire clknet_3_3__leaf_uart_clk;
 wire clknet_3_4__leaf_uart_clk;
 wire clknet_3_5__leaf_uart_clk;
 wire clknet_3_6__leaf_uart_clk;
 wire clknet_3_7__leaf_uart_clk;
 wire [7:0] fifo_rdata;
 wire [7:0] fifo_wdata;
 wire [3:0] pop_state;
 wire [7:0] tx_data_reg;
 wire [7:0] \u_async_fifo/fifomem/mem[0] ;
 wire [7:0] \u_async_fifo/fifomem/mem[10] ;
 wire [7:0] \u_async_fifo/fifomem/mem[11] ;
 wire [7:0] \u_async_fifo/fifomem/mem[12] ;
 wire [7:0] \u_async_fifo/fifomem/mem[13] ;
 wire [7:0] \u_async_fifo/fifomem/mem[14] ;
 wire [7:0] \u_async_fifo/fifomem/mem[15] ;
 wire [7:0] \u_async_fifo/fifomem/mem[1] ;
 wire [7:0] \u_async_fifo/fifomem/mem[2] ;
 wire [7:0] \u_async_fifo/fifomem/mem[3] ;
 wire [7:0] \u_async_fifo/fifomem/mem[4] ;
 wire [7:0] \u_async_fifo/fifomem/mem[5] ;
 wire [7:0] \u_async_fifo/fifomem/mem[6] ;
 wire [7:0] \u_async_fifo/fifomem/mem[7] ;
 wire [7:0] \u_async_fifo/fifomem/mem[8] ;
 wire [7:0] \u_async_fifo/fifomem/mem[9] ;
 wire [3:0] \u_async_fifo/raddr ;
 wire [4:0] \u_async_fifo/rptr ;
 wire [4:0] \u_async_fifo/rptr_empty/rbinnext ;
 wire [3:0] \u_async_fifo/rptr_empty/rgraynext ;
 wire [4:0] \u_async_fifo/rq2_wptr ;
 wire [4:0] \u_async_fifo/sync_r2w/wq1_rptr ;
 wire [4:0] \u_async_fifo/sync_w2r/rq1_wptr ;
 wire [3:0] \u_async_fifo/waddr ;
 wire [4:0] \u_async_fifo/wptr ;
 wire [4:0] \u_async_fifo/wptr_full/wbinnext ;
 wire [3:0] \u_async_fifo/wptr_full/wgraynext ;
 wire [4:0] \u_async_fifo/wq2_rptr ;
 wire [1:0] \u_axi_slave/byte_index ;
 wire [1:0] \u_axi_slave/state ;
 wire [31:0] \u_axi_slave/wdata_latched ;
 wire [3:0] \u_axi_slave/wstrb_latched ;
 wire [2:0] \u_uart_tx/bit_index ;
 wire [15:0] \u_uart_tx/clk_count ;
 wire [1:0] \u_uart_tx/state ;
 wire [7:0] \u_uart_tx/tx_data_r ;

 sky130_fd_sc_hd__clkinv_1 _14_ (.A(uart_ready),
    .Y(_11_));
 sky130_fd_sc_hd__nand2b_1 _15_ (.A_N(fifo_rempty),
    .B(uart_ready),
    .Y(_12_));
 sky130_fd_sc_hd__a22o_1 _16_ (.A1(uart_ready),
    .A2(pop_state[3]),
    .B1(_12_),
    .B2(pop_state[0]),
    .X(_01_));
 sky130_fd_sc_hd__a21o_1 _17_ (.A1(_11_),
    .A2(pop_state[3]),
    .B1(tx_start_reg),
    .X(_02_));
 sky130_fd_sc_hd__nand3b_1 _18_ (.A_N(fifo_rempty),
    .B(uart_ready),
    .C(pop_state[0]),
    .Y(_13_));
 sky130_fd_sc_hd__clkinv_1 _19_ (.A(_13_),
    .Y(_00_));
 sky130_fd_sc_hd__mux2_1 _20_ (.A0(fifo_rdata[0]),
    .A1(tx_data_reg[0]),
    .S(_13_),
    .X(_03_));
 sky130_fd_sc_hd__mux2_1 _21_ (.A0(fifo_rdata[1]),
    .A1(tx_data_reg[1]),
    .S(_13_),
    .X(_04_));
 sky130_fd_sc_hd__mux2_1 _22_ (.A0(fifo_rdata[2]),
    .A1(tx_data_reg[2]),
    .S(_13_),
    .X(_05_));
 sky130_fd_sc_hd__mux2_1 _23_ (.A0(fifo_rdata[3]),
    .A1(tx_data_reg[3]),
    .S(_13_),
    .X(_06_));
 sky130_fd_sc_hd__mux2_1 _24_ (.A0(fifo_rdata[4]),
    .A1(tx_data_reg[4]),
    .S(_13_),
    .X(_07_));
 sky130_fd_sc_hd__mux2_1 _25_ (.A0(fifo_rdata[5]),
    .A1(tx_data_reg[5]),
    .S(_13_),
    .X(_08_));
 sky130_fd_sc_hd__mux2_1 _26_ (.A0(fifo_rdata[6]),
    .A1(tx_data_reg[6]),
    .S(_13_),
    .X(_09_));
 sky130_fd_sc_hd__mux2_1 _27_ (.A0(fifo_rdata[7]),
    .A1(tx_data_reg[7]),
    .S(_13_),
    .X(_10_));
 sky130_fd_sc_hd__dfstp_2 _28_ (.CLK(clknet_3_4__leaf_uart_clk),
    .D(_01_),
    .SET_B(uart_rst_n),
    .Q(pop_state[0]));
 sky130_fd_sc_hd__dfrtp_1 _29_ (.CLK(clknet_3_4__leaf_uart_clk),
    .D(fifo_rinc),
    .RESET_B(uart_rst_n),
    .Q(tx_start_reg));
 sky130_fd_sc_hd__dfrtp_1 _30_ (.CLK(clknet_3_4__leaf_uart_clk),
    .D(_00_),
    .RESET_B(uart_rst_n),
    .Q(fifo_rinc));
 sky130_fd_sc_hd__dfrtp_1 _31_ (.CLK(clknet_3_4__leaf_uart_clk),
    .D(_02_),
    .RESET_B(uart_rst_n),
    .Q(pop_state[3]));
 sky130_fd_sc_hd__dfrtp_1 _32_ (.CLK(clknet_3_1__leaf_uart_clk),
    .D(_03_),
    .RESET_B(uart_rst_n),
    .Q(tx_data_reg[0]));
 sky130_fd_sc_hd__dfrtp_1 _33_ (.CLK(clknet_3_0__leaf_uart_clk),
    .D(_04_),
    .RESET_B(uart_rst_n),
    .Q(tx_data_reg[1]));
 sky130_fd_sc_hd__dfrtp_1 _34_ (.CLK(clknet_3_1__leaf_uart_clk),
    .D(_05_),
    .RESET_B(uart_rst_n),
    .Q(tx_data_reg[2]));
 sky130_fd_sc_hd__dfrtp_1 _35_ (.CLK(clknet_3_1__leaf_uart_clk),
    .D(_06_),
    .RESET_B(uart_rst_n),
    .Q(tx_data_reg[3]));
 sky130_fd_sc_hd__dfrtp_1 _36_ (.CLK(clknet_3_1__leaf_uart_clk),
    .D(_07_),
    .RESET_B(uart_rst_n),
    .Q(tx_data_reg[4]));
 sky130_fd_sc_hd__dfrtp_1 _37_ (.CLK(clknet_3_1__leaf_uart_clk),
    .D(_08_),
    .RESET_B(uart_rst_n),
    .Q(tx_data_reg[5]));
 sky130_fd_sc_hd__dfrtp_1 _38_ (.CLK(clknet_3_0__leaf_uart_clk),
    .D(_09_),
    .RESET_B(uart_rst_n),
    .Q(tx_data_reg[6]));
 sky130_fd_sc_hd__dfrtp_1 _39_ (.CLK(clknet_3_0__leaf_uart_clk),
    .D(_10_),
    .RESET_B(uart_rst_n),
    .Q(tx_data_reg[7]));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 \u_async_fifo/_1_  (.A(fifo_winc),
    .SLEEP(fifo_wfull),
    .X(\u_async_fifo/_0_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_185_  (.A0(\u_async_fifo/fifomem/mem[10] [0]),
    .A1(\u_async_fifo/fifomem/mem[11] [0]),
    .A2(\u_async_fifo/fifomem/mem[14] [0]),
    .A3(\u_async_fifo/fifomem/mem[15] [0]),
    .S0(\u_async_fifo/raddr [0]),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_128_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_186_  (.A0(\u_async_fifo/fifomem/mem[8] [0]),
    .A1(\u_async_fifo/fifomem/mem[9] [0]),
    .A2(\u_async_fifo/fifomem/mem[12] [0]),
    .A3(\u_async_fifo/fifomem/mem[13] [0]),
    .S0(\u_async_fifo/raddr [0]),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_129_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_187_  (.A0(\u_async_fifo/fifomem/mem[2] [0]),
    .A1(\u_async_fifo/fifomem/mem[3] [0]),
    .A2(\u_async_fifo/fifomem/mem[6] [0]),
    .A3(\u_async_fifo/fifomem/mem[7] [0]),
    .S0(\u_async_fifo/raddr [0]),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_130_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_188_  (.A0(\u_async_fifo/fifomem/mem[0] [0]),
    .A1(\u_async_fifo/fifomem/mem[1] [0]),
    .A2(\u_async_fifo/fifomem/mem[4] [0]),
    .A3(\u_async_fifo/fifomem/mem[5] [0]),
    .S0(\u_async_fifo/raddr [0]),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_131_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_189_  (.A0(\u_async_fifo/fifomem/_131_ ),
    .A1(\u_async_fifo/fifomem/_130_ ),
    .A2(\u_async_fifo/fifomem/_129_ ),
    .A3(\u_async_fifo/fifomem/_128_ ),
    .S0(\u_async_fifo/raddr [1]),
    .S1(\u_async_fifo/raddr [3]),
    .X(fifo_rdata[0]));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_190_  (.A0(\u_async_fifo/fifomem/mem[10] [1]),
    .A1(\u_async_fifo/fifomem/mem[11] [1]),
    .A2(\u_async_fifo/fifomem/mem[14] [1]),
    .A3(\u_async_fifo/fifomem/mem[15] [1]),
    .S0(\u_async_fifo/raddr [0]),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_132_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_191_  (.A0(\u_async_fifo/fifomem/mem[2] [1]),
    .A1(\u_async_fifo/fifomem/mem[3] [1]),
    .A2(\u_async_fifo/fifomem/mem[6] [1]),
    .A3(\u_async_fifo/fifomem/mem[7] [1]),
    .S0(net1),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_133_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_192_  (.A0(\u_async_fifo/fifomem/mem[8] [1]),
    .A1(\u_async_fifo/fifomem/mem[9] [1]),
    .A2(\u_async_fifo/fifomem/mem[12] [1]),
    .A3(\u_async_fifo/fifomem/mem[13] [1]),
    .S0(net1),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_134_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_193_  (.A0(\u_async_fifo/fifomem/mem[0] [1]),
    .A1(\u_async_fifo/fifomem/mem[1] [1]),
    .A2(\u_async_fifo/fifomem/mem[4] [1]),
    .A3(\u_async_fifo/fifomem/mem[5] [1]),
    .S0(net1),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_135_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_194_  (.A0(\u_async_fifo/fifomem/_135_ ),
    .A1(\u_async_fifo/fifomem/_134_ ),
    .A2(\u_async_fifo/fifomem/_133_ ),
    .A3(\u_async_fifo/fifomem/_132_ ),
    .S0(\u_async_fifo/raddr [3]),
    .S1(\u_async_fifo/raddr [1]),
    .X(fifo_rdata[1]));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_195_  (.A0(\u_async_fifo/fifomem/mem[10] [2]),
    .A1(\u_async_fifo/fifomem/mem[11] [2]),
    .A2(\u_async_fifo/fifomem/mem[14] [2]),
    .A3(\u_async_fifo/fifomem/mem[15] [2]),
    .S0(\u_async_fifo/raddr [0]),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_136_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_196_  (.A0(\u_async_fifo/fifomem/mem[8] [2]),
    .A1(\u_async_fifo/fifomem/mem[9] [2]),
    .A2(\u_async_fifo/fifomem/mem[12] [2]),
    .A3(\u_async_fifo/fifomem/mem[13] [2]),
    .S0(net1),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_137_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_197_  (.A0(\u_async_fifo/fifomem/mem[2] [2]),
    .A1(\u_async_fifo/fifomem/mem[3] [2]),
    .A2(\u_async_fifo/fifomem/mem[6] [2]),
    .A3(\u_async_fifo/fifomem/mem[7] [2]),
    .S0(net1),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_138_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_198_  (.A0(\u_async_fifo/fifomem/mem[0] [2]),
    .A1(\u_async_fifo/fifomem/mem[1] [2]),
    .A2(\u_async_fifo/fifomem/mem[4] [2]),
    .A3(\u_async_fifo/fifomem/mem[5] [2]),
    .S0(net1),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_139_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_199_  (.A0(\u_async_fifo/fifomem/_139_ ),
    .A1(\u_async_fifo/fifomem/_138_ ),
    .A2(\u_async_fifo/fifomem/_137_ ),
    .A3(\u_async_fifo/fifomem/_136_ ),
    .S0(\u_async_fifo/raddr [1]),
    .S1(\u_async_fifo/raddr [3]),
    .X(fifo_rdata[2]));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_200_  (.A0(\u_async_fifo/fifomem/mem[2] [3]),
    .A1(\u_async_fifo/fifomem/mem[3] [3]),
    .A2(\u_async_fifo/fifomem/mem[6] [3]),
    .A3(\u_async_fifo/fifomem/mem[7] [3]),
    .S0(net1),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_140_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_201_  (.A0(\u_async_fifo/fifomem/mem[0] [3]),
    .A1(\u_async_fifo/fifomem/mem[1] [3]),
    .A2(\u_async_fifo/fifomem/mem[4] [3]),
    .A3(\u_async_fifo/fifomem/mem[5] [3]),
    .S0(net1),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_141_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_202_  (.A0(\u_async_fifo/fifomem/mem[10] [3]),
    .A1(\u_async_fifo/fifomem/mem[11] [3]),
    .A2(\u_async_fifo/fifomem/mem[14] [3]),
    .A3(\u_async_fifo/fifomem/mem[15] [3]),
    .S0(\u_async_fifo/raddr [0]),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_142_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_203_  (.A0(\u_async_fifo/fifomem/mem[8] [3]),
    .A1(\u_async_fifo/fifomem/mem[9] [3]),
    .A2(\u_async_fifo/fifomem/mem[12] [3]),
    .A3(\u_async_fifo/fifomem/mem[13] [3]),
    .S0(net1),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_143_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_204_  (.A0(\u_async_fifo/fifomem/_141_ ),
    .A1(\u_async_fifo/fifomem/_143_ ),
    .A2(\u_async_fifo/fifomem/_140_ ),
    .A3(\u_async_fifo/fifomem/_142_ ),
    .S0(\u_async_fifo/raddr [3]),
    .S1(\u_async_fifo/raddr [1]),
    .X(fifo_rdata[3]));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_205_  (.A0(\u_async_fifo/fifomem/mem[10] [4]),
    .A1(\u_async_fifo/fifomem/mem[11] [4]),
    .A2(\u_async_fifo/fifomem/mem[14] [4]),
    .A3(\u_async_fifo/fifomem/mem[15] [4]),
    .S0(\u_async_fifo/raddr [0]),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_144_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_206_  (.A0(\u_async_fifo/fifomem/mem[2] [4]),
    .A1(\u_async_fifo/fifomem/mem[3] [4]),
    .A2(\u_async_fifo/fifomem/mem[6] [4]),
    .A3(\u_async_fifo/fifomem/mem[7] [4]),
    .S0(net1),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_145_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_207_  (.A0(\u_async_fifo/fifomem/mem[8] [4]),
    .A1(\u_async_fifo/fifomem/mem[9] [4]),
    .A2(\u_async_fifo/fifomem/mem[12] [4]),
    .A3(\u_async_fifo/fifomem/mem[13] [4]),
    .S0(net1),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_146_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_208_  (.A0(\u_async_fifo/fifomem/mem[0] [4]),
    .A1(\u_async_fifo/fifomem/mem[1] [4]),
    .A2(\u_async_fifo/fifomem/mem[4] [4]),
    .A3(\u_async_fifo/fifomem/mem[5] [4]),
    .S0(net1),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_147_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_209_  (.A0(\u_async_fifo/fifomem/_147_ ),
    .A1(\u_async_fifo/fifomem/_146_ ),
    .A2(\u_async_fifo/fifomem/_145_ ),
    .A3(\u_async_fifo/fifomem/_144_ ),
    .S0(\u_async_fifo/raddr [3]),
    .S1(\u_async_fifo/raddr [1]),
    .X(fifo_rdata[4]));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_210_  (.A0(\u_async_fifo/fifomem/mem[10] [5]),
    .A1(\u_async_fifo/fifomem/mem[11] [5]),
    .A2(\u_async_fifo/fifomem/mem[14] [5]),
    .A3(\u_async_fifo/fifomem/mem[15] [5]),
    .S0(\u_async_fifo/raddr [0]),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_148_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_211_  (.A0(\u_async_fifo/fifomem/mem[2] [5]),
    .A1(\u_async_fifo/fifomem/mem[3] [5]),
    .A2(\u_async_fifo/fifomem/mem[6] [5]),
    .A3(\u_async_fifo/fifomem/mem[7] [5]),
    .S0(\u_async_fifo/raddr [0]),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_149_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_212_  (.A0(\u_async_fifo/fifomem/mem[8] [5]),
    .A1(\u_async_fifo/fifomem/mem[9] [5]),
    .A2(\u_async_fifo/fifomem/mem[12] [5]),
    .A3(\u_async_fifo/fifomem/mem[13] [5]),
    .S0(net1),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_150_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_213_  (.A0(\u_async_fifo/fifomem/mem[0] [5]),
    .A1(\u_async_fifo/fifomem/mem[1] [5]),
    .A2(\u_async_fifo/fifomem/mem[4] [5]),
    .A3(\u_async_fifo/fifomem/mem[5] [5]),
    .S0(\u_async_fifo/raddr [0]),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_151_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_214_  (.A0(\u_async_fifo/fifomem/_151_ ),
    .A1(\u_async_fifo/fifomem/_150_ ),
    .A2(\u_async_fifo/fifomem/_149_ ),
    .A3(\u_async_fifo/fifomem/_148_ ),
    .S0(\u_async_fifo/raddr [3]),
    .S1(\u_async_fifo/raddr [1]),
    .X(fifo_rdata[5]));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_215_  (.A0(\u_async_fifo/fifomem/mem[2] [6]),
    .A1(\u_async_fifo/fifomem/mem[3] [6]),
    .A2(\u_async_fifo/fifomem/mem[6] [6]),
    .A3(\u_async_fifo/fifomem/mem[7] [6]),
    .S0(net1),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_152_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_216_  (.A0(\u_async_fifo/fifomem/mem[0] [6]),
    .A1(\u_async_fifo/fifomem/mem[1] [6]),
    .A2(\u_async_fifo/fifomem/mem[4] [6]),
    .A3(\u_async_fifo/fifomem/mem[5] [6]),
    .S0(net1),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_153_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_217_  (.A0(\u_async_fifo/fifomem/mem[10] [6]),
    .A1(\u_async_fifo/fifomem/mem[11] [6]),
    .A2(\u_async_fifo/fifomem/mem[14] [6]),
    .A3(\u_async_fifo/fifomem/mem[15] [6]),
    .S0(\u_async_fifo/raddr [0]),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_154_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_218_  (.A0(\u_async_fifo/fifomem/mem[8] [6]),
    .A1(\u_async_fifo/fifomem/mem[9] [6]),
    .A2(\u_async_fifo/fifomem/mem[12] [6]),
    .A3(\u_async_fifo/fifomem/mem[13] [6]),
    .S0(net1),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_155_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_219_  (.A0(\u_async_fifo/fifomem/_153_ ),
    .A1(\u_async_fifo/fifomem/_155_ ),
    .A2(\u_async_fifo/fifomem/_152_ ),
    .A3(\u_async_fifo/fifomem/_154_ ),
    .S0(\u_async_fifo/raddr [3]),
    .S1(\u_async_fifo/raddr [1]),
    .X(fifo_rdata[6]));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_220_  (.A0(\u_async_fifo/fifomem/mem[10] [7]),
    .A1(\u_async_fifo/fifomem/mem[11] [7]),
    .A2(\u_async_fifo/fifomem/mem[14] [7]),
    .A3(\u_async_fifo/fifomem/mem[15] [7]),
    .S0(\u_async_fifo/raddr [0]),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_156_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_221_  (.A0(\u_async_fifo/fifomem/mem[2] [7]),
    .A1(\u_async_fifo/fifomem/mem[3] [7]),
    .A2(\u_async_fifo/fifomem/mem[6] [7]),
    .A3(\u_async_fifo/fifomem/mem[7] [7]),
    .S0(net1),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_157_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_222_  (.A0(\u_async_fifo/fifomem/mem[8] [7]),
    .A1(\u_async_fifo/fifomem/mem[9] [7]),
    .A2(\u_async_fifo/fifomem/mem[12] [7]),
    .A3(\u_async_fifo/fifomem/mem[13] [7]),
    .S0(net1),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_158_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_223_  (.A0(\u_async_fifo/fifomem/mem[0] [7]),
    .A1(\u_async_fifo/fifomem/mem[1] [7]),
    .A2(\u_async_fifo/fifomem/mem[4] [7]),
    .A3(\u_async_fifo/fifomem/mem[5] [7]),
    .S0(net1),
    .S1(\u_async_fifo/raddr [2]),
    .X(\u_async_fifo/fifomem/_159_ ));
 sky130_fd_sc_hd__mux4_2 \u_async_fifo/fifomem/_224_  (.A0(\u_async_fifo/fifomem/_159_ ),
    .A1(\u_async_fifo/fifomem/_158_ ),
    .A2(\u_async_fifo/fifomem/_157_ ),
    .A3(\u_async_fifo/fifomem/_156_ ),
    .S0(\u_async_fifo/raddr [3]),
    .S1(\u_async_fifo/raddr [1]),
    .X(fifo_rdata[7]));
 sky130_fd_sc_hd__nand3b_1 \u_async_fifo/fifomem/_225_  (.A_N(\u_async_fifo/waddr [0]),
    .B(\u_async_fifo/waddr [1]),
    .C(\u_async_fifo/_0_ ),
    .Y(\u_async_fifo/fifomem/_160_ ));
 sky130_fd_sc_hd__nor3b_1 \u_async_fifo/fifomem/_226_  (.A(\u_async_fifo/waddr [2]),
    .B(\u_async_fifo/fifomem/_160_ ),
    .C_N(\u_async_fifo/waddr [3]),
    .Y(\u_async_fifo/fifomem/_161_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_227_  (.A0(\u_async_fifo/fifomem/mem[10] [0]),
    .A1(fifo_wdata[0]),
    .S(\u_async_fifo/fifomem/_161_ ),
    .X(\u_async_fifo/fifomem/_000_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_228_  (.A0(\u_async_fifo/fifomem/mem[10] [1]),
    .A1(fifo_wdata[1]),
    .S(\u_async_fifo/fifomem/_161_ ),
    .X(\u_async_fifo/fifomem/_001_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_229_  (.A0(\u_async_fifo/fifomem/mem[10] [2]),
    .A1(fifo_wdata[2]),
    .S(\u_async_fifo/fifomem/_161_ ),
    .X(\u_async_fifo/fifomem/_002_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_230_  (.A0(\u_async_fifo/fifomem/mem[10] [3]),
    .A1(fifo_wdata[3]),
    .S(\u_async_fifo/fifomem/_161_ ),
    .X(\u_async_fifo/fifomem/_003_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_231_  (.A0(\u_async_fifo/fifomem/mem[10] [4]),
    .A1(fifo_wdata[4]),
    .S(\u_async_fifo/fifomem/_161_ ),
    .X(\u_async_fifo/fifomem/_004_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_232_  (.A0(\u_async_fifo/fifomem/mem[10] [5]),
    .A1(fifo_wdata[5]),
    .S(\u_async_fifo/fifomem/_161_ ),
    .X(\u_async_fifo/fifomem/_005_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_233_  (.A0(\u_async_fifo/fifomem/mem[10] [6]),
    .A1(fifo_wdata[6]),
    .S(\u_async_fifo/fifomem/_161_ ),
    .X(\u_async_fifo/fifomem/_006_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_234_  (.A0(\u_async_fifo/fifomem/mem[10] [7]),
    .A1(fifo_wdata[7]),
    .S(\u_async_fifo/fifomem/_161_ ),
    .X(\u_async_fifo/fifomem/_007_ ));
 sky130_fd_sc_hd__nand2_1 \u_async_fifo/fifomem/_235_  (.A(\u_async_fifo/waddr [0]),
    .B(\u_async_fifo/waddr [1]),
    .Y(\u_async_fifo/fifomem/_162_ ));
 sky130_fd_sc_hd__nand3b_1 \u_async_fifo/fifomem/_236_  (.A_N(\u_async_fifo/waddr [3]),
    .B(\u_async_fifo/waddr [2]),
    .C(\u_async_fifo/_0_ ),
    .Y(\u_async_fifo/fifomem/_163_ ));
 sky130_fd_sc_hd__nor2_1 \u_async_fifo/fifomem/_237_  (.A(\u_async_fifo/fifomem/_162_ ),
    .B(\u_async_fifo/fifomem/_163_ ),
    .Y(\u_async_fifo/fifomem/_164_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_238_  (.A0(\u_async_fifo/fifomem/mem[7] [0]),
    .A1(fifo_wdata[0]),
    .S(\u_async_fifo/fifomem/_164_ ),
    .X(\u_async_fifo/fifomem/_008_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_239_  (.A0(\u_async_fifo/fifomem/mem[7] [1]),
    .A1(fifo_wdata[1]),
    .S(\u_async_fifo/fifomem/_164_ ),
    .X(\u_async_fifo/fifomem/_009_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_240_  (.A0(\u_async_fifo/fifomem/mem[7] [2]),
    .A1(fifo_wdata[2]),
    .S(\u_async_fifo/fifomem/_164_ ),
    .X(\u_async_fifo/fifomem/_010_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_241_  (.A0(\u_async_fifo/fifomem/mem[7] [3]),
    .A1(fifo_wdata[3]),
    .S(\u_async_fifo/fifomem/_164_ ),
    .X(\u_async_fifo/fifomem/_011_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_242_  (.A0(\u_async_fifo/fifomem/mem[7] [4]),
    .A1(fifo_wdata[4]),
    .S(\u_async_fifo/fifomem/_164_ ),
    .X(\u_async_fifo/fifomem/_012_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_243_  (.A0(\u_async_fifo/fifomem/mem[7] [5]),
    .A1(fifo_wdata[5]),
    .S(\u_async_fifo/fifomem/_164_ ),
    .X(\u_async_fifo/fifomem/_013_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_244_  (.A0(\u_async_fifo/fifomem/mem[7] [6]),
    .A1(fifo_wdata[6]),
    .S(\u_async_fifo/fifomem/_164_ ),
    .X(\u_async_fifo/fifomem/_014_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_245_  (.A0(\u_async_fifo/fifomem/mem[7] [7]),
    .A1(fifo_wdata[7]),
    .S(\u_async_fifo/fifomem/_164_ ),
    .X(\u_async_fifo/fifomem/_015_ ));
 sky130_fd_sc_hd__nor2_1 \u_async_fifo/fifomem/_246_  (.A(\u_async_fifo/waddr [0]),
    .B(\u_async_fifo/waddr [1]),
    .Y(\u_async_fifo/fifomem/_165_ ));
 sky130_fd_sc_hd__nand3b_1 \u_async_fifo/fifomem/_247_  (.A_N(\u_async_fifo/waddr [2]),
    .B(\u_async_fifo/_0_ ),
    .C(\u_async_fifo/waddr [3]),
    .Y(\u_async_fifo/fifomem/_166_ ));
 sky130_fd_sc_hd__or3_1 \u_async_fifo/fifomem/_248_  (.A(\u_async_fifo/waddr [0]),
    .B(\u_async_fifo/waddr [1]),
    .C(\u_async_fifo/fifomem/_166_ ),
    .X(\u_async_fifo/fifomem/_167_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_249_  (.A0(fifo_wdata[0]),
    .A1(\u_async_fifo/fifomem/mem[8] [0]),
    .S(\u_async_fifo/fifomem/_167_ ),
    .X(\u_async_fifo/fifomem/_016_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_250_  (.A0(fifo_wdata[1]),
    .A1(\u_async_fifo/fifomem/mem[8] [1]),
    .S(\u_async_fifo/fifomem/_167_ ),
    .X(\u_async_fifo/fifomem/_017_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_251_  (.A0(fifo_wdata[2]),
    .A1(\u_async_fifo/fifomem/mem[8] [2]),
    .S(\u_async_fifo/fifomem/_167_ ),
    .X(\u_async_fifo/fifomem/_018_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_252_  (.A0(fifo_wdata[3]),
    .A1(\u_async_fifo/fifomem/mem[8] [3]),
    .S(\u_async_fifo/fifomem/_167_ ),
    .X(\u_async_fifo/fifomem/_019_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_253_  (.A0(fifo_wdata[4]),
    .A1(\u_async_fifo/fifomem/mem[8] [4]),
    .S(\u_async_fifo/fifomem/_167_ ),
    .X(\u_async_fifo/fifomem/_020_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_254_  (.A0(fifo_wdata[5]),
    .A1(\u_async_fifo/fifomem/mem[8] [5]),
    .S(\u_async_fifo/fifomem/_167_ ),
    .X(\u_async_fifo/fifomem/_021_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_255_  (.A0(fifo_wdata[6]),
    .A1(\u_async_fifo/fifomem/mem[8] [6]),
    .S(\u_async_fifo/fifomem/_167_ ),
    .X(\u_async_fifo/fifomem/_022_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_256_  (.A0(fifo_wdata[7]),
    .A1(\u_async_fifo/fifomem/mem[8] [7]),
    .S(\u_async_fifo/fifomem/_167_ ),
    .X(\u_async_fifo/fifomem/_023_ ));
 sky130_fd_sc_hd__nor2_1 \u_async_fifo/fifomem/_257_  (.A(\u_async_fifo/waddr [3]),
    .B(\u_async_fifo/waddr [2]),
    .Y(\u_async_fifo/fifomem/_168_ ));
 sky130_fd_sc_hd__nand3_1 \u_async_fifo/fifomem/_258_  (.A(\u_async_fifo/_0_ ),
    .B(\u_async_fifo/fifomem/_165_ ),
    .C(\u_async_fifo/fifomem/_168_ ),
    .Y(\u_async_fifo/fifomem/_169_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_259_  (.A0(fifo_wdata[0]),
    .A1(\u_async_fifo/fifomem/mem[0] [0]),
    .S(\u_async_fifo/fifomem/_169_ ),
    .X(\u_async_fifo/fifomem/_024_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_260_  (.A0(fifo_wdata[1]),
    .A1(\u_async_fifo/fifomem/mem[0] [1]),
    .S(\u_async_fifo/fifomem/_169_ ),
    .X(\u_async_fifo/fifomem/_025_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_261_  (.A0(fifo_wdata[2]),
    .A1(\u_async_fifo/fifomem/mem[0] [2]),
    .S(\u_async_fifo/fifomem/_169_ ),
    .X(\u_async_fifo/fifomem/_026_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_262_  (.A0(fifo_wdata[3]),
    .A1(\u_async_fifo/fifomem/mem[0] [3]),
    .S(\u_async_fifo/fifomem/_169_ ),
    .X(\u_async_fifo/fifomem/_027_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_263_  (.A0(fifo_wdata[4]),
    .A1(\u_async_fifo/fifomem/mem[0] [4]),
    .S(\u_async_fifo/fifomem/_169_ ),
    .X(\u_async_fifo/fifomem/_028_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_264_  (.A0(fifo_wdata[5]),
    .A1(\u_async_fifo/fifomem/mem[0] [5]),
    .S(\u_async_fifo/fifomem/_169_ ),
    .X(\u_async_fifo/fifomem/_029_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_265_  (.A0(fifo_wdata[6]),
    .A1(\u_async_fifo/fifomem/mem[0] [6]),
    .S(\u_async_fifo/fifomem/_169_ ),
    .X(\u_async_fifo/fifomem/_030_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_266_  (.A0(fifo_wdata[7]),
    .A1(\u_async_fifo/fifomem/mem[0] [7]),
    .S(\u_async_fifo/fifomem/_169_ ),
    .X(\u_async_fifo/fifomem/_031_ ));
 sky130_fd_sc_hd__nand2b_1 \u_async_fifo/fifomem/_267_  (.A_N(\u_async_fifo/fifomem/_160_ ),
    .B(\u_async_fifo/fifomem/_168_ ),
    .Y(\u_async_fifo/fifomem/_170_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_268_  (.A0(fifo_wdata[0]),
    .A1(\u_async_fifo/fifomem/mem[2] [0]),
    .S(\u_async_fifo/fifomem/_170_ ),
    .X(\u_async_fifo/fifomem/_032_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_269_  (.A0(fifo_wdata[1]),
    .A1(\u_async_fifo/fifomem/mem[2] [1]),
    .S(\u_async_fifo/fifomem/_170_ ),
    .X(\u_async_fifo/fifomem/_033_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_270_  (.A0(fifo_wdata[2]),
    .A1(\u_async_fifo/fifomem/mem[2] [2]),
    .S(\u_async_fifo/fifomem/_170_ ),
    .X(\u_async_fifo/fifomem/_034_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_271_  (.A0(fifo_wdata[3]),
    .A1(\u_async_fifo/fifomem/mem[2] [3]),
    .S(\u_async_fifo/fifomem/_170_ ),
    .X(\u_async_fifo/fifomem/_035_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_272_  (.A0(fifo_wdata[4]),
    .A1(\u_async_fifo/fifomem/mem[2] [4]),
    .S(\u_async_fifo/fifomem/_170_ ),
    .X(\u_async_fifo/fifomem/_036_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_273_  (.A0(fifo_wdata[5]),
    .A1(\u_async_fifo/fifomem/mem[2] [5]),
    .S(\u_async_fifo/fifomem/_170_ ),
    .X(\u_async_fifo/fifomem/_037_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_274_  (.A0(fifo_wdata[6]),
    .A1(\u_async_fifo/fifomem/mem[2] [6]),
    .S(\u_async_fifo/fifomem/_170_ ),
    .X(\u_async_fifo/fifomem/_038_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_275_  (.A0(fifo_wdata[7]),
    .A1(\u_async_fifo/fifomem/mem[2] [7]),
    .S(\u_async_fifo/fifomem/_170_ ),
    .X(\u_async_fifo/fifomem/_039_ ));
 sky130_fd_sc_hd__nand2_1 \u_async_fifo/fifomem/_276_  (.A(\u_async_fifo/waddr [3]),
    .B(\u_async_fifo/waddr [2]),
    .Y(\u_async_fifo/fifomem/_171_ ));
 sky130_fd_sc_hd__nor2_1 \u_async_fifo/fifomem/_277_  (.A(\u_async_fifo/fifomem/_160_ ),
    .B(\u_async_fifo/fifomem/_171_ ),
    .Y(\u_async_fifo/fifomem/_172_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_278_  (.A0(\u_async_fifo/fifomem/mem[14] [0]),
    .A1(fifo_wdata[0]),
    .S(\u_async_fifo/fifomem/_172_ ),
    .X(\u_async_fifo/fifomem/_040_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_279_  (.A0(\u_async_fifo/fifomem/mem[14] [1]),
    .A1(fifo_wdata[1]),
    .S(\u_async_fifo/fifomem/_172_ ),
    .X(\u_async_fifo/fifomem/_041_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_280_  (.A0(\u_async_fifo/fifomem/mem[14] [2]),
    .A1(fifo_wdata[2]),
    .S(\u_async_fifo/fifomem/_172_ ),
    .X(\u_async_fifo/fifomem/_042_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_281_  (.A0(\u_async_fifo/fifomem/mem[14] [3]),
    .A1(fifo_wdata[3]),
    .S(\u_async_fifo/fifomem/_172_ ),
    .X(\u_async_fifo/fifomem/_043_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_282_  (.A0(\u_async_fifo/fifomem/mem[14] [4]),
    .A1(fifo_wdata[4]),
    .S(\u_async_fifo/fifomem/_172_ ),
    .X(\u_async_fifo/fifomem/_044_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_283_  (.A0(\u_async_fifo/fifomem/mem[14] [5]),
    .A1(fifo_wdata[5]),
    .S(\u_async_fifo/fifomem/_172_ ),
    .X(\u_async_fifo/fifomem/_045_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_284_  (.A0(\u_async_fifo/fifomem/mem[14] [6]),
    .A1(fifo_wdata[6]),
    .S(\u_async_fifo/fifomem/_172_ ),
    .X(\u_async_fifo/fifomem/_046_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_285_  (.A0(\u_async_fifo/fifomem/mem[14] [7]),
    .A1(fifo_wdata[7]),
    .S(\u_async_fifo/fifomem/_172_ ),
    .X(\u_async_fifo/fifomem/_047_ ));
 sky130_fd_sc_hd__nand2b_1 \u_async_fifo/fifomem/_286_  (.A_N(\u_async_fifo/waddr [1]),
    .B(\u_async_fifo/waddr [0]),
    .Y(\u_async_fifo/fifomem/_173_ ));
 sky130_fd_sc_hd__nand4b_1 \u_async_fifo/fifomem/_287_  (.A_N(\u_async_fifo/waddr [1]),
    .B(\u_async_fifo/_0_ ),
    .C(\u_async_fifo/fifomem/_168_ ),
    .D(\u_async_fifo/waddr [0]),
    .Y(\u_async_fifo/fifomem/_174_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_288_  (.A0(fifo_wdata[0]),
    .A1(\u_async_fifo/fifomem/mem[1] [0]),
    .S(\u_async_fifo/fifomem/_174_ ),
    .X(\u_async_fifo/fifomem/_048_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_289_  (.A0(fifo_wdata[1]),
    .A1(\u_async_fifo/fifomem/mem[1] [1]),
    .S(\u_async_fifo/fifomem/_174_ ),
    .X(\u_async_fifo/fifomem/_049_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_290_  (.A0(fifo_wdata[2]),
    .A1(\u_async_fifo/fifomem/mem[1] [2]),
    .S(\u_async_fifo/fifomem/_174_ ),
    .X(\u_async_fifo/fifomem/_050_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_291_  (.A0(fifo_wdata[3]),
    .A1(\u_async_fifo/fifomem/mem[1] [3]),
    .S(\u_async_fifo/fifomem/_174_ ),
    .X(\u_async_fifo/fifomem/_051_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_292_  (.A0(fifo_wdata[4]),
    .A1(\u_async_fifo/fifomem/mem[1] [4]),
    .S(\u_async_fifo/fifomem/_174_ ),
    .X(\u_async_fifo/fifomem/_052_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_293_  (.A0(fifo_wdata[5]),
    .A1(\u_async_fifo/fifomem/mem[1] [5]),
    .S(\u_async_fifo/fifomem/_174_ ),
    .X(\u_async_fifo/fifomem/_053_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_294_  (.A0(fifo_wdata[6]),
    .A1(\u_async_fifo/fifomem/mem[1] [6]),
    .S(\u_async_fifo/fifomem/_174_ ),
    .X(\u_async_fifo/fifomem/_054_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_295_  (.A0(fifo_wdata[7]),
    .A1(\u_async_fifo/fifomem/mem[1] [7]),
    .S(\u_async_fifo/fifomem/_174_ ),
    .X(\u_async_fifo/fifomem/_055_ ));
 sky130_fd_sc_hd__nand3_1 \u_async_fifo/fifomem/_296_  (.A(\u_async_fifo/waddr [3]),
    .B(\u_async_fifo/waddr [2]),
    .C(\u_async_fifo/_0_ ),
    .Y(\u_async_fifo/fifomem/_175_ ));
 sky130_fd_sc_hd__nor2_1 \u_async_fifo/fifomem/_297_  (.A(\u_async_fifo/fifomem/_173_ ),
    .B(\u_async_fifo/fifomem/_175_ ),
    .Y(\u_async_fifo/fifomem/_176_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_298_  (.A0(\u_async_fifo/fifomem/mem[13] [0]),
    .A1(fifo_wdata[0]),
    .S(\u_async_fifo/fifomem/_176_ ),
    .X(\u_async_fifo/fifomem/_056_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_299_  (.A0(\u_async_fifo/fifomem/mem[13] [1]),
    .A1(fifo_wdata[1]),
    .S(\u_async_fifo/fifomem/_176_ ),
    .X(\u_async_fifo/fifomem/_057_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_300_  (.A0(\u_async_fifo/fifomem/mem[13] [2]),
    .A1(fifo_wdata[2]),
    .S(\u_async_fifo/fifomem/_176_ ),
    .X(\u_async_fifo/fifomem/_058_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_301_  (.A0(\u_async_fifo/fifomem/mem[13] [3]),
    .A1(fifo_wdata[3]),
    .S(\u_async_fifo/fifomem/_176_ ),
    .X(\u_async_fifo/fifomem/_059_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_302_  (.A0(\u_async_fifo/fifomem/mem[13] [4]),
    .A1(fifo_wdata[4]),
    .S(\u_async_fifo/fifomem/_176_ ),
    .X(\u_async_fifo/fifomem/_060_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_303_  (.A0(\u_async_fifo/fifomem/mem[13] [5]),
    .A1(fifo_wdata[5]),
    .S(\u_async_fifo/fifomem/_176_ ),
    .X(\u_async_fifo/fifomem/_061_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_304_  (.A0(\u_async_fifo/fifomem/mem[13] [6]),
    .A1(fifo_wdata[6]),
    .S(\u_async_fifo/fifomem/_176_ ),
    .X(\u_async_fifo/fifomem/_062_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_305_  (.A0(\u_async_fifo/fifomem/mem[13] [7]),
    .A1(fifo_wdata[7]),
    .S(\u_async_fifo/fifomem/_176_ ),
    .X(\u_async_fifo/fifomem/_063_ ));
 sky130_fd_sc_hd__nor2_1 \u_async_fifo/fifomem/_306_  (.A(\u_async_fifo/fifomem/_162_ ),
    .B(\u_async_fifo/fifomem/_166_ ),
    .Y(\u_async_fifo/fifomem/_177_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_307_  (.A0(\u_async_fifo/fifomem/mem[11] [0]),
    .A1(fifo_wdata[0]),
    .S(\u_async_fifo/fifomem/_177_ ),
    .X(\u_async_fifo/fifomem/_064_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_308_  (.A0(\u_async_fifo/fifomem/mem[11] [1]),
    .A1(fifo_wdata[1]),
    .S(\u_async_fifo/fifomem/_177_ ),
    .X(\u_async_fifo/fifomem/_065_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_309_  (.A0(\u_async_fifo/fifomem/mem[11] [2]),
    .A1(fifo_wdata[2]),
    .S(\u_async_fifo/fifomem/_177_ ),
    .X(\u_async_fifo/fifomem/_066_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_310_  (.A0(\u_async_fifo/fifomem/mem[11] [3]),
    .A1(fifo_wdata[3]),
    .S(\u_async_fifo/fifomem/_177_ ),
    .X(\u_async_fifo/fifomem/_067_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_311_  (.A0(\u_async_fifo/fifomem/mem[11] [4]),
    .A1(fifo_wdata[4]),
    .S(\u_async_fifo/fifomem/_177_ ),
    .X(\u_async_fifo/fifomem/_068_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_312_  (.A0(\u_async_fifo/fifomem/mem[11] [5]),
    .A1(fifo_wdata[5]),
    .S(\u_async_fifo/fifomem/_177_ ),
    .X(\u_async_fifo/fifomem/_069_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_313_  (.A0(\u_async_fifo/fifomem/mem[11] [6]),
    .A1(fifo_wdata[6]),
    .S(\u_async_fifo/fifomem/_177_ ),
    .X(\u_async_fifo/fifomem/_070_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_314_  (.A0(\u_async_fifo/fifomem/mem[11] [7]),
    .A1(fifo_wdata[7]),
    .S(\u_async_fifo/fifomem/_177_ ),
    .X(\u_async_fifo/fifomem/_071_ ));
 sky130_fd_sc_hd__nor2_1 \u_async_fifo/fifomem/_315_  (.A(\u_async_fifo/fifomem/_163_ ),
    .B(\u_async_fifo/fifomem/_173_ ),
    .Y(\u_async_fifo/fifomem/_178_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_316_  (.A0(\u_async_fifo/fifomem/mem[5] [0]),
    .A1(fifo_wdata[0]),
    .S(\u_async_fifo/fifomem/_178_ ),
    .X(\u_async_fifo/fifomem/_072_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_317_  (.A0(\u_async_fifo/fifomem/mem[5] [1]),
    .A1(fifo_wdata[1]),
    .S(\u_async_fifo/fifomem/_178_ ),
    .X(\u_async_fifo/fifomem/_073_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_318_  (.A0(\u_async_fifo/fifomem/mem[5] [2]),
    .A1(fifo_wdata[2]),
    .S(\u_async_fifo/fifomem/_178_ ),
    .X(\u_async_fifo/fifomem/_074_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_319_  (.A0(\u_async_fifo/fifomem/mem[5] [3]),
    .A1(fifo_wdata[3]),
    .S(\u_async_fifo/fifomem/_178_ ),
    .X(\u_async_fifo/fifomem/_075_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_320_  (.A0(\u_async_fifo/fifomem/mem[5] [4]),
    .A1(fifo_wdata[4]),
    .S(\u_async_fifo/fifomem/_178_ ),
    .X(\u_async_fifo/fifomem/_076_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_321_  (.A0(\u_async_fifo/fifomem/mem[5] [5]),
    .A1(fifo_wdata[5]),
    .S(\u_async_fifo/fifomem/_178_ ),
    .X(\u_async_fifo/fifomem/_077_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_322_  (.A0(\u_async_fifo/fifomem/mem[5] [6]),
    .A1(fifo_wdata[6]),
    .S(\u_async_fifo/fifomem/_178_ ),
    .X(\u_async_fifo/fifomem/_078_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_323_  (.A0(\u_async_fifo/fifomem/mem[5] [7]),
    .A1(fifo_wdata[7]),
    .S(\u_async_fifo/fifomem/_178_ ),
    .X(\u_async_fifo/fifomem/_079_ ));
 sky130_fd_sc_hd__nor2_1 \u_async_fifo/fifomem/_324_  (.A(\u_async_fifo/fifomem/_162_ ),
    .B(\u_async_fifo/fifomem/_175_ ),
    .Y(\u_async_fifo/fifomem/_179_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_325_  (.A0(\u_async_fifo/fifomem/mem[15] [0]),
    .A1(fifo_wdata[0]),
    .S(\u_async_fifo/fifomem/_179_ ),
    .X(\u_async_fifo/fifomem/_080_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_326_  (.A0(\u_async_fifo/fifomem/mem[15] [1]),
    .A1(fifo_wdata[1]),
    .S(\u_async_fifo/fifomem/_179_ ),
    .X(\u_async_fifo/fifomem/_081_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_327_  (.A0(\u_async_fifo/fifomem/mem[15] [2]),
    .A1(fifo_wdata[2]),
    .S(\u_async_fifo/fifomem/_179_ ),
    .X(\u_async_fifo/fifomem/_082_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_328_  (.A0(\u_async_fifo/fifomem/mem[15] [3]),
    .A1(fifo_wdata[3]),
    .S(\u_async_fifo/fifomem/_179_ ),
    .X(\u_async_fifo/fifomem/_083_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_329_  (.A0(\u_async_fifo/fifomem/mem[15] [4]),
    .A1(fifo_wdata[4]),
    .S(\u_async_fifo/fifomem/_179_ ),
    .X(\u_async_fifo/fifomem/_084_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_330_  (.A0(\u_async_fifo/fifomem/mem[15] [5]),
    .A1(fifo_wdata[5]),
    .S(\u_async_fifo/fifomem/_179_ ),
    .X(\u_async_fifo/fifomem/_085_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_331_  (.A0(\u_async_fifo/fifomem/mem[15] [6]),
    .A1(fifo_wdata[6]),
    .S(\u_async_fifo/fifomem/_179_ ),
    .X(\u_async_fifo/fifomem/_086_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_332_  (.A0(\u_async_fifo/fifomem/mem[15] [7]),
    .A1(fifo_wdata[7]),
    .S(\u_async_fifo/fifomem/_179_ ),
    .X(\u_async_fifo/fifomem/_087_ ));
 sky130_fd_sc_hd__nor3b_1 \u_async_fifo/fifomem/_333_  (.A(\u_async_fifo/fifomem/_160_ ),
    .B(\u_async_fifo/waddr [3]),
    .C_N(\u_async_fifo/waddr [2]),
    .Y(\u_async_fifo/fifomem/_180_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_334_  (.A0(\u_async_fifo/fifomem/mem[6] [0]),
    .A1(fifo_wdata[0]),
    .S(\u_async_fifo/fifomem/_180_ ),
    .X(\u_async_fifo/fifomem/_088_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_335_  (.A0(\u_async_fifo/fifomem/mem[6] [1]),
    .A1(fifo_wdata[1]),
    .S(\u_async_fifo/fifomem/_180_ ),
    .X(\u_async_fifo/fifomem/_089_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_336_  (.A0(\u_async_fifo/fifomem/mem[6] [2]),
    .A1(fifo_wdata[2]),
    .S(\u_async_fifo/fifomem/_180_ ),
    .X(\u_async_fifo/fifomem/_090_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_337_  (.A0(\u_async_fifo/fifomem/mem[6] [3]),
    .A1(fifo_wdata[3]),
    .S(\u_async_fifo/fifomem/_180_ ),
    .X(\u_async_fifo/fifomem/_091_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_338_  (.A0(\u_async_fifo/fifomem/mem[6] [4]),
    .A1(fifo_wdata[4]),
    .S(\u_async_fifo/fifomem/_180_ ),
    .X(\u_async_fifo/fifomem/_092_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_339_  (.A0(\u_async_fifo/fifomem/mem[6] [5]),
    .A1(fifo_wdata[5]),
    .S(\u_async_fifo/fifomem/_180_ ),
    .X(\u_async_fifo/fifomem/_093_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_340_  (.A0(\u_async_fifo/fifomem/mem[6] [6]),
    .A1(fifo_wdata[6]),
    .S(\u_async_fifo/fifomem/_180_ ),
    .X(\u_async_fifo/fifomem/_094_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_341_  (.A0(\u_async_fifo/fifomem/mem[6] [7]),
    .A1(fifo_wdata[7]),
    .S(\u_async_fifo/fifomem/_180_ ),
    .X(\u_async_fifo/fifomem/_095_ ));
 sky130_fd_sc_hd__nor3_1 \u_async_fifo/fifomem/_342_  (.A(\u_async_fifo/waddr [0]),
    .B(\u_async_fifo/waddr [1]),
    .C(\u_async_fifo/fifomem/_175_ ),
    .Y(\u_async_fifo/fifomem/_181_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_343_  (.A0(\u_async_fifo/fifomem/mem[12] [0]),
    .A1(fifo_wdata[0]),
    .S(\u_async_fifo/fifomem/_181_ ),
    .X(\u_async_fifo/fifomem/_096_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_344_  (.A0(\u_async_fifo/fifomem/mem[12] [1]),
    .A1(fifo_wdata[1]),
    .S(\u_async_fifo/fifomem/_181_ ),
    .X(\u_async_fifo/fifomem/_097_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_345_  (.A0(\u_async_fifo/fifomem/mem[12] [2]),
    .A1(fifo_wdata[2]),
    .S(\u_async_fifo/fifomem/_181_ ),
    .X(\u_async_fifo/fifomem/_098_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_346_  (.A0(\u_async_fifo/fifomem/mem[12] [3]),
    .A1(fifo_wdata[3]),
    .S(\u_async_fifo/fifomem/_181_ ),
    .X(\u_async_fifo/fifomem/_099_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_347_  (.A0(\u_async_fifo/fifomem/mem[12] [4]),
    .A1(fifo_wdata[4]),
    .S(\u_async_fifo/fifomem/_181_ ),
    .X(\u_async_fifo/fifomem/_100_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_348_  (.A0(\u_async_fifo/fifomem/mem[12] [5]),
    .A1(fifo_wdata[5]),
    .S(\u_async_fifo/fifomem/_181_ ),
    .X(\u_async_fifo/fifomem/_101_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_349_  (.A0(\u_async_fifo/fifomem/mem[12] [6]),
    .A1(fifo_wdata[6]),
    .S(\u_async_fifo/fifomem/_181_ ),
    .X(\u_async_fifo/fifomem/_102_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_350_  (.A0(\u_async_fifo/fifomem/mem[12] [7]),
    .A1(fifo_wdata[7]),
    .S(\u_async_fifo/fifomem/_181_ ),
    .X(\u_async_fifo/fifomem/_103_ ));
 sky130_fd_sc_hd__nor4b_1 \u_async_fifo/fifomem/_351_  (.A(\u_async_fifo/waddr [3]),
    .B(\u_async_fifo/fifomem/_162_ ),
    .C(\u_async_fifo/waddr [2]),
    .D_N(\u_async_fifo/_0_ ),
    .Y(\u_async_fifo/fifomem/_182_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_352_  (.A0(\u_async_fifo/fifomem/mem[3] [0]),
    .A1(fifo_wdata[0]),
    .S(\u_async_fifo/fifomem/_182_ ),
    .X(\u_async_fifo/fifomem/_104_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_353_  (.A0(\u_async_fifo/fifomem/mem[3] [1]),
    .A1(fifo_wdata[1]),
    .S(\u_async_fifo/fifomem/_182_ ),
    .X(\u_async_fifo/fifomem/_105_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_354_  (.A0(\u_async_fifo/fifomem/mem[3] [2]),
    .A1(fifo_wdata[2]),
    .S(\u_async_fifo/fifomem/_182_ ),
    .X(\u_async_fifo/fifomem/_106_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_355_  (.A0(\u_async_fifo/fifomem/mem[3] [3]),
    .A1(fifo_wdata[3]),
    .S(\u_async_fifo/fifomem/_182_ ),
    .X(\u_async_fifo/fifomem/_107_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_356_  (.A0(\u_async_fifo/fifomem/mem[3] [4]),
    .A1(fifo_wdata[4]),
    .S(\u_async_fifo/fifomem/_182_ ),
    .X(\u_async_fifo/fifomem/_108_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_357_  (.A0(\u_async_fifo/fifomem/mem[3] [5]),
    .A1(fifo_wdata[5]),
    .S(\u_async_fifo/fifomem/_182_ ),
    .X(\u_async_fifo/fifomem/_109_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_358_  (.A0(\u_async_fifo/fifomem/mem[3] [6]),
    .A1(fifo_wdata[6]),
    .S(\u_async_fifo/fifomem/_182_ ),
    .X(\u_async_fifo/fifomem/_110_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_359_  (.A0(\u_async_fifo/fifomem/mem[3] [7]),
    .A1(fifo_wdata[7]),
    .S(\u_async_fifo/fifomem/_182_ ),
    .X(\u_async_fifo/fifomem/_111_ ));
 sky130_fd_sc_hd__nor2_1 \u_async_fifo/fifomem/_360_  (.A(\u_async_fifo/fifomem/_166_ ),
    .B(\u_async_fifo/fifomem/_173_ ),
    .Y(\u_async_fifo/fifomem/_183_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_361_  (.A0(\u_async_fifo/fifomem/mem[9] [0]),
    .A1(fifo_wdata[0]),
    .S(\u_async_fifo/fifomem/_183_ ),
    .X(\u_async_fifo/fifomem/_112_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_362_  (.A0(\u_async_fifo/fifomem/mem[9] [1]),
    .A1(fifo_wdata[1]),
    .S(\u_async_fifo/fifomem/_183_ ),
    .X(\u_async_fifo/fifomem/_113_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_363_  (.A0(\u_async_fifo/fifomem/mem[9] [2]),
    .A1(fifo_wdata[2]),
    .S(\u_async_fifo/fifomem/_183_ ),
    .X(\u_async_fifo/fifomem/_114_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_364_  (.A0(\u_async_fifo/fifomem/mem[9] [3]),
    .A1(fifo_wdata[3]),
    .S(\u_async_fifo/fifomem/_183_ ),
    .X(\u_async_fifo/fifomem/_115_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_365_  (.A0(\u_async_fifo/fifomem/mem[9] [4]),
    .A1(fifo_wdata[4]),
    .S(\u_async_fifo/fifomem/_183_ ),
    .X(\u_async_fifo/fifomem/_116_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_366_  (.A0(\u_async_fifo/fifomem/mem[9] [5]),
    .A1(fifo_wdata[5]),
    .S(\u_async_fifo/fifomem/_183_ ),
    .X(\u_async_fifo/fifomem/_117_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_367_  (.A0(\u_async_fifo/fifomem/mem[9] [6]),
    .A1(fifo_wdata[6]),
    .S(\u_async_fifo/fifomem/_183_ ),
    .X(\u_async_fifo/fifomem/_118_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_368_  (.A0(\u_async_fifo/fifomem/mem[9] [7]),
    .A1(fifo_wdata[7]),
    .S(\u_async_fifo/fifomem/_183_ ),
    .X(\u_async_fifo/fifomem/_119_ ));
 sky130_fd_sc_hd__nand2b_1 \u_async_fifo/fifomem/_369_  (.A_N(\u_async_fifo/fifomem/_163_ ),
    .B(\u_async_fifo/fifomem/_165_ ),
    .Y(\u_async_fifo/fifomem/_184_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_370_  (.A0(fifo_wdata[0]),
    .A1(\u_async_fifo/fifomem/mem[4] [0]),
    .S(\u_async_fifo/fifomem/_184_ ),
    .X(\u_async_fifo/fifomem/_120_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_371_  (.A0(fifo_wdata[1]),
    .A1(\u_async_fifo/fifomem/mem[4] [1]),
    .S(\u_async_fifo/fifomem/_184_ ),
    .X(\u_async_fifo/fifomem/_121_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_372_  (.A0(fifo_wdata[2]),
    .A1(\u_async_fifo/fifomem/mem[4] [2]),
    .S(\u_async_fifo/fifomem/_184_ ),
    .X(\u_async_fifo/fifomem/_122_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_373_  (.A0(fifo_wdata[3]),
    .A1(\u_async_fifo/fifomem/mem[4] [3]),
    .S(\u_async_fifo/fifomem/_184_ ),
    .X(\u_async_fifo/fifomem/_123_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_374_  (.A0(fifo_wdata[4]),
    .A1(\u_async_fifo/fifomem/mem[4] [4]),
    .S(\u_async_fifo/fifomem/_184_ ),
    .X(\u_async_fifo/fifomem/_124_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_375_  (.A0(fifo_wdata[5]),
    .A1(\u_async_fifo/fifomem/mem[4] [5]),
    .S(\u_async_fifo/fifomem/_184_ ),
    .X(\u_async_fifo/fifomem/_125_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_376_  (.A0(fifo_wdata[6]),
    .A1(\u_async_fifo/fifomem/mem[4] [6]),
    .S(\u_async_fifo/fifomem/_184_ ),
    .X(\u_async_fifo/fifomem/_126_ ));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/fifomem/_377_  (.A0(fifo_wdata[7]),
    .A1(\u_async_fifo/fifomem/mem[4] [7]),
    .S(\u_async_fifo/fifomem/_184_ ),
    .X(\u_async_fifo/fifomem/_127_ ));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_378_  (.CLK(clknet_4_10_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_000_ ),
    .Q(\u_async_fifo/fifomem/mem[10] [0]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_379_  (.CLK(clknet_4_10_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_001_ ),
    .Q(\u_async_fifo/fifomem/mem[10] [1]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_380_  (.CLK(clknet_4_8_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_002_ ),
    .Q(\u_async_fifo/fifomem/mem[10] [2]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_381_  (.CLK(clknet_4_9_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_003_ ),
    .Q(\u_async_fifo/fifomem/mem[10] [3]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_382_  (.CLK(clknet_4_8_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_004_ ),
    .Q(\u_async_fifo/fifomem/mem[10] [4]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_383_  (.CLK(clknet_4_10_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_005_ ),
    .Q(\u_async_fifo/fifomem/mem[10] [5]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_384_  (.CLK(clknet_4_2_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_006_ ),
    .Q(\u_async_fifo/fifomem/mem[10] [6]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_385_  (.CLK(clknet_4_8_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_007_ ),
    .Q(\u_async_fifo/fifomem/mem[10] [7]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_386_  (.CLK(clknet_4_2_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_008_ ),
    .Q(\u_async_fifo/fifomem/mem[7] [0]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_387_  (.CLK(clknet_4_1_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_009_ ),
    .Q(\u_async_fifo/fifomem/mem[7] [1]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_388_  (.CLK(clknet_4_2_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_010_ ),
    .Q(\u_async_fifo/fifomem/mem[7] [2]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_389_  (.CLK(clknet_4_2_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_011_ ),
    .Q(\u_async_fifo/fifomem/mem[7] [3]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_390_  (.CLK(clknet_4_0_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_012_ ),
    .Q(\u_async_fifo/fifomem/mem[7] [4]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_391_  (.CLK(clknet_4_2_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_013_ ),
    .Q(\u_async_fifo/fifomem/mem[7] [5]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_392_  (.CLK(clknet_4_0_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_014_ ),
    .Q(\u_async_fifo/fifomem/mem[7] [6]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_393_  (.CLK(clknet_4_0_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_015_ ),
    .Q(\u_async_fifo/fifomem/mem[7] [7]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_394_  (.CLK(clknet_4_9_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_016_ ),
    .Q(\u_async_fifo/fifomem/mem[8] [0]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_395_  (.CLK(clknet_4_4_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_017_ ),
    .Q(\u_async_fifo/fifomem/mem[8] [1]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_396_  (.CLK(clknet_4_3_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_018_ ),
    .Q(\u_async_fifo/fifomem/mem[8] [2]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_397_  (.CLK(clknet_4_6_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_019_ ),
    .Q(\u_async_fifo/fifomem/mem[8] [3]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_398_  (.CLK(clknet_4_4_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_020_ ),
    .Q(\u_async_fifo/fifomem/mem[8] [4]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_399_  (.CLK(clknet_4_3_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_021_ ),
    .Q(\u_async_fifo/fifomem/mem[8] [5]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_400_  (.CLK(clknet_4_1_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_022_ ),
    .Q(\u_async_fifo/fifomem/mem[8] [6]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_401_  (.CLK(clknet_4_4_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_023_ ),
    .Q(\u_async_fifo/fifomem/mem[8] [7]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_402_  (.CLK(clknet_4_12_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_024_ ),
    .Q(\u_async_fifo/fifomem/mem[0] [0]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_403_  (.CLK(clknet_4_5_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_025_ ),
    .Q(\u_async_fifo/fifomem/mem[0] [1]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_404_  (.CLK(clknet_4_7_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_026_ ),
    .Q(\u_async_fifo/fifomem/mem[0] [2]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_405_  (.CLK(clknet_4_7_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_027_ ),
    .Q(\u_async_fifo/fifomem/mem[0] [3]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_406_  (.CLK(clknet_4_7_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_028_ ),
    .Q(\u_async_fifo/fifomem/mem[0] [4]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_407_  (.CLK(clknet_4_12_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_029_ ),
    .Q(\u_async_fifo/fifomem/mem[0] [5]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_408_  (.CLK(clknet_4_4_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_030_ ),
    .Q(\u_async_fifo/fifomem/mem[0] [6]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_409_  (.CLK(clknet_4_5_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_031_ ),
    .Q(\u_async_fifo/fifomem/mem[0] [7]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_410_  (.CLK(clknet_4_3_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_032_ ),
    .Q(\u_async_fifo/fifomem/mem[2] [0]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_411_  (.CLK(clknet_4_1_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_033_ ),
    .Q(\u_async_fifo/fifomem/mem[2] [1]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_412_  (.CLK(clknet_4_2_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_034_ ),
    .Q(\u_async_fifo/fifomem/mem[2] [2]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_413_  (.CLK(clknet_4_2_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_035_ ),
    .Q(\u_async_fifo/fifomem/mem[2] [3]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_414_  (.CLK(clknet_4_0_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_036_ ),
    .Q(\u_async_fifo/fifomem/mem[2] [4]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_415_  (.CLK(clknet_4_2_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_037_ ),
    .Q(\u_async_fifo/fifomem/mem[2] [5]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_416_  (.CLK(clknet_4_1_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_038_ ),
    .Q(\u_async_fifo/fifomem/mem[2] [6]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_417_  (.CLK(clknet_4_0_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_039_ ),
    .Q(\u_async_fifo/fifomem/mem[2] [7]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_418_  (.CLK(clknet_4_10_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_040_ ),
    .Q(\u_async_fifo/fifomem/mem[14] [0]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_419_  (.CLK(clknet_4_8_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_041_ ),
    .Q(\u_async_fifo/fifomem/mem[14] [1]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_420_  (.CLK(clknet_4_10_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_042_ ),
    .Q(\u_async_fifo/fifomem/mem[14] [2]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_421_  (.CLK(clknet_4_8_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_043_ ),
    .Q(\u_async_fifo/fifomem/mem[14] [3]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_422_  (.CLK(clknet_4_8_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_044_ ),
    .Q(\u_async_fifo/fifomem/mem[14] [4]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_423_  (.CLK(clknet_4_10_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_045_ ),
    .Q(\u_async_fifo/fifomem/mem[14] [5]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_424_  (.CLK(clknet_4_8_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_046_ ),
    .Q(\u_async_fifo/fifomem/mem[14] [6]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_425_  (.CLK(clknet_4_8_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_047_ ),
    .Q(\u_async_fifo/fifomem/mem[14] [7]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_426_  (.CLK(clknet_4_12_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_048_ ),
    .Q(\u_async_fifo/fifomem/mem[1] [0]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_427_  (.CLK(clknet_4_5_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_049_ ),
    .Q(\u_async_fifo/fifomem/mem[1] [1]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_428_  (.CLK(clknet_4_7_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_050_ ),
    .Q(\u_async_fifo/fifomem/mem[1] [2]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_429_  (.CLK(clknet_4_7_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_051_ ),
    .Q(\u_async_fifo/fifomem/mem[1] [3]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_430_  (.CLK(clknet_4_7_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_052_ ),
    .Q(\u_async_fifo/fifomem/mem[1] [4]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_431_  (.CLK(clknet_4_7_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_053_ ),
    .Q(\u_async_fifo/fifomem/mem[1] [5]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_432_  (.CLK(clknet_4_4_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_054_ ),
    .Q(\u_async_fifo/fifomem/mem[1] [6]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_433_  (.CLK(clknet_4_5_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_055_ ),
    .Q(\u_async_fifo/fifomem/mem[1] [7]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_434_  (.CLK(clknet_4_6_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_056_ ),
    .Q(\u_async_fifo/fifomem/mem[13] [0]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_435_  (.CLK(clknet_4_4_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_057_ ),
    .Q(\u_async_fifo/fifomem/mem[13] [1]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_436_  (.CLK(clknet_4_3_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_058_ ),
    .Q(\u_async_fifo/fifomem/mem[13] [2]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_437_  (.CLK(clknet_4_6_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_059_ ),
    .Q(\u_async_fifo/fifomem/mem[13] [3]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_438_  (.CLK(clknet_4_1_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_060_ ),
    .Q(\u_async_fifo/fifomem/mem[13] [4]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_439_  (.CLK(clknet_4_3_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_061_ ),
    .Q(\u_async_fifo/fifomem/mem[13] [5]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_440_  (.CLK(clknet_4_1_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_062_ ),
    .Q(\u_async_fifo/fifomem/mem[13] [6]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_441_  (.CLK(clknet_4_1_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_063_ ),
    .Q(\u_async_fifo/fifomem/mem[13] [7]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_442_  (.CLK(clknet_4_10_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_064_ ),
    .Q(\u_async_fifo/fifomem/mem[11] [0]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_443_  (.CLK(clknet_4_10_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_065_ ),
    .Q(\u_async_fifo/fifomem/mem[11] [1]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_444_  (.CLK(clknet_4_10_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_066_ ),
    .Q(\u_async_fifo/fifomem/mem[11] [2]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_445_  (.CLK(clknet_4_9_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_067_ ),
    .Q(\u_async_fifo/fifomem/mem[11] [3]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_446_  (.CLK(clknet_4_8_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_068_ ),
    .Q(\u_async_fifo/fifomem/mem[11] [4]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_447_  (.CLK(clknet_4_10_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_069_ ),
    .Q(\u_async_fifo/fifomem/mem[11] [5]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_448_  (.CLK(clknet_4_8_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_070_ ),
    .Q(\u_async_fifo/fifomem/mem[11] [6]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_449_  (.CLK(clknet_4_8_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_071_ ),
    .Q(\u_async_fifo/fifomem/mem[11] [7]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_450_  (.CLK(clknet_4_12_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_072_ ),
    .Q(\u_async_fifo/fifomem/mem[5] [0]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_451_  (.CLK(clknet_4_5_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_073_ ),
    .Q(\u_async_fifo/fifomem/mem[5] [1]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_452_  (.CLK(clknet_4_6_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_074_ ),
    .Q(\u_async_fifo/fifomem/mem[5] [2]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_453_  (.CLK(clknet_4_7_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_075_ ),
    .Q(\u_async_fifo/fifomem/mem[5] [3]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_454_  (.CLK(clknet_4_5_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_076_ ),
    .Q(\u_async_fifo/fifomem/mem[5] [4]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_455_  (.CLK(clknet_4_12_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_077_ ),
    .Q(\u_async_fifo/fifomem/mem[5] [5]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_456_  (.CLK(clknet_4_4_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_078_ ),
    .Q(\u_async_fifo/fifomem/mem[5] [6]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_457_  (.CLK(clknet_4_5_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_079_ ),
    .Q(\u_async_fifo/fifomem/mem[5] [7]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_458_  (.CLK(clknet_4_10_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_080_ ),
    .Q(\u_async_fifo/fifomem/mem[15] [0]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_459_  (.CLK(clknet_4_10_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_081_ ),
    .Q(\u_async_fifo/fifomem/mem[15] [1]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_460_  (.CLK(clknet_4_10_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_082_ ),
    .Q(\u_async_fifo/fifomem/mem[15] [2]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_461_  (.CLK(clknet_4_8_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_083_ ),
    .Q(\u_async_fifo/fifomem/mem[15] [3]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_462_  (.CLK(clknet_4_8_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_084_ ),
    .Q(\u_async_fifo/fifomem/mem[15] [4]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_463_  (.CLK(clknet_4_10_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_085_ ),
    .Q(\u_async_fifo/fifomem/mem[15] [5]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_464_  (.CLK(clknet_4_2_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_086_ ),
    .Q(\u_async_fifo/fifomem/mem[15] [6]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_465_  (.CLK(clknet_4_8_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_087_ ),
    .Q(\u_async_fifo/fifomem/mem[15] [7]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_466_  (.CLK(clknet_4_2_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_088_ ),
    .Q(\u_async_fifo/fifomem/mem[6] [0]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_467_  (.CLK(clknet_4_1_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_089_ ),
    .Q(\u_async_fifo/fifomem/mem[6] [1]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_468_  (.CLK(clknet_4_2_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_090_ ),
    .Q(\u_async_fifo/fifomem/mem[6] [2]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_469_  (.CLK(clknet_4_2_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_091_ ),
    .Q(\u_async_fifo/fifomem/mem[6] [3]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_470_  (.CLK(clknet_4_0_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_092_ ),
    .Q(\u_async_fifo/fifomem/mem[6] [4]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_471_  (.CLK(clknet_4_2_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_093_ ),
    .Q(\u_async_fifo/fifomem/mem[6] [5]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_472_  (.CLK(clknet_4_0_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_094_ ),
    .Q(\u_async_fifo/fifomem/mem[6] [6]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_473_  (.CLK(clknet_4_0_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_095_ ),
    .Q(\u_async_fifo/fifomem/mem[6] [7]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_474_  (.CLK(clknet_4_3_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_096_ ),
    .Q(\u_async_fifo/fifomem/mem[12] [0]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_475_  (.CLK(clknet_4_4_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_097_ ),
    .Q(\u_async_fifo/fifomem/mem[12] [1]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_476_  (.CLK(clknet_4_1_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_098_ ),
    .Q(\u_async_fifo/fifomem/mem[12] [2]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_477_  (.CLK(clknet_4_6_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_099_ ),
    .Q(\u_async_fifo/fifomem/mem[12] [3]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_478_  (.CLK(clknet_4_1_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_100_ ),
    .Q(\u_async_fifo/fifomem/mem[12] [4]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_479_  (.CLK(clknet_4_3_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_101_ ),
    .Q(\u_async_fifo/fifomem/mem[12] [5]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_480_  (.CLK(clknet_4_1_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_102_ ),
    .Q(\u_async_fifo/fifomem/mem[12] [6]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_481_  (.CLK(clknet_4_1_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_103_ ),
    .Q(\u_async_fifo/fifomem/mem[12] [7]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_482_  (.CLK(clknet_4_3_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_104_ ),
    .Q(\u_async_fifo/fifomem/mem[3] [0]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_483_  (.CLK(clknet_4_1_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_105_ ),
    .Q(\u_async_fifo/fifomem/mem[3] [1]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_484_  (.CLK(clknet_4_2_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_106_ ),
    .Q(\u_async_fifo/fifomem/mem[3] [2]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_485_  (.CLK(clknet_4_3_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_107_ ),
    .Q(\u_async_fifo/fifomem/mem[3] [3]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_486_  (.CLK(clknet_4_0_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_108_ ),
    .Q(\u_async_fifo/fifomem/mem[3] [4]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_487_  (.CLK(clknet_4_2_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_109_ ),
    .Q(\u_async_fifo/fifomem/mem[3] [5]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_488_  (.CLK(clknet_4_0_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_110_ ),
    .Q(\u_async_fifo/fifomem/mem[3] [6]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_489_  (.CLK(clknet_4_0_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_111_ ),
    .Q(\u_async_fifo/fifomem/mem[3] [7]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_490_  (.CLK(clknet_4_6_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_112_ ),
    .Q(\u_async_fifo/fifomem/mem[9] [0]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_491_  (.CLK(clknet_4_4_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_113_ ),
    .Q(\u_async_fifo/fifomem/mem[9] [1]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_492_  (.CLK(clknet_4_3_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_114_ ),
    .Q(\u_async_fifo/fifomem/mem[9] [2]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_493_  (.CLK(clknet_4_6_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_115_ ),
    .Q(\u_async_fifo/fifomem/mem[9] [3]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_494_  (.CLK(clknet_4_4_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_116_ ),
    .Q(\u_async_fifo/fifomem/mem[9] [4]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_495_  (.CLK(clknet_4_3_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_117_ ),
    .Q(\u_async_fifo/fifomem/mem[9] [5]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_496_  (.CLK(clknet_4_1_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_118_ ),
    .Q(\u_async_fifo/fifomem/mem[9] [6]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_497_  (.CLK(clknet_4_4_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_119_ ),
    .Q(\u_async_fifo/fifomem/mem[9] [7]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_498_  (.CLK(clknet_4_12_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_120_ ),
    .Q(\u_async_fifo/fifomem/mem[4] [0]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_499_  (.CLK(clknet_4_5_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_121_ ),
    .Q(\u_async_fifo/fifomem/mem[4] [1]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_500_  (.CLK(clknet_4_6_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_122_ ),
    .Q(\u_async_fifo/fifomem/mem[4] [2]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_501_  (.CLK(clknet_4_7_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_123_ ),
    .Q(\u_async_fifo/fifomem/mem[4] [3]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_502_  (.CLK(clknet_4_5_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_124_ ),
    .Q(\u_async_fifo/fifomem/mem[4] [4]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_503_  (.CLK(clknet_4_12_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_125_ ),
    .Q(\u_async_fifo/fifomem/mem[4] [5]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_504_  (.CLK(clknet_4_4_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_126_ ),
    .Q(\u_async_fifo/fifomem/mem[4] [6]));
 sky130_fd_sc_hd__dfxtp_1 \u_async_fifo/fifomem/_505_  (.CLK(clknet_4_4_0_s_axi_aclk),
    .D(\u_async_fifo/fifomem/_127_ ),
    .Q(\u_async_fifo/fifomem/mem[4] [7]));
 sky130_fd_sc_hd__clkinv_1 \u_async_fifo/rptr_empty/_14_  (.A(\u_async_fifo/raddr [2]),
    .Y(\u_async_fifo/rptr_empty/_00_ ));
 sky130_fd_sc_hd__nand2b_1 \u_async_fifo/rptr_empty/_15_  (.A_N(fifo_rempty),
    .B(fifo_rinc),
    .Y(\u_async_fifo/rptr_empty/_01_ ));
 sky130_fd_sc_hd__nand3b_1 \u_async_fifo/rptr_empty/_16_  (.A_N(fifo_rempty),
    .B(fifo_rinc),
    .C(\u_async_fifo/raddr [0]),
    .Y(\u_async_fifo/rptr_empty/_02_ ));
 sky130_fd_sc_hd__and4b_1 \u_async_fifo/rptr_empty/_17_  (.A_N(fifo_rempty),
    .B(fifo_rinc),
    .C(\u_async_fifo/raddr [0]),
    .D(\u_async_fifo/raddr [1]),
    .X(\u_async_fifo/rptr_empty/_03_ ));
 sky130_fd_sc_hd__xor2_1 \u_async_fifo/rptr_empty/_18_  (.A(\u_async_fifo/raddr [1]),
    .B(\u_async_fifo/rptr_empty/_02_ ),
    .X(\u_async_fifo/rptr_empty/_04_ ));
 sky130_fd_sc_hd__clkinv_1 \u_async_fifo/rptr_empty/_19_  (.A(\u_async_fifo/rptr_empty/_04_ ),
    .Y(\u_async_fifo/rptr_empty/rbinnext [1]));
 sky130_fd_sc_hd__nor2_1 \u_async_fifo/rptr_empty/_20_  (.A(\u_async_fifo/raddr [2]),
    .B(\u_async_fifo/rptr_empty/_03_ ),
    .Y(\u_async_fifo/rptr_empty/_05_ ));
 sky130_fd_sc_hd__xnor2_1 \u_async_fifo/rptr_empty/_21_  (.A(\u_async_fifo/raddr [3]),
    .B(\u_async_fifo/rptr_empty/_05_ ),
    .Y(\u_async_fifo/rptr_empty/rgraynext [2]));
 sky130_fd_sc_hd__a21oi_1 \u_async_fifo/rptr_empty/_22_  (.A1(\u_async_fifo/raddr [2]),
    .A2(\u_async_fifo/rptr_empty/_03_ ),
    .B1(\u_async_fifo/raddr [3]),
    .Y(\u_async_fifo/rptr_empty/_06_ ));
 sky130_fd_sc_hd__xnor2_1 \u_async_fifo/rptr_empty/_23_  (.A(\u_async_fifo/rptr [4]),
    .B(\u_async_fifo/rptr_empty/_06_ ),
    .Y(\u_async_fifo/rptr_empty/rgraynext [3]));
 sky130_fd_sc_hd__xnor3_1 \u_async_fifo/rptr_empty/_24_  (.A(\u_async_fifo/raddr [3]),
    .B(\u_async_fifo/rq2_wptr [2]),
    .C(\u_async_fifo/rptr_empty/_05_ ),
    .X(\u_async_fifo/rptr_empty/_07_ ));
 sky130_fd_sc_hd__xnor2_1 \u_async_fifo/rptr_empty/_25_  (.A(\u_async_fifo/raddr [0]),
    .B(\u_async_fifo/rptr_empty/_01_ ),
    .Y(\u_async_fifo/rptr_empty/rbinnext [0]));
 sky130_fd_sc_hd__xnor2_1 \u_async_fifo/rptr_empty/_26_  (.A(\u_async_fifo/rptr_empty/_04_ ),
    .B(\u_async_fifo/rptr_empty/rbinnext [0]),
    .Y(\u_async_fifo/rptr_empty/rgraynext [0]));
 sky130_fd_sc_hd__xnor3_1 \u_async_fifo/rptr_empty/_27_  (.A(\u_async_fifo/rq2_wptr [0]),
    .B(\u_async_fifo/rptr_empty/rbinnext [1]),
    .C(\u_async_fifo/rptr_empty/rbinnext [0]),
    .X(\u_async_fifo/rptr_empty/_08_ ));
 sky130_fd_sc_hd__xnor2_1 \u_async_fifo/rptr_empty/_28_  (.A(\u_async_fifo/rptr_empty/_00_ ),
    .B(\u_async_fifo/rptr_empty/_03_ ),
    .Y(\u_async_fifo/rptr_empty/rbinnext [2]));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/rptr_empty/_29_  (.A0(\u_async_fifo/rptr_empty/_00_ ),
    .A1(\u_async_fifo/rptr_empty/rbinnext [2]),
    .S(\u_async_fifo/rptr_empty/_04_ ),
    .X(\u_async_fifo/rptr_empty/rgraynext [1]));
 sky130_fd_sc_hd__xor2_1 \u_async_fifo/rptr_empty/_30_  (.A(\u_async_fifo/rq2_wptr [1]),
    .B(\u_async_fifo/rptr_empty/rgraynext [1]),
    .X(\u_async_fifo/rptr_empty/_09_ ));
 sky130_fd_sc_hd__and3_1 \u_async_fifo/rptr_empty/_31_  (.A(\u_async_fifo/raddr [2]),
    .B(\u_async_fifo/raddr [3]),
    .C(\u_async_fifo/rptr_empty/_03_ ),
    .X(\u_async_fifo/rptr_empty/_10_ ));
 sky130_fd_sc_hd__xor2_1 \u_async_fifo/rptr_empty/_32_  (.A(\u_async_fifo/rptr [4]),
    .B(\u_async_fifo/rptr_empty/_10_ ),
    .X(\u_async_fifo/rptr_empty/rbinnext [4]));
 sky130_fd_sc_hd__xor2_1 \u_async_fifo/rptr_empty/_33_  (.A(\u_async_fifo/rq2_wptr [4]),
    .B(\u_async_fifo/rptr_empty/rbinnext [4]),
    .X(\u_async_fifo/rptr_empty/_11_ ));
 sky130_fd_sc_hd__xor2_1 \u_async_fifo/rptr_empty/_34_  (.A(\u_async_fifo/rq2_wptr [3]),
    .B(\u_async_fifo/rptr_empty/rgraynext [3]),
    .X(\u_async_fifo/rptr_empty/_12_ ));
 sky130_fd_sc_hd__nand2b_1 \u_async_fifo/rptr_empty/_35_  (.A_N(\u_async_fifo/rptr_empty/_07_ ),
    .B(\u_async_fifo/rptr_empty/_08_ ),
    .Y(\u_async_fifo/rptr_empty/_13_ ));
 sky130_fd_sc_hd__nor4_1 \u_async_fifo/rptr_empty/_36_  (.A(\u_async_fifo/rptr_empty/_09_ ),
    .B(\u_async_fifo/rptr_empty/_11_ ),
    .C(\u_async_fifo/rptr_empty/_12_ ),
    .D(\u_async_fifo/rptr_empty/_13_ ),
    .Y(\u_async_fifo/rptr_empty/rempty_val ));
 sky130_fd_sc_hd__nor2_1 \u_async_fifo/rptr_empty/_37_  (.A(\u_async_fifo/rptr_empty/_06_ ),
    .B(\u_async_fifo/rptr_empty/_10_ ),
    .Y(\u_async_fifo/rptr_empty/rbinnext [3]));
 sky130_fd_sc_hd__dfstp_2 \u_async_fifo/rptr_empty/_38_  (.CLK(clknet_3_5__leaf_uart_clk),
    .D(\u_async_fifo/rptr_empty/rempty_val ),
    .SET_B(uart_rst_n),
    .Q(fifo_rempty));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/rptr_empty/_39_  (.CLK(clknet_3_4__leaf_uart_clk),
    .D(\u_async_fifo/rptr_empty/rgraynext [0]),
    .RESET_B(uart_rst_n),
    .Q(\u_async_fifo/rptr [0]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/rptr_empty/_40_  (.CLK(clknet_3_6__leaf_uart_clk),
    .D(\u_async_fifo/rptr_empty/rgraynext [1]),
    .RESET_B(uart_rst_n),
    .Q(\u_async_fifo/rptr [1]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/rptr_empty/_41_  (.CLK(clknet_3_6__leaf_uart_clk),
    .D(\u_async_fifo/rptr_empty/rgraynext [2]),
    .RESET_B(uart_rst_n),
    .Q(\u_async_fifo/rptr [2]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/rptr_empty/_42_  (.CLK(clknet_3_7__leaf_uart_clk),
    .D(\u_async_fifo/rptr_empty/rgraynext [3]),
    .RESET_B(uart_rst_n),
    .Q(\u_async_fifo/rptr [3]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/rptr_empty/_43_  (.CLK(clknet_3_7__leaf_uart_clk),
    .D(\u_async_fifo/rptr_empty/rbinnext [4]),
    .RESET_B(uart_rst_n),
    .Q(\u_async_fifo/rptr [4]));
 sky130_fd_sc_hd__dfrtp_4 \u_async_fifo/rptr_empty/_44_  (.CLK(clknet_3_5__leaf_uart_clk),
    .D(\u_async_fifo/rptr_empty/rbinnext [0]),
    .RESET_B(uart_rst_n),
    .Q(\u_async_fifo/raddr [0]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/rptr_empty/_45_  (.CLK(clknet_3_5__leaf_uart_clk),
    .D(\u_async_fifo/rptr_empty/rbinnext [1]),
    .RESET_B(uart_rst_n),
    .Q(\u_async_fifo/raddr [1]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/rptr_empty/_46_  (.CLK(clknet_3_6__leaf_uart_clk),
    .D(\u_async_fifo/rptr_empty/rbinnext [2]),
    .RESET_B(uart_rst_n),
    .Q(\u_async_fifo/raddr [2]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/rptr_empty/_47_  (.CLK(clknet_3_7__leaf_uart_clk),
    .D(\u_async_fifo/rptr_empty/rbinnext [3]),
    .RESET_B(uart_rst_n),
    .Q(\u_async_fifo/raddr [3]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/sync_r2w/_0_  (.CLK(clknet_4_13_0_s_axi_aclk),
    .D(\u_async_fifo/sync_r2w/wq1_rptr [0]),
    .RESET_B(s_axi_aresetn),
    .Q(\u_async_fifo/wq2_rptr [0]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/sync_r2w/_1_  (.CLK(clknet_4_15_0_s_axi_aclk),
    .D(\u_async_fifo/sync_r2w/wq1_rptr [1]),
    .RESET_B(s_axi_aresetn),
    .Q(\u_async_fifo/wq2_rptr [1]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/sync_r2w/_2_  (.CLK(clknet_4_13_0_s_axi_aclk),
    .D(\u_async_fifo/sync_r2w/wq1_rptr [2]),
    .RESET_B(s_axi_aresetn),
    .Q(\u_async_fifo/wq2_rptr [2]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/sync_r2w/_3_  (.CLK(clknet_4_15_0_s_axi_aclk),
    .D(\u_async_fifo/sync_r2w/wq1_rptr [3]),
    .RESET_B(s_axi_aresetn),
    .Q(\u_async_fifo/wq2_rptr [3]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/sync_r2w/_4_  (.CLK(clknet_4_15_0_s_axi_aclk),
    .D(\u_async_fifo/sync_r2w/wq1_rptr [4]),
    .RESET_B(s_axi_aresetn),
    .Q(\u_async_fifo/wq2_rptr [4]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/sync_r2w/_5_  (.CLK(clknet_4_13_0_s_axi_aclk),
    .D(\u_async_fifo/rptr [0]),
    .RESET_B(s_axi_aresetn),
    .Q(\u_async_fifo/sync_r2w/wq1_rptr [0]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/sync_r2w/_6_  (.CLK(clknet_4_15_0_s_axi_aclk),
    .D(\u_async_fifo/rptr [1]),
    .RESET_B(s_axi_aresetn),
    .Q(\u_async_fifo/sync_r2w/wq1_rptr [1]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/sync_r2w/_7_  (.CLK(clknet_4_13_0_s_axi_aclk),
    .D(\u_async_fifo/rptr [2]),
    .RESET_B(s_axi_aresetn),
    .Q(\u_async_fifo/sync_r2w/wq1_rptr [2]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/sync_r2w/_8_  (.CLK(clknet_4_15_0_s_axi_aclk),
    .D(\u_async_fifo/rptr [3]),
    .RESET_B(s_axi_aresetn),
    .Q(\u_async_fifo/sync_r2w/wq1_rptr [3]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/sync_r2w/_9_  (.CLK(clknet_4_15_0_s_axi_aclk),
    .D(\u_async_fifo/rptr [4]),
    .RESET_B(s_axi_aresetn),
    .Q(\u_async_fifo/sync_r2w/wq1_rptr [4]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/sync_w2r/_0_  (.CLK(clknet_3_5__leaf_uart_clk),
    .D(\u_async_fifo/sync_w2r/rq1_wptr [0]),
    .RESET_B(uart_rst_n),
    .Q(\u_async_fifo/rq2_wptr [0]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/sync_w2r/_1_  (.CLK(clknet_3_6__leaf_uart_clk),
    .D(\u_async_fifo/sync_w2r/rq1_wptr [1]),
    .RESET_B(uart_rst_n),
    .Q(\u_async_fifo/rq2_wptr [1]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/sync_w2r/_2_  (.CLK(clknet_3_6__leaf_uart_clk),
    .D(\u_async_fifo/sync_w2r/rq1_wptr [2]),
    .RESET_B(uart_rst_n),
    .Q(\u_async_fifo/rq2_wptr [2]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/sync_w2r/_3_  (.CLK(clknet_3_7__leaf_uart_clk),
    .D(\u_async_fifo/sync_w2r/rq1_wptr [3]),
    .RESET_B(uart_rst_n),
    .Q(\u_async_fifo/rq2_wptr [3]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/sync_w2r/_4_  (.CLK(clknet_3_7__leaf_uart_clk),
    .D(\u_async_fifo/sync_w2r/rq1_wptr [4]),
    .RESET_B(uart_rst_n),
    .Q(\u_async_fifo/rq2_wptr [4]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/sync_w2r/_5_  (.CLK(clknet_3_5__leaf_uart_clk),
    .D(\u_async_fifo/wptr [0]),
    .RESET_B(uart_rst_n),
    .Q(\u_async_fifo/sync_w2r/rq1_wptr [0]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/sync_w2r/_6_  (.CLK(clknet_3_7__leaf_uart_clk),
    .D(\u_async_fifo/wptr [1]),
    .RESET_B(uart_rst_n),
    .Q(\u_async_fifo/sync_w2r/rq1_wptr [1]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/sync_w2r/_7_  (.CLK(clknet_3_6__leaf_uart_clk),
    .D(\u_async_fifo/wptr [2]),
    .RESET_B(uart_rst_n),
    .Q(\u_async_fifo/sync_w2r/rq1_wptr [2]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/sync_w2r/_8_  (.CLK(clknet_3_7__leaf_uart_clk),
    .D(\u_async_fifo/wptr [3]),
    .RESET_B(uart_rst_n),
    .Q(\u_async_fifo/sync_w2r/rq1_wptr [3]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/sync_w2r/_9_  (.CLK(clknet_3_7__leaf_uart_clk),
    .D(\u_async_fifo/wptr [4]),
    .RESET_B(uart_rst_n),
    .Q(\u_async_fifo/sync_w2r/rq1_wptr [4]));
 sky130_fd_sc_hd__clkinv_1 \u_async_fifo/wptr_full/_14_  (.A(\u_async_fifo/waddr [2]),
    .Y(\u_async_fifo/wptr_full/_00_ ));
 sky130_fd_sc_hd__nand2b_1 \u_async_fifo/wptr_full/_15_  (.A_N(fifo_wfull),
    .B(fifo_winc),
    .Y(\u_async_fifo/wptr_full/_01_ ));
 sky130_fd_sc_hd__nand3b_1 \u_async_fifo/wptr_full/_16_  (.A_N(fifo_wfull),
    .B(fifo_winc),
    .C(\u_async_fifo/waddr [0]),
    .Y(\u_async_fifo/wptr_full/_02_ ));
 sky130_fd_sc_hd__and4b_1 \u_async_fifo/wptr_full/_17_  (.A_N(fifo_wfull),
    .B(fifo_winc),
    .C(\u_async_fifo/waddr [0]),
    .D(\u_async_fifo/waddr [1]),
    .X(\u_async_fifo/wptr_full/_03_ ));
 sky130_fd_sc_hd__xor2_1 \u_async_fifo/wptr_full/_18_  (.A(\u_async_fifo/waddr [1]),
    .B(\u_async_fifo/wptr_full/_02_ ),
    .X(\u_async_fifo/wptr_full/_04_ ));
 sky130_fd_sc_hd__clkinv_1 \u_async_fifo/wptr_full/_19_  (.A(\u_async_fifo/wptr_full/_04_ ),
    .Y(\u_async_fifo/wptr_full/wbinnext [1]));
 sky130_fd_sc_hd__nor2_1 \u_async_fifo/wptr_full/_20_  (.A(\u_async_fifo/waddr [2]),
    .B(\u_async_fifo/wptr_full/_03_ ),
    .Y(\u_async_fifo/wptr_full/_05_ ));
 sky130_fd_sc_hd__xnor2_1 \u_async_fifo/wptr_full/_21_  (.A(\u_async_fifo/waddr [3]),
    .B(\u_async_fifo/wptr_full/_05_ ),
    .Y(\u_async_fifo/wptr_full/wgraynext [2]));
 sky130_fd_sc_hd__a21oi_1 \u_async_fifo/wptr_full/_22_  (.A1(\u_async_fifo/waddr [2]),
    .A2(\u_async_fifo/wptr_full/_03_ ),
    .B1(\u_async_fifo/waddr [3]),
    .Y(\u_async_fifo/wptr_full/_06_ ));
 sky130_fd_sc_hd__xnor2_1 \u_async_fifo/wptr_full/_23_  (.A(\u_async_fifo/wptr [4]),
    .B(\u_async_fifo/wptr_full/_06_ ),
    .Y(\u_async_fifo/wptr_full/wgraynext [3]));
 sky130_fd_sc_hd__nand3_1 \u_async_fifo/wptr_full/_24_  (.A(\u_async_fifo/waddr [2]),
    .B(\u_async_fifo/waddr [3]),
    .C(\u_async_fifo/wptr_full/_03_ ),
    .Y(\u_async_fifo/wptr_full/_07_ ));
 sky130_fd_sc_hd__xnor2_1 \u_async_fifo/wptr_full/_25_  (.A(\u_async_fifo/wptr [4]),
    .B(\u_async_fifo/wptr_full/_07_ ),
    .Y(\u_async_fifo/wptr_full/wbinnext [4]));
 sky130_fd_sc_hd__xnor3_1 \u_async_fifo/wptr_full/_26_  (.A(\u_async_fifo/waddr [3]),
    .B(\u_async_fifo/wq2_rptr [2]),
    .C(\u_async_fifo/wptr_full/_05_ ),
    .X(\u_async_fifo/wptr_full/_08_ ));
 sky130_fd_sc_hd__xnor2_1 \u_async_fifo/wptr_full/_27_  (.A(\u_async_fifo/waddr [0]),
    .B(\u_async_fifo/wptr_full/_01_ ),
    .Y(\u_async_fifo/wptr_full/wbinnext [0]));
 sky130_fd_sc_hd__xnor2_1 \u_async_fifo/wptr_full/_28_  (.A(\u_async_fifo/wptr_full/_04_ ),
    .B(\u_async_fifo/wptr_full/wbinnext [0]),
    .Y(\u_async_fifo/wptr_full/wgraynext [0]));
 sky130_fd_sc_hd__xnor3_1 \u_async_fifo/wptr_full/_29_  (.A(\u_async_fifo/wq2_rptr [0]),
    .B(\u_async_fifo/wptr_full/wbinnext [1]),
    .C(\u_async_fifo/wptr_full/wbinnext [0]),
    .X(\u_async_fifo/wptr_full/_09_ ));
 sky130_fd_sc_hd__xnor2_1 \u_async_fifo/wptr_full/_30_  (.A(\u_async_fifo/wptr_full/_00_ ),
    .B(\u_async_fifo/wptr_full/_03_ ),
    .Y(\u_async_fifo/wptr_full/wbinnext [2]));
 sky130_fd_sc_hd__mux2_1 \u_async_fifo/wptr_full/_31_  (.A0(\u_async_fifo/wptr_full/_00_ ),
    .A1(\u_async_fifo/wptr_full/wbinnext [2]),
    .S(\u_async_fifo/wptr_full/_04_ ),
    .X(\u_async_fifo/wptr_full/wgraynext [1]));
 sky130_fd_sc_hd__xor2_1 \u_async_fifo/wptr_full/_32_  (.A(\u_async_fifo/wq2_rptr [1]),
    .B(\u_async_fifo/wptr_full/wgraynext [1]),
    .X(\u_async_fifo/wptr_full/_10_ ));
 sky130_fd_sc_hd__xnor2_1 \u_async_fifo/wptr_full/_33_  (.A(\u_async_fifo/wq2_rptr [3]),
    .B(\u_async_fifo/wptr_full/wgraynext [3]),
    .Y(\u_async_fifo/wptr_full/_11_ ));
 sky130_fd_sc_hd__xnor2_1 \u_async_fifo/wptr_full/_34_  (.A(\u_async_fifo/wq2_rptr [4]),
    .B(\u_async_fifo/wptr_full/wbinnext [4]),
    .Y(\u_async_fifo/wptr_full/_12_ ));
 sky130_fd_sc_hd__nand2b_1 \u_async_fifo/wptr_full/_35_  (.A_N(\u_async_fifo/wptr_full/_08_ ),
    .B(\u_async_fifo/wptr_full/_09_ ),
    .Y(\u_async_fifo/wptr_full/_13_ ));
 sky130_fd_sc_hd__nor4_1 \u_async_fifo/wptr_full/_36_  (.A(\u_async_fifo/wptr_full/_10_ ),
    .B(\u_async_fifo/wptr_full/_11_ ),
    .C(\u_async_fifo/wptr_full/_12_ ),
    .D(\u_async_fifo/wptr_full/_13_ ),
    .Y(\u_async_fifo/wptr_full/wfull_val ));
 sky130_fd_sc_hd__nor2b_1 \u_async_fifo/wptr_full/_37_  (.A(\u_async_fifo/wptr_full/_06_ ),
    .B_N(\u_async_fifo/wptr_full/_07_ ),
    .Y(\u_async_fifo/wptr_full/wbinnext [3]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/wptr_full/_38_  (.CLK(clknet_4_15_0_s_axi_aclk),
    .D(\u_async_fifo/wptr_full/wfull_val ),
    .RESET_B(s_axi_aresetn),
    .Q(fifo_wfull));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/wptr_full/_39_  (.CLK(clknet_4_13_0_s_axi_aclk),
    .D(\u_async_fifo/wptr_full/wgraynext [0]),
    .RESET_B(s_axi_aresetn),
    .Q(\u_async_fifo/wptr [0]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/wptr_full/_40_  (.CLK(clknet_4_15_0_s_axi_aclk),
    .D(\u_async_fifo/wptr_full/wgraynext [1]),
    .RESET_B(s_axi_aresetn),
    .Q(\u_async_fifo/wptr [1]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/wptr_full/_41_  (.CLK(clknet_4_13_0_s_axi_aclk),
    .D(\u_async_fifo/wptr_full/wgraynext [2]),
    .RESET_B(s_axi_aresetn),
    .Q(\u_async_fifo/wptr [2]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/wptr_full/_42_  (.CLK(clknet_4_15_0_s_axi_aclk),
    .D(\u_async_fifo/wptr_full/wgraynext [3]),
    .RESET_B(s_axi_aresetn),
    .Q(\u_async_fifo/wptr [3]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/wptr_full/_43_  (.CLK(clknet_4_15_0_s_axi_aclk),
    .D(\u_async_fifo/wptr_full/wbinnext [4]),
    .RESET_B(s_axi_aresetn),
    .Q(\u_async_fifo/wptr [4]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/wptr_full/_44_  (.CLK(clknet_4_13_0_s_axi_aclk),
    .D(\u_async_fifo/wptr_full/wbinnext [0]),
    .RESET_B(s_axi_aresetn),
    .Q(\u_async_fifo/waddr [0]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/wptr_full/_45_  (.CLK(clknet_4_13_0_s_axi_aclk),
    .D(\u_async_fifo/wptr_full/wbinnext [1]),
    .RESET_B(s_axi_aresetn),
    .Q(\u_async_fifo/waddr [1]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/wptr_full/_46_  (.CLK(clknet_4_13_0_s_axi_aclk),
    .D(\u_async_fifo/wptr_full/wbinnext [2]),
    .RESET_B(s_axi_aresetn),
    .Q(\u_async_fifo/waddr [2]));
 sky130_fd_sc_hd__dfrtp_1 \u_async_fifo/wptr_full/_47_  (.CLK(clknet_4_13_0_s_axi_aclk),
    .D(\u_async_fifo/wptr_full/wbinnext [3]),
    .RESET_B(s_axi_aresetn),
    .Q(\u_async_fifo/waddr [3]));
 sky130_fd_sc_hd__clkinv_1 \u_axi_slave/_097_  (.A(\u_axi_slave/state [1]),
    .Y(\u_axi_slave/_049_ ));
 sky130_fd_sc_hd__clkinv_1 \u_axi_slave/_098_  (.A(\u_axi_slave/byte_index [1]),
    .Y(\u_axi_slave/_050_ ));
 sky130_fd_sc_hd__nor2_1 \u_axi_slave/_099_  (.A(\u_axi_slave/_049_ ),
    .B(\u_axi_slave/state [0]),
    .Y(s_axi_bvalid));
 sky130_fd_sc_hd__nand2_1 \u_axi_slave/_100_  (.A(s_axi_wvalid),
    .B(s_axi_awvalid),
    .Y(\u_axi_slave/_051_ ));
 sky130_fd_sc_hd__or4_1 \u_axi_slave/_101_  (.A(\u_axi_slave/state [1]),
    .B(\u_axi_slave/state [0]),
    .C(fifo_wfull),
    .D(\u_axi_slave/_051_ ),
    .X(\u_axi_slave/_052_ ));
 sky130_fd_sc_hd__clkinv_1 \u_axi_slave/_102_  (.A(\u_axi_slave/_052_ ),
    .Y(s_axi_wready));
 sky130_fd_sc_hd__nor3b_1 \u_axi_slave/_103_  (.A(\u_axi_slave/state [1]),
    .B(fifo_wfull),
    .C_N(\u_axi_slave/state [0]),
    .Y(\u_axi_slave/_053_ ));
 sky130_fd_sc_hd__or3b_1 \u_axi_slave/_104_  (.A(\u_axi_slave/state [1]),
    .B(fifo_wfull),
    .C_N(\u_axi_slave/state [0]),
    .X(\u_axi_slave/_054_ ));
 sky130_fd_sc_hd__a21oi_1 \u_axi_slave/_105_  (.A1(\u_axi_slave/state [0]),
    .A2(fifo_wfull),
    .B1(\u_axi_slave/state [1]),
    .Y(\u_axi_slave/_055_ ));
 sky130_fd_sc_hd__nor2_1 \u_axi_slave/_106_  (.A(\u_axi_slave/byte_index [0]),
    .B(\u_axi_slave/_053_ ),
    .Y(\u_axi_slave/_056_ ));
 sky130_fd_sc_hd__a21oi_1 \u_axi_slave/_107_  (.A1(\u_axi_slave/byte_index [0]),
    .A2(\u_axi_slave/_055_ ),
    .B1(\u_axi_slave/_056_ ),
    .Y(\u_axi_slave/_000_ ));
 sky130_fd_sc_hd__nand2_1 \u_axi_slave/_108_  (.A(\u_axi_slave/byte_index [0]),
    .B(\u_axi_slave/byte_index [1]),
    .Y(\u_axi_slave/_057_ ));
 sky130_fd_sc_hd__nor2_1 \u_axi_slave/_109_  (.A(\u_axi_slave/byte_index [0]),
    .B(\u_axi_slave/byte_index [1]),
    .Y(\u_axi_slave/_058_ ));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 \u_axi_slave/_110_  (.A(\u_axi_slave/byte_index [1]),
    .SLEEP(\u_axi_slave/byte_index [0]),
    .X(\u_axi_slave/_059_ ));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 \u_axi_slave/_111_  (.A(\u_axi_slave/byte_index [0]),
    .SLEEP(\u_axi_slave/byte_index [1]),
    .X(\u_axi_slave/_060_ ));
 sky130_fd_sc_hd__o21ai_0 \u_axi_slave/_112_  (.A1(\u_axi_slave/_059_ ),
    .A2(\u_axi_slave/_060_ ),
    .B1(\u_axi_slave/_053_ ),
    .Y(\u_axi_slave/_061_ ));
 sky130_fd_sc_hd__o21ai_0 \u_axi_slave/_113_  (.A1(\u_axi_slave/_050_ ),
    .A2(\u_axi_slave/_055_ ),
    .B1(\u_axi_slave/_061_ ),
    .Y(\u_axi_slave/_001_ ));
 sky130_fd_sc_hd__nand2_1 \u_axi_slave/_114_  (.A(\u_axi_slave/wdata_latched [0]),
    .B(\u_axi_slave/_058_ ),
    .Y(\u_axi_slave/_062_ ));
 sky130_fd_sc_hd__nand3_1 \u_axi_slave/_115_  (.A(\u_axi_slave/byte_index [0]),
    .B(\u_axi_slave/byte_index [1]),
    .C(\u_axi_slave/wdata_latched [24]),
    .Y(\u_axi_slave/_063_ ));
 sky130_fd_sc_hd__nor2_1 \u_axi_slave/_116_  (.A(fifo_wdata[0]),
    .B(\u_axi_slave/_053_ ),
    .Y(\u_axi_slave/_064_ ));
 sky130_fd_sc_hd__a221oi_1 \u_axi_slave/_117_  (.A1(\u_axi_slave/wdata_latched [16]),
    .A2(\u_axi_slave/_059_ ),
    .B1(\u_axi_slave/_060_ ),
    .B2(\u_axi_slave/wdata_latched [8]),
    .C1(\u_axi_slave/_054_ ),
    .Y(\u_axi_slave/_065_ ));
 sky130_fd_sc_hd__a31oi_1 \u_axi_slave/_118_  (.A1(\u_axi_slave/_062_ ),
    .A2(\u_axi_slave/_063_ ),
    .A3(\u_axi_slave/_065_ ),
    .B1(\u_axi_slave/_064_ ),
    .Y(\u_axi_slave/_002_ ));
 sky130_fd_sc_hd__and3_1 \u_axi_slave/_119_  (.A(\u_axi_slave/byte_index [0]),
    .B(\u_axi_slave/byte_index [1]),
    .C(\u_axi_slave/wdata_latched [25]),
    .X(\u_axi_slave/_066_ ));
 sky130_fd_sc_hd__a21oi_1 \u_axi_slave/_120_  (.A1(\u_axi_slave/wdata_latched [17]),
    .A2(\u_axi_slave/_059_ ),
    .B1(\u_axi_slave/_066_ ),
    .Y(\u_axi_slave/_067_ ));
 sky130_fd_sc_hd__a22oi_1 \u_axi_slave/_121_  (.A1(\u_axi_slave/wdata_latched [1]),
    .A2(\u_axi_slave/_058_ ),
    .B1(\u_axi_slave/_060_ ),
    .B2(\u_axi_slave/wdata_latched [9]),
    .Y(\u_axi_slave/_068_ ));
 sky130_fd_sc_hd__nor2_1 \u_axi_slave/_122_  (.A(fifo_wdata[1]),
    .B(\u_axi_slave/_053_ ),
    .Y(\u_axi_slave/_069_ ));
 sky130_fd_sc_hd__a31oi_1 \u_axi_slave/_123_  (.A1(\u_axi_slave/_053_ ),
    .A2(\u_axi_slave/_067_ ),
    .A3(\u_axi_slave/_068_ ),
    .B1(\u_axi_slave/_069_ ),
    .Y(\u_axi_slave/_003_ ));
 sky130_fd_sc_hd__nand2_1 \u_axi_slave/_124_  (.A(\u_axi_slave/wdata_latched [2]),
    .B(\u_axi_slave/_058_ ),
    .Y(\u_axi_slave/_070_ ));
 sky130_fd_sc_hd__nand3_1 \u_axi_slave/_125_  (.A(\u_axi_slave/byte_index [0]),
    .B(\u_axi_slave/byte_index [1]),
    .C(\u_axi_slave/wdata_latched [26]),
    .Y(\u_axi_slave/_071_ ));
 sky130_fd_sc_hd__nor2_1 \u_axi_slave/_126_  (.A(fifo_wdata[2]),
    .B(\u_axi_slave/_053_ ),
    .Y(\u_axi_slave/_072_ ));
 sky130_fd_sc_hd__a221oi_1 \u_axi_slave/_127_  (.A1(\u_axi_slave/wdata_latched [18]),
    .A2(\u_axi_slave/_059_ ),
    .B1(\u_axi_slave/_060_ ),
    .B2(\u_axi_slave/wdata_latched [10]),
    .C1(\u_axi_slave/_054_ ),
    .Y(\u_axi_slave/_073_ ));
 sky130_fd_sc_hd__a31oi_1 \u_axi_slave/_128_  (.A1(\u_axi_slave/_070_ ),
    .A2(\u_axi_slave/_071_ ),
    .A3(\u_axi_slave/_073_ ),
    .B1(\u_axi_slave/_072_ ),
    .Y(\u_axi_slave/_004_ ));
 sky130_fd_sc_hd__nand2_1 \u_axi_slave/_129_  (.A(\u_axi_slave/wdata_latched [3]),
    .B(\u_axi_slave/_058_ ),
    .Y(\u_axi_slave/_074_ ));
 sky130_fd_sc_hd__nand3_1 \u_axi_slave/_130_  (.A(\u_axi_slave/byte_index [0]),
    .B(\u_axi_slave/byte_index [1]),
    .C(\u_axi_slave/wdata_latched [27]),
    .Y(\u_axi_slave/_075_ ));
 sky130_fd_sc_hd__nor2_1 \u_axi_slave/_131_  (.A(fifo_wdata[3]),
    .B(\u_axi_slave/_053_ ),
    .Y(\u_axi_slave/_076_ ));
 sky130_fd_sc_hd__a221oi_1 \u_axi_slave/_132_  (.A1(\u_axi_slave/wdata_latched [19]),
    .A2(\u_axi_slave/_059_ ),
    .B1(\u_axi_slave/_060_ ),
    .B2(\u_axi_slave/wdata_latched [11]),
    .C1(\u_axi_slave/_054_ ),
    .Y(\u_axi_slave/_077_ ));
 sky130_fd_sc_hd__a31oi_1 \u_axi_slave/_133_  (.A1(\u_axi_slave/_074_ ),
    .A2(\u_axi_slave/_075_ ),
    .A3(\u_axi_slave/_077_ ),
    .B1(\u_axi_slave/_076_ ),
    .Y(\u_axi_slave/_005_ ));
 sky130_fd_sc_hd__and3_1 \u_axi_slave/_134_  (.A(\u_axi_slave/byte_index [0]),
    .B(\u_axi_slave/byte_index [1]),
    .C(\u_axi_slave/wdata_latched [28]),
    .X(\u_axi_slave/_078_ ));
 sky130_fd_sc_hd__nor2_1 \u_axi_slave/_135_  (.A(fifo_wdata[4]),
    .B(\u_axi_slave/_053_ ),
    .Y(\u_axi_slave/_079_ ));
 sky130_fd_sc_hd__a21oi_1 \u_axi_slave/_136_  (.A1(\u_axi_slave/wdata_latched [20]),
    .A2(\u_axi_slave/_059_ ),
    .B1(\u_axi_slave/_054_ ),
    .Y(\u_axi_slave/_080_ ));
 sky130_fd_sc_hd__a221oi_1 \u_axi_slave/_137_  (.A1(\u_axi_slave/wdata_latched [4]),
    .A2(\u_axi_slave/_058_ ),
    .B1(\u_axi_slave/_060_ ),
    .B2(\u_axi_slave/wdata_latched [12]),
    .C1(\u_axi_slave/_078_ ),
    .Y(\u_axi_slave/_081_ ));
 sky130_fd_sc_hd__a21oi_1 \u_axi_slave/_138_  (.A1(\u_axi_slave/_080_ ),
    .A2(\u_axi_slave/_081_ ),
    .B1(\u_axi_slave/_079_ ),
    .Y(\u_axi_slave/_006_ ));
 sky130_fd_sc_hd__nand2_1 \u_axi_slave/_139_  (.A(\u_axi_slave/wdata_latched [5]),
    .B(\u_axi_slave/_058_ ),
    .Y(\u_axi_slave/_082_ ));
 sky130_fd_sc_hd__nand3_1 \u_axi_slave/_140_  (.A(\u_axi_slave/byte_index [0]),
    .B(\u_axi_slave/byte_index [1]),
    .C(\u_axi_slave/wdata_latched [29]),
    .Y(\u_axi_slave/_083_ ));
 sky130_fd_sc_hd__nor2_1 \u_axi_slave/_141_  (.A(fifo_wdata[5]),
    .B(\u_axi_slave/_053_ ),
    .Y(\u_axi_slave/_084_ ));
 sky130_fd_sc_hd__a221oi_1 \u_axi_slave/_142_  (.A1(\u_axi_slave/wdata_latched [21]),
    .A2(\u_axi_slave/_059_ ),
    .B1(\u_axi_slave/_060_ ),
    .B2(\u_axi_slave/wdata_latched [13]),
    .C1(\u_axi_slave/_054_ ),
    .Y(\u_axi_slave/_085_ ));
 sky130_fd_sc_hd__a31oi_1 \u_axi_slave/_143_  (.A1(\u_axi_slave/_082_ ),
    .A2(\u_axi_slave/_083_ ),
    .A3(\u_axi_slave/_085_ ),
    .B1(\u_axi_slave/_084_ ),
    .Y(\u_axi_slave/_007_ ));
 sky130_fd_sc_hd__a22oi_1 \u_axi_slave/_144_  (.A1(\u_axi_slave/wdata_latched [6]),
    .A2(\u_axi_slave/_058_ ),
    .B1(\u_axi_slave/_059_ ),
    .B2(\u_axi_slave/wdata_latched [22]),
    .Y(\u_axi_slave/_086_ ));
 sky130_fd_sc_hd__and3_1 \u_axi_slave/_145_  (.A(\u_axi_slave/byte_index [0]),
    .B(\u_axi_slave/byte_index [1]),
    .C(\u_axi_slave/wdata_latched [30]),
    .X(\u_axi_slave/_087_ ));
 sky130_fd_sc_hd__a21oi_1 \u_axi_slave/_146_  (.A1(\u_axi_slave/wdata_latched [14]),
    .A2(\u_axi_slave/_060_ ),
    .B1(\u_axi_slave/_087_ ),
    .Y(\u_axi_slave/_088_ ));
 sky130_fd_sc_hd__nor2_1 \u_axi_slave/_147_  (.A(fifo_wdata[6]),
    .B(\u_axi_slave/_053_ ),
    .Y(\u_axi_slave/_089_ ));
 sky130_fd_sc_hd__a31oi_1 \u_axi_slave/_148_  (.A1(\u_axi_slave/_053_ ),
    .A2(\u_axi_slave/_086_ ),
    .A3(\u_axi_slave/_088_ ),
    .B1(\u_axi_slave/_089_ ),
    .Y(\u_axi_slave/_008_ ));
 sky130_fd_sc_hd__a22oi_1 \u_axi_slave/_149_  (.A1(\u_axi_slave/wdata_latched [7]),
    .A2(\u_axi_slave/_058_ ),
    .B1(\u_axi_slave/_059_ ),
    .B2(\u_axi_slave/wdata_latched [23]),
    .Y(\u_axi_slave/_090_ ));
 sky130_fd_sc_hd__and3_1 \u_axi_slave/_150_  (.A(\u_axi_slave/byte_index [0]),
    .B(\u_axi_slave/byte_index [1]),
    .C(\u_axi_slave/wdata_latched [31]),
    .X(\u_axi_slave/_091_ ));
 sky130_fd_sc_hd__a21oi_1 \u_axi_slave/_151_  (.A1(\u_axi_slave/wdata_latched [15]),
    .A2(\u_axi_slave/_060_ ),
    .B1(\u_axi_slave/_091_ ),
    .Y(\u_axi_slave/_092_ ));
 sky130_fd_sc_hd__nor2_1 \u_axi_slave/_152_  (.A(fifo_wdata[7]),
    .B(\u_axi_slave/_053_ ),
    .Y(\u_axi_slave/_093_ ));
 sky130_fd_sc_hd__a31oi_1 \u_axi_slave/_153_  (.A1(\u_axi_slave/_053_ ),
    .A2(\u_axi_slave/_090_ ),
    .A3(\u_axi_slave/_092_ ),
    .B1(\u_axi_slave/_093_ ),
    .Y(\u_axi_slave/_009_ ));
 sky130_fd_sc_hd__mux4_2 \u_axi_slave/_154_  (.A0(\u_axi_slave/wstrb_latched [0]),
    .A1(\u_axi_slave/wstrb_latched [1]),
    .A2(\u_axi_slave/wstrb_latched [2]),
    .A3(\u_axi_slave/wstrb_latched [3]),
    .S0(\u_axi_slave/byte_index [0]),
    .S1(\u_axi_slave/byte_index [1]),
    .X(\u_axi_slave/_094_ ));
 sky130_fd_sc_hd__a32o_1 \u_axi_slave/_155_  (.A1(\u_axi_slave/state [1]),
    .A2(\u_axi_slave/state [0]),
    .A3(fifo_winc),
    .B1(\u_axi_slave/_053_ ),
    .B2(\u_axi_slave/_094_ ),
    .X(\u_axi_slave/_010_ ));
 sky130_fd_sc_hd__o211ai_1 \u_axi_slave/_156_  (.A1(fifo_wfull),
    .A2(\u_axi_slave/_057_ ),
    .B1(\u_axi_slave/_049_ ),
    .C1(\u_axi_slave/state [0]),
    .Y(\u_axi_slave/_095_ ));
 sky130_fd_sc_hd__nand2_1 \u_axi_slave/_157_  (.A(\u_axi_slave/_052_ ),
    .B(\u_axi_slave/_095_ ),
    .Y(\u_axi_slave/_011_ ));
 sky130_fd_sc_hd__nor3_1 \u_axi_slave/_158_  (.A(\u_axi_slave/_049_ ),
    .B(\u_axi_slave/state [0]),
    .C(s_axi_bready),
    .Y(\u_axi_slave/_096_ ));
 sky130_fd_sc_hd__a31o_1 \u_axi_slave/_159_  (.A1(\u_axi_slave/_049_ ),
    .A2(\u_axi_slave/state [0]),
    .A3(\u_axi_slave/_095_ ),
    .B1(\u_axi_slave/_096_ ),
    .X(\u_axi_slave/_012_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_160_  (.A0(s_axi_wdata[0]),
    .A1(\u_axi_slave/wdata_latched [0]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_013_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_161_  (.A0(s_axi_wdata[1]),
    .A1(\u_axi_slave/wdata_latched [1]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_014_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_162_  (.A0(s_axi_wdata[2]),
    .A1(\u_axi_slave/wdata_latched [2]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_015_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_163_  (.A0(s_axi_wdata[3]),
    .A1(\u_axi_slave/wdata_latched [3]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_016_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_164_  (.A0(s_axi_wdata[4]),
    .A1(\u_axi_slave/wdata_latched [4]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_017_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_165_  (.A0(s_axi_wdata[5]),
    .A1(\u_axi_slave/wdata_latched [5]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_018_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_166_  (.A0(s_axi_wdata[6]),
    .A1(\u_axi_slave/wdata_latched [6]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_019_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_167_  (.A0(s_axi_wdata[7]),
    .A1(\u_axi_slave/wdata_latched [7]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_020_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_168_  (.A0(s_axi_wdata[8]),
    .A1(\u_axi_slave/wdata_latched [8]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_021_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_169_  (.A0(s_axi_wdata[9]),
    .A1(\u_axi_slave/wdata_latched [9]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_022_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_170_  (.A0(s_axi_wdata[10]),
    .A1(\u_axi_slave/wdata_latched [10]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_023_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_171_  (.A0(s_axi_wdata[11]),
    .A1(\u_axi_slave/wdata_latched [11]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_024_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_172_  (.A0(s_axi_wdata[12]),
    .A1(\u_axi_slave/wdata_latched [12]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_025_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_173_  (.A0(s_axi_wdata[13]),
    .A1(\u_axi_slave/wdata_latched [13]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_026_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_174_  (.A0(s_axi_wdata[14]),
    .A1(\u_axi_slave/wdata_latched [14]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_027_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_175_  (.A0(s_axi_wdata[15]),
    .A1(\u_axi_slave/wdata_latched [15]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_028_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_176_  (.A0(s_axi_wdata[16]),
    .A1(\u_axi_slave/wdata_latched [16]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_029_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_177_  (.A0(s_axi_wdata[17]),
    .A1(\u_axi_slave/wdata_latched [17]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_030_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_178_  (.A0(s_axi_wdata[18]),
    .A1(\u_axi_slave/wdata_latched [18]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_031_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_179_  (.A0(s_axi_wdata[19]),
    .A1(\u_axi_slave/wdata_latched [19]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_032_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_180_  (.A0(s_axi_wdata[20]),
    .A1(\u_axi_slave/wdata_latched [20]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_033_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_181_  (.A0(s_axi_wdata[21]),
    .A1(\u_axi_slave/wdata_latched [21]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_034_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_182_  (.A0(s_axi_wdata[22]),
    .A1(\u_axi_slave/wdata_latched [22]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_035_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_183_  (.A0(s_axi_wdata[23]),
    .A1(\u_axi_slave/wdata_latched [23]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_036_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_184_  (.A0(s_axi_wdata[24]),
    .A1(\u_axi_slave/wdata_latched [24]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_037_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_185_  (.A0(s_axi_wdata[25]),
    .A1(\u_axi_slave/wdata_latched [25]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_038_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_186_  (.A0(s_axi_wdata[26]),
    .A1(\u_axi_slave/wdata_latched [26]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_039_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_187_  (.A0(s_axi_wdata[27]),
    .A1(\u_axi_slave/wdata_latched [27]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_040_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_188_  (.A0(s_axi_wdata[28]),
    .A1(\u_axi_slave/wdata_latched [28]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_041_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_189_  (.A0(s_axi_wdata[29]),
    .A1(\u_axi_slave/wdata_latched [29]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_042_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_190_  (.A0(s_axi_wdata[30]),
    .A1(\u_axi_slave/wdata_latched [30]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_043_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_191_  (.A0(s_axi_wdata[31]),
    .A1(\u_axi_slave/wdata_latched [31]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_044_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_192_  (.A0(s_axi_wstrb[0]),
    .A1(\u_axi_slave/wstrb_latched [0]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_045_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_193_  (.A0(s_axi_wstrb[1]),
    .A1(\u_axi_slave/wstrb_latched [1]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_046_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_194_  (.A0(s_axi_wstrb[2]),
    .A1(\u_axi_slave/wstrb_latched [2]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_047_ ));
 sky130_fd_sc_hd__mux2_1 \u_axi_slave/_195_  (.A0(s_axi_wstrb[3]),
    .A1(\u_axi_slave/wstrb_latched [3]),
    .S(\u_axi_slave/_052_ ),
    .X(\u_axi_slave/_048_ ));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_196_  (.CLK(clknet_4_13_0_s_axi_aclk),
    .D(\u_axi_slave/_000_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/byte_index [0]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_197_  (.CLK(clknet_4_13_0_s_axi_aclk),
    .D(\u_axi_slave/_001_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/byte_index [1]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_198_  (.CLK(clknet_4_15_0_s_axi_aclk),
    .D(\u_axi_slave/_002_ ),
    .RESET_B(s_axi_aresetn),
    .Q(fifo_wdata[0]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_199_  (.CLK(clknet_4_14_0_s_axi_aclk),
    .D(\u_axi_slave/_003_ ),
    .RESET_B(s_axi_aresetn),
    .Q(fifo_wdata[1]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_200_  (.CLK(clknet_4_11_0_s_axi_aclk),
    .D(\u_axi_slave/_004_ ),
    .RESET_B(s_axi_aresetn),
    .Q(fifo_wdata[2]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_201_  (.CLK(clknet_4_12_0_s_axi_aclk),
    .D(\u_axi_slave/_005_ ),
    .RESET_B(s_axi_aresetn),
    .Q(fifo_wdata[3]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_202_  (.CLK(clknet_4_14_0_s_axi_aclk),
    .D(\u_axi_slave/_006_ ),
    .RESET_B(s_axi_aresetn),
    .Q(fifo_wdata[4]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_203_  (.CLK(clknet_4_11_0_s_axi_aclk),
    .D(\u_axi_slave/_007_ ),
    .RESET_B(s_axi_aresetn),
    .Q(fifo_wdata[5]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_204_  (.CLK(clknet_4_9_0_s_axi_aclk),
    .D(\u_axi_slave/_008_ ),
    .RESET_B(s_axi_aresetn),
    .Q(fifo_wdata[6]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_205_  (.CLK(clknet_4_12_0_s_axi_aclk),
    .D(\u_axi_slave/_009_ ),
    .RESET_B(s_axi_aresetn),
    .Q(fifo_wdata[7]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_206_  (.CLK(clknet_4_14_0_s_axi_aclk),
    .D(\u_axi_slave/_010_ ),
    .RESET_B(s_axi_aresetn),
    .Q(fifo_winc));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_207_  (.CLK(clknet_4_15_0_s_axi_aclk),
    .D(\u_axi_slave/_011_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/state [0]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_208_  (.CLK(clknet_4_14_0_s_axi_aclk),
    .D(\u_axi_slave/_012_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/state [1]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_209_  (.CLK(clknet_4_14_0_s_axi_aclk),
    .D(\u_axi_slave/_013_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [0]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_210_  (.CLK(clknet_4_14_0_s_axi_aclk),
    .D(\u_axi_slave/_014_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [1]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_211_  (.CLK(clknet_4_11_0_s_axi_aclk),
    .D(\u_axi_slave/_015_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [2]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_212_  (.CLK(clknet_4_9_0_s_axi_aclk),
    .D(\u_axi_slave/_016_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [3]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_213_  (.CLK(clknet_4_11_0_s_axi_aclk),
    .D(\u_axi_slave/_017_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [4]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_214_  (.CLK(clknet_4_11_0_s_axi_aclk),
    .D(\u_axi_slave/_018_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [5]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_215_  (.CLK(clknet_4_9_0_s_axi_aclk),
    .D(\u_axi_slave/_019_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [6]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_216_  (.CLK(clknet_4_15_0_s_axi_aclk),
    .D(\u_axi_slave/_020_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [7]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_217_  (.CLK(clknet_4_11_0_s_axi_aclk),
    .D(\u_axi_slave/_021_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [8]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_218_  (.CLK(clknet_4_14_0_s_axi_aclk),
    .D(\u_axi_slave/_022_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [9]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_219_  (.CLK(clknet_4_14_0_s_axi_aclk),
    .D(\u_axi_slave/_023_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [10]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_220_  (.CLK(clknet_4_9_0_s_axi_aclk),
    .D(\u_axi_slave/_024_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [11]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_221_  (.CLK(clknet_4_11_0_s_axi_aclk),
    .D(\u_axi_slave/_025_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [12]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_222_  (.CLK(clknet_4_11_0_s_axi_aclk),
    .D(\u_axi_slave/_026_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [13]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_223_  (.CLK(clknet_4_12_0_s_axi_aclk),
    .D(\u_axi_slave/_027_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [14]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_224_  (.CLK(clknet_4_9_0_s_axi_aclk),
    .D(\u_axi_slave/_028_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [15]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_225_  (.CLK(clknet_4_11_0_s_axi_aclk),
    .D(\u_axi_slave/_029_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [16]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_226_  (.CLK(clknet_4_11_0_s_axi_aclk),
    .D(\u_axi_slave/_030_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [17]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_227_  (.CLK(clknet_4_14_0_s_axi_aclk),
    .D(\u_axi_slave/_031_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [18]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_228_  (.CLK(clknet_4_9_0_s_axi_aclk),
    .D(\u_axi_slave/_032_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [19]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_229_  (.CLK(clknet_4_14_0_s_axi_aclk),
    .D(\u_axi_slave/_033_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [20]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_230_  (.CLK(clknet_4_11_0_s_axi_aclk),
    .D(\u_axi_slave/_034_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [21]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_231_  (.CLK(clknet_4_9_0_s_axi_aclk),
    .D(\u_axi_slave/_035_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [22]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_232_  (.CLK(clknet_4_15_0_s_axi_aclk),
    .D(\u_axi_slave/_036_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [23]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_233_  (.CLK(clknet_4_15_0_s_axi_aclk),
    .D(\u_axi_slave/_037_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [24]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_234_  (.CLK(clknet_4_14_0_s_axi_aclk),
    .D(\u_axi_slave/_038_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [25]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_235_  (.CLK(clknet_4_11_0_s_axi_aclk),
    .D(\u_axi_slave/_039_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [26]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_236_  (.CLK(clknet_4_12_0_s_axi_aclk),
    .D(\u_axi_slave/_040_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [27]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_237_  (.CLK(clknet_4_14_0_s_axi_aclk),
    .D(\u_axi_slave/_041_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [28]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_238_  (.CLK(clknet_4_11_0_s_axi_aclk),
    .D(\u_axi_slave/_042_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [29]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_239_  (.CLK(clknet_4_12_0_s_axi_aclk),
    .D(\u_axi_slave/_043_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [30]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_240_  (.CLK(clknet_4_9_0_s_axi_aclk),
    .D(\u_axi_slave/_044_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wdata_latched [31]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_241_  (.CLK(clknet_4_15_0_s_axi_aclk),
    .D(\u_axi_slave/_045_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wstrb_latched [0]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_242_  (.CLK(clknet_4_10_0_s_axi_aclk),
    .D(\u_axi_slave/_046_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wstrb_latched [1]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_243_  (.CLK(clknet_4_10_0_s_axi_aclk),
    .D(\u_axi_slave/_047_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wstrb_latched [2]));
 sky130_fd_sc_hd__dfrtp_1 \u_axi_slave/_244_  (.CLK(clknet_4_10_0_s_axi_aclk),
    .D(\u_axi_slave/_048_ ),
    .RESET_B(s_axi_aresetn),
    .Q(\u_axi_slave/wstrb_latched [3]));
 sky130_fd_sc_hd__clkinv_1 \u_uart_tx/_068_  (.A(\u_uart_tx/clk_count [6]),
    .Y(\u_uart_tx/_054_ ));
 sky130_fd_sc_hd__clkinv_1 \u_uart_tx/_069_  (.A(\u_uart_tx/bit_index [2]),
    .Y(\u_uart_tx/_055_ ));
 sky130_fd_sc_hd__clkinv_1 \u_uart_tx/_070_  (.A(\u_uart_tx/bit_index [1]),
    .Y(\u_uart_tx/_056_ ));
 sky130_fd_sc_hd__nor2_1 \u_uart_tx/_071_  (.A(\u_uart_tx/state [1]),
    .B(\u_uart_tx/state [0]),
    .Y(uart_ready));
 sky130_fd_sc_hd__nand2_1 \u_uart_tx/_072_  (.A(tx_start_reg),
    .B(uart_ready),
    .Y(\u_uart_tx/_057_ ));
 sky130_fd_sc_hd__mux2_1 \u_uart_tx/_073_  (.A0(tx_data_reg[0]),
    .A1(\u_uart_tx/tx_data_r [0]),
    .S(\u_uart_tx/_057_ ),
    .X(\u_uart_tx/_000_ ));
 sky130_fd_sc_hd__mux2_1 \u_uart_tx/_074_  (.A0(tx_data_reg[1]),
    .A1(\u_uart_tx/tx_data_r [1]),
    .S(\u_uart_tx/_057_ ),
    .X(\u_uart_tx/_001_ ));
 sky130_fd_sc_hd__mux2_1 \u_uart_tx/_075_  (.A0(tx_data_reg[2]),
    .A1(\u_uart_tx/tx_data_r [2]),
    .S(\u_uart_tx/_057_ ),
    .X(\u_uart_tx/_002_ ));
 sky130_fd_sc_hd__mux2_1 \u_uart_tx/_076_  (.A0(tx_data_reg[3]),
    .A1(\u_uart_tx/tx_data_r [3]),
    .S(\u_uart_tx/_057_ ),
    .X(\u_uart_tx/_003_ ));
 sky130_fd_sc_hd__mux2_1 \u_uart_tx/_077_  (.A0(tx_data_reg[4]),
    .A1(\u_uart_tx/tx_data_r [4]),
    .S(\u_uart_tx/_057_ ),
    .X(\u_uart_tx/_004_ ));
 sky130_fd_sc_hd__mux2_1 \u_uart_tx/_078_  (.A0(tx_data_reg[5]),
    .A1(\u_uart_tx/tx_data_r [5]),
    .S(\u_uart_tx/_057_ ),
    .X(\u_uart_tx/_005_ ));
 sky130_fd_sc_hd__mux2_1 \u_uart_tx/_079_  (.A0(tx_data_reg[6]),
    .A1(\u_uart_tx/tx_data_r [6]),
    .S(\u_uart_tx/_057_ ),
    .X(\u_uart_tx/_006_ ));
 sky130_fd_sc_hd__mux2_1 \u_uart_tx/_080_  (.A0(tx_data_reg[7]),
    .A1(\u_uart_tx/tx_data_r [7]),
    .S(\u_uart_tx/_057_ ),
    .X(\u_uart_tx/_007_ ));
 sky130_fd_sc_hd__o21ai_0 \u_uart_tx/_081_  (.A1(\u_uart_tx/state [1]),
    .A2(\u_uart_tx/state [0]),
    .B1(\u_uart_tx/tx_active ),
    .Y(\u_uart_tx/_058_ ));
 sky130_fd_sc_hd__nand2_1 \u_uart_tx/_082_  (.A(\u_uart_tx/_057_ ),
    .B(\u_uart_tx/_058_ ),
    .Y(\u_uart_tx/_008_ ));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 \u_uart_tx/_083_  (.A(\u_uart_tx/state [0]),
    .SLEEP(\u_uart_tx/state [1]),
    .X(\u_uart_tx/_059_ ));
 sky130_fd_sc_hd__nor3_1 \u_uart_tx/_084_  (.A(\u_uart_tx/tx_data_r [0]),
    .B(\u_uart_tx/bit_index [0]),
    .C(\u_uart_tx/bit_index [1]),
    .Y(\u_uart_tx/_060_ ));
 sky130_fd_sc_hd__nand2_1 \u_uart_tx/_085_  (.A(\u_uart_tx/bit_index [0]),
    .B(\u_uart_tx/bit_index [1]),
    .Y(\u_uart_tx/_061_ ));
 sky130_fd_sc_hd__nor3b_1 \u_uart_tx/_086_  (.A(\u_uart_tx/tx_data_r [1]),
    .B(\u_uart_tx/bit_index [1]),
    .C_N(\u_uart_tx/bit_index [0]),
    .Y(\u_uart_tx/_062_ ));
 sky130_fd_sc_hd__nor2_1 \u_uart_tx/_087_  (.A(\u_uart_tx/bit_index [0]),
    .B(\u_uart_tx/tx_data_r [2]),
    .Y(\u_uart_tx/_063_ ));
 sky130_fd_sc_hd__a211oi_1 \u_uart_tx/_088_  (.A1(\u_uart_tx/bit_index [1]),
    .A2(\u_uart_tx/_063_ ),
    .B1(\u_uart_tx/_062_ ),
    .C1(\u_uart_tx/_060_ ),
    .Y(\u_uart_tx/_064_ ));
 sky130_fd_sc_hd__o211ai_1 \u_uart_tx/_089_  (.A1(\u_uart_tx/tx_data_r [3]),
    .A2(\u_uart_tx/_061_ ),
    .B1(\u_uart_tx/_064_ ),
    .C1(\u_uart_tx/_055_ ),
    .Y(\u_uart_tx/_065_ ));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 \u_uart_tx/_090_  (.A(\u_uart_tx/state [1]),
    .SLEEP(\u_uart_tx/state [0]),
    .X(\u_uart_tx/_066_ ));
 sky130_fd_sc_hd__mux2_1 \u_uart_tx/_091_  (.A0(\u_uart_tx/tx_data_r [4]),
    .A1(\u_uart_tx/tx_data_r [5]),
    .S(\u_uart_tx/bit_index [0]),
    .X(\u_uart_tx/_067_ ));
 sky130_fd_sc_hd__nor2_1 \u_uart_tx/_092_  (.A(\u_uart_tx/bit_index [0]),
    .B(\u_uart_tx/tx_data_r [6]),
    .Y(\u_uart_tx/_023_ ));
 sky130_fd_sc_hd__o21ai_0 \u_uart_tx/_093_  (.A1(\u_uart_tx/tx_data_r [7]),
    .A2(\u_uart_tx/_061_ ),
    .B1(\u_uart_tx/bit_index [2]),
    .Y(\u_uart_tx/_024_ ));
 sky130_fd_sc_hd__a21oi_1 \u_uart_tx/_094_  (.A1(\u_uart_tx/bit_index [1]),
    .A2(\u_uart_tx/_023_ ),
    .B1(\u_uart_tx/_024_ ),
    .Y(\u_uart_tx/_025_ ));
 sky130_fd_sc_hd__o21ai_0 \u_uart_tx/_095_  (.A1(\u_uart_tx/bit_index [1]),
    .A2(\u_uart_tx/_067_ ),
    .B1(\u_uart_tx/_025_ ),
    .Y(\u_uart_tx/_026_ ));
 sky130_fd_sc_hd__a31oi_1 \u_uart_tx/_096_  (.A1(\u_uart_tx/_065_ ),
    .A2(\u_uart_tx/_066_ ),
    .A3(\u_uart_tx/_026_ ),
    .B1(\u_uart_tx/_059_ ),
    .Y(\u_uart_tx/_009_ ));
 sky130_fd_sc_hd__a21o_1 \u_uart_tx/_097_  (.A1(\u_uart_tx/clk_count [2]),
    .A2(\u_uart_tx/clk_count [1]),
    .B1(\u_uart_tx/clk_count [3]),
    .X(\u_uart_tx/_027_ ));
 sky130_fd_sc_hd__a21oi_1 \u_uart_tx/_098_  (.A1(\u_uart_tx/clk_count [4]),
    .A2(\u_uart_tx/_027_ ),
    .B1(\u_uart_tx/clk_count [5]),
    .Y(\u_uart_tx/_028_ ));
 sky130_fd_sc_hd__or3_1 \u_uart_tx/_099_  (.A(\u_uart_tx/clk_count [8]),
    .B(\u_uart_tx/clk_count [9]),
    .C(\u_uart_tx/clk_count [7]),
    .X(\u_uart_tx/_029_ ));
 sky130_fd_sc_hd__or4_1 \u_uart_tx/_100_  (.A(\u_uart_tx/clk_count [15]),
    .B(\u_uart_tx/clk_count [14]),
    .C(\u_uart_tx/clk_count [12]),
    .D(\u_uart_tx/clk_count [11]),
    .X(\u_uart_tx/_030_ ));
 sky130_fd_sc_hd__nor4_1 \u_uart_tx/_101_  (.A(\u_uart_tx/clk_count [13]),
    .B(\u_uart_tx/clk_count [10]),
    .C(\u_uart_tx/_029_ ),
    .D(\u_uart_tx/_030_ ),
    .Y(\u_uart_tx/_031_ ));
 sky130_fd_sc_hd__o21a_1 \u_uart_tx/_102_  (.A1(\u_uart_tx/_054_ ),
    .A2(\u_uart_tx/_028_ ),
    .B1(\u_uart_tx/_031_ ),
    .X(\u_uart_tx/_032_ ));
 sky130_fd_sc_hd__o21ai_0 \u_uart_tx/_103_  (.A1(\u_uart_tx/_054_ ),
    .A2(\u_uart_tx/_028_ ),
    .B1(\u_uart_tx/_031_ ),
    .Y(\u_uart_tx/_033_ ));
 sky130_fd_sc_hd__nand2_1 \u_uart_tx/_104_  (.A(\u_uart_tx/state [0]),
    .B(\u_uart_tx/_033_ ),
    .Y(\u_uart_tx/_034_ ));
 sky130_fd_sc_hd__a31oi_1 \u_uart_tx/_105_  (.A1(\u_uart_tx/state [1]),
    .A2(\u_uart_tx/state [0]),
    .A3(\u_uart_tx/_033_ ),
    .B1(\u_uart_tx/tx_done ),
    .Y(\u_uart_tx/_035_ ));
 sky130_fd_sc_hd__nor2_1 \u_uart_tx/_106_  (.A(uart_ready),
    .B(\u_uart_tx/_035_ ),
    .Y(\u_uart_tx/_010_ ));
 sky130_fd_sc_hd__o21ai_0 \u_uart_tx/_107_  (.A1(\u_uart_tx/state [1]),
    .A2(\u_uart_tx/state [0]),
    .B1(\u_uart_tx/_032_ ),
    .Y(\u_uart_tx/_036_ ));
 sky130_fd_sc_hd__nor2_1 \u_uart_tx/_108_  (.A(\u_uart_tx/clk_count [0]),
    .B(\u_uart_tx/_036_ ),
    .Y(\u_uart_tx/_011_ ));
 sky130_fd_sc_hd__nor2_1 \u_uart_tx/_109_  (.A(\u_uart_tx/clk_count [1]),
    .B(\u_uart_tx/clk_count [0]),
    .Y(\u_uart_tx/_037_ ));
 sky130_fd_sc_hd__and2_0 \u_uart_tx/_110_  (.A(\u_uart_tx/clk_count [1]),
    .B(\u_uart_tx/clk_count [0]),
    .X(\u_uart_tx/_038_ ));
 sky130_fd_sc_hd__nor3_1 \u_uart_tx/_111_  (.A(\u_uart_tx/_036_ ),
    .B(\u_uart_tx/_037_ ),
    .C(\u_uart_tx/_038_ ),
    .Y(\u_uart_tx/_012_ ));
 sky130_fd_sc_hd__xnor2_1 \u_uart_tx/_112_  (.A(\u_uart_tx/clk_count [2]),
    .B(\u_uart_tx/_038_ ),
    .Y(\u_uart_tx/_039_ ));
 sky130_fd_sc_hd__nor2_1 \u_uart_tx/_113_  (.A(\u_uart_tx/_036_ ),
    .B(\u_uart_tx/_039_ ),
    .Y(\u_uart_tx/_013_ ));
 sky130_fd_sc_hd__a21oi_1 \u_uart_tx/_114_  (.A1(\u_uart_tx/clk_count [2]),
    .A2(\u_uart_tx/_038_ ),
    .B1(\u_uart_tx/clk_count [3]),
    .Y(\u_uart_tx/_040_ ));
 sky130_fd_sc_hd__nand4_1 \u_uart_tx/_115_  (.A(\u_uart_tx/clk_count [3]),
    .B(\u_uart_tx/clk_count [2]),
    .C(\u_uart_tx/clk_count [1]),
    .D(\u_uart_tx/clk_count [0]),
    .Y(\u_uart_tx/_041_ ));
 sky130_fd_sc_hd__clkinv_1 \u_uart_tx/_116_  (.A(\u_uart_tx/_041_ ),
    .Y(\u_uart_tx/_042_ ));
 sky130_fd_sc_hd__nor3_1 \u_uart_tx/_117_  (.A(\u_uart_tx/_036_ ),
    .B(\u_uart_tx/_040_ ),
    .C(\u_uart_tx/_042_ ),
    .Y(\u_uart_tx/_014_ ));
 sky130_fd_sc_hd__nand2_1 \u_uart_tx/_118_  (.A(\u_uart_tx/clk_count [4]),
    .B(\u_uart_tx/_042_ ),
    .Y(\u_uart_tx/_043_ ));
 sky130_fd_sc_hd__xor2_1 \u_uart_tx/_119_  (.A(\u_uart_tx/clk_count [4]),
    .B(\u_uart_tx/_041_ ),
    .X(\u_uart_tx/_044_ ));
 sky130_fd_sc_hd__nor2_1 \u_uart_tx/_120_  (.A(\u_uart_tx/_036_ ),
    .B(\u_uart_tx/_044_ ),
    .Y(\u_uart_tx/_015_ ));
 sky130_fd_sc_hd__nand3_1 \u_uart_tx/_121_  (.A(\u_uart_tx/clk_count [5]),
    .B(\u_uart_tx/clk_count [4]),
    .C(\u_uart_tx/_042_ ),
    .Y(\u_uart_tx/_045_ ));
 sky130_fd_sc_hd__xor2_1 \u_uart_tx/_122_  (.A(\u_uart_tx/clk_count [5]),
    .B(\u_uart_tx/_043_ ),
    .X(\u_uart_tx/_046_ ));
 sky130_fd_sc_hd__nor2_1 \u_uart_tx/_123_  (.A(\u_uart_tx/_036_ ),
    .B(\u_uart_tx/_046_ ),
    .Y(\u_uart_tx/_016_ ));
 sky130_fd_sc_hd__xnor2_1 \u_uart_tx/_124_  (.A(\u_uart_tx/_054_ ),
    .B(\u_uart_tx/_045_ ),
    .Y(\u_uart_tx/_047_ ));
 sky130_fd_sc_hd__nor2_1 \u_uart_tx/_125_  (.A(\u_uart_tx/_036_ ),
    .B(\u_uart_tx/_047_ ),
    .Y(\u_uart_tx/_017_ ));
 sky130_fd_sc_hd__nand2_1 \u_uart_tx/_126_  (.A(\u_uart_tx/_066_ ),
    .B(\u_uart_tx/_033_ ),
    .Y(\u_uart_tx/_048_ ));
 sky130_fd_sc_hd__a21oi_1 \u_uart_tx/_127_  (.A1(\u_uart_tx/state [1]),
    .A2(\u_uart_tx/_032_ ),
    .B1(\u_uart_tx/state [0]),
    .Y(\u_uart_tx/_049_ ));
 sky130_fd_sc_hd__a21oi_1 \u_uart_tx/_128_  (.A1(\u_uart_tx/_066_ ),
    .A2(\u_uart_tx/_033_ ),
    .B1(\u_uart_tx/bit_index [0]),
    .Y(\u_uart_tx/_050_ ));
 sky130_fd_sc_hd__a21oi_1 \u_uart_tx/_129_  (.A1(\u_uart_tx/bit_index [0]),
    .A2(\u_uart_tx/_049_ ),
    .B1(\u_uart_tx/_050_ ),
    .Y(\u_uart_tx/_018_ ));
 sky130_fd_sc_hd__xnor2_1 \u_uart_tx/_130_  (.A(\u_uart_tx/bit_index [0]),
    .B(\u_uart_tx/bit_index [1]),
    .Y(\u_uart_tx/_051_ ));
 sky130_fd_sc_hd__o22ai_1 \u_uart_tx/_131_  (.A1(\u_uart_tx/_056_ ),
    .A2(\u_uart_tx/_049_ ),
    .B1(\u_uart_tx/_051_ ),
    .B2(\u_uart_tx/_048_ ),
    .Y(\u_uart_tx/_019_ ));
 sky130_fd_sc_hd__xnor2_1 \u_uart_tx/_132_  (.A(\u_uart_tx/_055_ ),
    .B(\u_uart_tx/_061_ ),
    .Y(\u_uart_tx/_052_ ));
 sky130_fd_sc_hd__o22ai_1 \u_uart_tx/_133_  (.A1(\u_uart_tx/_055_ ),
    .A2(\u_uart_tx/_049_ ),
    .B1(\u_uart_tx/_052_ ),
    .B2(\u_uart_tx/_048_ ),
    .Y(\u_uart_tx/_020_ ));
 sky130_fd_sc_hd__o31ai_1 \u_uart_tx/_134_  (.A1(\u_uart_tx/_055_ ),
    .A2(\u_uart_tx/_061_ ),
    .A3(\u_uart_tx/_032_ ),
    .B1(\u_uart_tx/_066_ ),
    .Y(\u_uart_tx/_053_ ));
 sky130_fd_sc_hd__o311a_1 \u_uart_tx/_135_  (.A1(\u_uart_tx/state [1]),
    .A2(\u_uart_tx/state [0]),
    .A3(tx_start_reg),
    .B1(\u_uart_tx/_034_ ),
    .C1(\u_uart_tx/_053_ ),
    .X(\u_uart_tx/_021_ ));
 sky130_fd_sc_hd__xnor2_1 \u_uart_tx/_136_  (.A(\u_uart_tx/state [1]),
    .B(\u_uart_tx/_034_ ),
    .Y(\u_uart_tx/_022_ ));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_137_  (.CLK(clknet_3_4__leaf_uart_clk),
    .D(\u_uart_tx/_000_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/tx_data_r [0]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_138_  (.CLK(clknet_3_0__leaf_uart_clk),
    .D(\u_uart_tx/_001_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/tx_data_r [1]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_139_  (.CLK(clknet_3_1__leaf_uart_clk),
    .D(\u_uart_tx/_002_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/tx_data_r [2]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_140_  (.CLK(clknet_3_1__leaf_uart_clk),
    .D(\u_uart_tx/_003_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/tx_data_r [3]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_141_  (.CLK(clknet_3_1__leaf_uart_clk),
    .D(\u_uart_tx/_004_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/tx_data_r [4]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_142_  (.CLK(clknet_3_1__leaf_uart_clk),
    .D(\u_uart_tx/_005_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/tx_data_r [5]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_143_  (.CLK(clknet_3_2__leaf_uart_clk),
    .D(\u_uart_tx/_006_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/tx_data_r [6]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_144_  (.CLK(clknet_3_3__leaf_uart_clk),
    .D(\u_uart_tx/_007_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/tx_data_r [7]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_145_  (.CLK(clknet_3_3__leaf_uart_clk),
    .D(\u_uart_tx/_008_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/tx_active ));
 sky130_fd_sc_hd__dfstp_2 \u_uart_tx/_146_  (.CLK(clknet_3_7__leaf_uart_clk),
    .D(\u_uart_tx/_009_ ),
    .SET_B(uart_rst_n),
    .Q(uart_tx_out));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_147_  (.CLK(clknet_3_3__leaf_uart_clk),
    .D(\u_uart_tx/_010_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/tx_done ));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_148_  (.CLK(clknet_3_2__leaf_uart_clk),
    .D(\u_uart_tx/_011_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/clk_count [0]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_149_  (.CLK(clknet_3_2__leaf_uart_clk),
    .D(\u_uart_tx/_012_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/clk_count [1]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_150_  (.CLK(clknet_3_2__leaf_uart_clk),
    .D(\u_uart_tx/_013_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/clk_count [2]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_151_  (.CLK(clknet_3_2__leaf_uart_clk),
    .D(\u_uart_tx/_014_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/clk_count [3]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_152_  (.CLK(clknet_3_2__leaf_uart_clk),
    .D(\u_uart_tx/_015_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/clk_count [4]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_153_  (.CLK(clknet_3_2__leaf_uart_clk),
    .D(\u_uart_tx/_016_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/clk_count [5]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_154_  (.CLK(clknet_3_2__leaf_uart_clk),
    .D(\u_uart_tx/_017_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/clk_count [6]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_155_  (.CLK(clknet_3_2__leaf_uart_clk),
    .D(\u_uart_tx/zero_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/clk_count [7]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_156_  (.CLK(clknet_3_2__leaf_uart_clk),
    .D(\u_uart_tx/zero_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/clk_count [8]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_157_  (.CLK(clknet_3_2__leaf_uart_clk),
    .D(\u_uart_tx/zero_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/clk_count [9]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_158_  (.CLK(clknet_3_2__leaf_uart_clk),
    .D(\u_uart_tx/zero_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/clk_count [10]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_159_  (.CLK(clknet_3_0__leaf_uart_clk),
    .D(\u_uart_tx/zero_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/clk_count [11]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_160_  (.CLK(clknet_3_0__leaf_uart_clk),
    .D(\u_uart_tx/zero_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/clk_count [12]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_161_  (.CLK(clknet_3_2__leaf_uart_clk),
    .D(\u_uart_tx/zero_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/clk_count [13]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_162_  (.CLK(clknet_3_0__leaf_uart_clk),
    .D(\u_uart_tx/zero_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/clk_count [14]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_163_  (.CLK(clknet_3_0__leaf_uart_clk),
    .D(\u_uart_tx/zero_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/clk_count [15]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_164_  (.CLK(clknet_3_3__leaf_uart_clk),
    .D(\u_uart_tx/_018_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/bit_index [0]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_165_  (.CLK(clknet_3_3__leaf_uart_clk),
    .D(\u_uart_tx/_019_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/bit_index [1]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_166_  (.CLK(clknet_3_3__leaf_uart_clk),
    .D(\u_uart_tx/_020_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/bit_index [2]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_167_  (.CLK(clknet_3_3__leaf_uart_clk),
    .D(\u_uart_tx/_021_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/state [0]));
 sky130_fd_sc_hd__dfrtp_1 \u_uart_tx/_168_  (.CLK(clknet_3_3__leaf_uart_clk),
    .D(\u_uart_tx/_022_ ),
    .RESET_B(uart_rst_n),
    .Q(\u_uart_tx/state [1]));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Right_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Right_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Right_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Right_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Right_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Right_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Right_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Right_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Right_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_39_Right_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_40_Right_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_41_Right_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_42_Right_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_43_Right_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_44_Right_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_45_Right_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_46_Right_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_53 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_55 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_56 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_57 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_58 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_59 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_60 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_61 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_62 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_63 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_64 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_65 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_66 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_67 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_68 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_69 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_70 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_71 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_72 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_73 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_74 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_75 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_76 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Left_77 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Left_78 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Left_79 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Left_80 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Left_81 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Left_82 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Left_83 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Left_84 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Left_85 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_39_Left_86 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_40_Left_87 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_41_Left_88 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_42_Left_89 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_43_Left_90 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_44_Left_91 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_45_Left_92 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_46_Left_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_194 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_195 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_196 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_197 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_198 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_199 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_200 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_201 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_202 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_203 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_204 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_205 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_206 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_207 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_208 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_209 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_210 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_211 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_212 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_213 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_214 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_215 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_216 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_217 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_218 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_219 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_220 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_221 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_222 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_223 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_224 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_225 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_226 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_227 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_228 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_229 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_230 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_231 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_232 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_233 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_234 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_235 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_236 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_237 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_238 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_239 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_240 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_241 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_242 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_243 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_244 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_245 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_246 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_247 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_248 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_249 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_250 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_251 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_252 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_253 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_254 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_255 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_256 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_257 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_258 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_259 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_260 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_261 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_262 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_263 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_264 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_265 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_266 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_267 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_268 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_269 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_270 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_271 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_272 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_273 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_274 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_275 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_276 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_277 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_278 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_279 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_280 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_281 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_282 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_283 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_284 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_285 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_286 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_287 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_288 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_289 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_290 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_291 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_292 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_293 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_294 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_295 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_296 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_297 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_298 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_299 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_300 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_301 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_302 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_303 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_304 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_305 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_306 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_307 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_308 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_309 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_310 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_311 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_312 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_313 ();
 sky130_fd_sc_hd__buf_16 max_cap1 (.A(\u_async_fifo/raddr [0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_s_axi_aclk (.A(s_axi_aclk),
    .X(clknet_0_s_axi_aclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_0_0_s_axi_aclk (.A(clknet_0_s_axi_aclk),
    .X(clknet_4_0_0_s_axi_aclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_1_0_s_axi_aclk (.A(clknet_0_s_axi_aclk),
    .X(clknet_4_1_0_s_axi_aclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_2_0_s_axi_aclk (.A(clknet_0_s_axi_aclk),
    .X(clknet_4_2_0_s_axi_aclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_3_0_s_axi_aclk (.A(clknet_0_s_axi_aclk),
    .X(clknet_4_3_0_s_axi_aclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_4_0_s_axi_aclk (.A(clknet_0_s_axi_aclk),
    .X(clknet_4_4_0_s_axi_aclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_5_0_s_axi_aclk (.A(clknet_0_s_axi_aclk),
    .X(clknet_4_5_0_s_axi_aclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_6_0_s_axi_aclk (.A(clknet_0_s_axi_aclk),
    .X(clknet_4_6_0_s_axi_aclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_7_0_s_axi_aclk (.A(clknet_0_s_axi_aclk),
    .X(clknet_4_7_0_s_axi_aclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_8_0_s_axi_aclk (.A(clknet_0_s_axi_aclk),
    .X(clknet_4_8_0_s_axi_aclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_9_0_s_axi_aclk (.A(clknet_0_s_axi_aclk),
    .X(clknet_4_9_0_s_axi_aclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_10_0_s_axi_aclk (.A(clknet_0_s_axi_aclk),
    .X(clknet_4_10_0_s_axi_aclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_11_0_s_axi_aclk (.A(clknet_0_s_axi_aclk),
    .X(clknet_4_11_0_s_axi_aclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_12_0_s_axi_aclk (.A(clknet_0_s_axi_aclk),
    .X(clknet_4_12_0_s_axi_aclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_13_0_s_axi_aclk (.A(clknet_0_s_axi_aclk),
    .X(clknet_4_13_0_s_axi_aclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_14_0_s_axi_aclk (.A(clknet_0_s_axi_aclk),
    .X(clknet_4_14_0_s_axi_aclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_15_0_s_axi_aclk (.A(clknet_0_s_axi_aclk),
    .X(clknet_4_15_0_s_axi_aclk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_uart_clk (.A(uart_clk),
    .X(clknet_0_uart_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_0__f_uart_clk (.A(clknet_0_uart_clk),
    .X(clknet_3_0__leaf_uart_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_1__f_uart_clk (.A(clknet_0_uart_clk),
    .X(clknet_3_1__leaf_uart_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_2__f_uart_clk (.A(clknet_0_uart_clk),
    .X(clknet_3_2__leaf_uart_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_3__f_uart_clk (.A(clknet_0_uart_clk),
    .X(clknet_3_3__leaf_uart_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_4__f_uart_clk (.A(clknet_0_uart_clk),
    .X(clknet_3_4__leaf_uart_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_5__f_uart_clk (.A(clknet_0_uart_clk),
    .X(clknet_3_5__leaf_uart_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_6__f_uart_clk (.A(clknet_0_uart_clk),
    .X(clknet_3_6__leaf_uart_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_7__f_uart_clk (.A(clknet_0_uart_clk),
    .X(clknet_3_7__leaf_uart_clk));
 assign s_axi_wready = s_axi_awready;
 assign s_axi_bresp[1] = s_axi_bresp[0];
endmodule
