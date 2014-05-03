#ifndef UTIL_H
#define UTIL_H

#define NELEM(x) (sizeof(x) / sizeof((x)[0]))
#define SENTINEL(x) (&(x)[NELEM(x)])

#define DEBUG_INFO 2
#define DEBUG_WARNING 1
#define DEBUG_ERROR 0

#define ERROR(...)                              \
    error(__FILE__, __LINE__, __FUNCTION__, __VA_ARGS__)

#define WARNING(...)                            \
    warning(__FILE__, __LINE__, __FUNCTION__, __VA_ARGS__)

#define INFO(...)                               \
    info(__FILE__, __LINE__, __FUNCTION__, __VA_ARGS__)

void error(const char *file, int line, const char *function, ...);
void warning(const char *file, int line, const char *function, ...);
void info(const char *file, int line, const char *function, ...);

void set_debug_level(int level);

#endif /* UTIL_H */
