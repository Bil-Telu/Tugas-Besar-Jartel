# ===================================================================

# AWK Script for calculating: 

#     => Packet Loss.

# ===================================================================

BEGIN{
  sent=0;
  drop=0;
}
{
  if($1=="s")
    sent+=1;
  else if($1=="D")
    drop +=1;
} END {
if (sent>0) {
  printf("Packet Sent: %5d\n", sent);
  printf("Packet Loss: %5d\n", drop);
  printf("Total Loss: %12.6f\n", 100*drop/sent);
}
}
