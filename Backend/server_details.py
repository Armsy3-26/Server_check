import os
import psutil
import socket
import platform
import subprocess


server_processes = ["Executing on "]

print(f"Operating system: {platform.system()} {platform.release()}")
print(f"Architecture: {platform.machine()}")

output = subprocess.check_output(['last', '-1']).decode('utf-8')
datetime_str = output.split('\n')[0].split('  ')[-1]
print(f"Last login: {datetime_str}")


processes  = psutil.cpu_times()

#print(processes)
"""psutil.cpu_percent(interval) – This function calculates the current 
system-wide CPU 
utilization as a percentage.It is recommended to provide time interval
 (seconds) as parameter to the function over which the average CPU usage
   will be calculated, ignoring the interval parameter could result in high variation in usage values."""

#number of cores present

cores  = psutil.cpu_count()
server_processes.append("cores " + str(cores))


#cpu statistics
cpu_stats = psutil.cpu_stats()
print("ctx_switches: "+ str(cpu_stats[0]), "interrupts: "+str(cpu_stats[1]), "soft_interrupts: "+str(cpu_stats[2]), "syscalls: "+str(cpu_stats[3]))
#virtual memory(total, available,used,free,...)

virtual_memory = psutil.virtual_memory()
#network, //net_io_counters(); gives details of network i/o stats
#bytes sent,recv,packects sent/recv
#print(virtual_memory)
network = psutil.net_io_counters()
print("bytes_sent: " +str(network[0]), "bytes_recv: " + str(network[1]),
       "packet_sent: "+str(network[2]),"packet_recv: "+str(network[3]),
       "errorin: "+str(network[4]),
       "errorout: "+str(network[4]),
       )
#connections .net_connections() - gives list of socket connections of a system
#fd - socket descriptor
#family - the socket family
#status,pid,laddr,raddr and type

connections = psutil.net_connections()
print("family=<AddressFamily.AF_INET: " + str(connections[2][1]),
      "type=<SocketKind.SOCK_STREAM: " + str(connections[2][2]),
      "localhost: " +str(connections[2][3]),str(connections[2][5]),
      "connected_at: "+str(connections[2][6]),
      
      )
#battery - get battery status information
battery = psutil.sensors_battery()
print("battery percentage: "+str(battery[0]),
      "battery plugged in: "+str(battery[2])
      )
#users - list of users connected ti the system 

users  = psutil.users()

#getting all the running processes

"""processes = psutil.process_iter()


#print all the process

for process in processes:

    print(process.name(), process.pid)""" 


#check for open socket

#get the hostname and the ip address

hostname = socket.gethostname()
print("server name: " + hostname)
ip_address = socket.gethostbyname(hostname)

#loop over 1024 ports,check forp open ones

for port in range(1, 10000):
    sock  = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    result = sock.connect_ex((ip_address, port))

    if result == 0:
        print("Port {}: is open.".format(port))
    