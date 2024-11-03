// chrono.h
#ifndef CHRONO_H
#define CHRONO_H

#define _POSIX_C_SOURCE 199309L  // Deve vir antes de qualquer inclusão de cabeçalhos

#include <time.h>

typedef struct {
    struct timespec xadd_time1;
    struct timespec xadd_time2;
    long long xtotal_ns;
    long long xn_events;
} chronometer_t;

void chrono_reset(chronometer_t *chrono);
void chrono_start(chronometer_t *chrono);
long long chrono_gettotal(chronometer_t *chrono);
long long chrono_getcount(chronometer_t *chrono);
void chrono_stop(chronometer_t *chrono);
void chrono_reportTime(chronometer_t *chrono, char *s);
void chrono_report_TimeInLoop(chronometer_t *chrono, char *s, int loop_count);

#endif
