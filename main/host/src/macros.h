#ifndef MACROS_H
#define MACROS_H

#define AGE_GROUP_WIDTH 17

#define HOST_TREATED(x, ts) ((Hosts[x].treat_stop_time > ts) && (Hosts[x].treat_start_time <= ts))
#define HOST_VACCED(x, ts) (Hosts[x].vacc_start_time+P->usVaccTimeToEfficacy<=ts)
#define HOST_VACCED_SWITCH(x) (Hosts[x].vacc_start_time >= P->usVaccTimeEfficacySwitch)
#define HOST_ISOLATED(x, ts) ((Hosts[x].isolation_start_time + P->usCaseIsolationDelay <= ts) && (Hosts[x].isolation_start_time + P->usCaseIsolationDelay + P->usCaseIsolationDuration > ts))
#define HOST_QUARANTINED(x, ts) ((HostsQuarantine[x].comply == 1) && (HostsQuarantine[x].start_time + P->usHQuarantineHouseDuration > ts) && (HostsQuarantine[x].start_time <= ts))
#define PLACE_CLOSED(x, y, n) ((Places[x * n + y].close_start_time <= ts) && (Places[x * n + y].close_end_time > ts))
#define HOST_ABSENT(x, ts) ((Hosts[x].absent_start_time <= ts) && (Hosts[x].absent_stop_time > ts))
#define HOST_AGE_GROUP(x) (Hosts[x].age / AGE_GROUP_WIDTH)
#define INFECT_TYPE_MASK 16


#endif