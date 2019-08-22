require 'mtik'

module Mikrotik
  def Mikrotik.test_conection concentrator, timeout = 5
		begin
      mikt = MTik::command(host: concentrator.address, user: concentrator.login, pass: concentrator.password, command: '/ip/address/print', conn_timeout: timeout)
        {message: mikt, success: true, status: :ok}
    rescue Exception=> e
        {message: e.message , success: false, status: :error}
    end
	end

  def Mikrotik.throughput concentrator, timeout = 1
			begin
        mtik = MTik::Connection.new host: concentrator.address, user: concentrator.login, pass: concentrator.password, conn_timeout: timeout
				cpu_and_memory = mtik.get_reply '/system/resource/print'
				network = mtik.get_reply '/interface/monitor-traffic',
					'=interface=aggregate',
					'=.proplist=rx-bits-per-second,tx-bits-per-second',
					'=once='
				{success: true, cpu_and_memory: cpu_and_memory, network: network, status: :ok}
      rescue Exception=> e
          { success: false, status: :error}
      end			
  end 
end 
