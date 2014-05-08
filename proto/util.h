#ifndef UTIL_H
#define UTIL_H

#include <stdio.h>
#include <stdlib.h>

#define NELEM(x) (sizeof(x) / sizeof((x)[0]))
#define SENTINEL(x) (&(x)[NELEM(x)])

#define ERROR(...)                                          \
    do {                                                    \
        fprintf(stderr, "%s:%d: error in function %s: ",    \
                __FILE__, __LINE__, __FUNCTION__);          \
        fprintf(stderr, __VA_ARGS__);                       \
        fprintf(stderr, "\n");                              \
        abort();                                            \
    } while (0)


#ifndef NOWARN
#define WARN(...)                                          \
    do {                                                   \
        fprintf(stderr, "%s:%d: warning in function %s: ", \
                __FILE__, __LINE__, __FUNCTION__);         \
        fprintf(stderr, __VA_ARGS__);                      \
        fprintf(stderr, "\n");                             \
    } while (0)
#else
#define WARN(...) (void)0
#endif  /* NOWARN */


#ifndef NOINFO
#define INFO(...)                                       \
    do {                                                \
        fprintf(stderr, "%s:%d: info in function %s: ", \
                __FILE__, __LINE__, __FUNCTION__);      \
        fprintf(stderr, __VA_ARGS__);                   \
        fprintf(stderr, "\n");                          \
    } while (0)
#else
#define INFO(...) (void)0
#endif  /* NOINFO */

#ifndef NOVERB
#define VERB(...)                                                   \
    do {                                                            \
        fprintf(stderr, "%s:%d: verbose debug in function %s: ",    \
                __FILE__, __LINE__, __FUNCTION__);                  \
        fprintf(stderr, __VA_ARGS__);                               \
        fprintf(stderr, "\n");                                      \
    } while (0)
#else
#define VERB(...) (void)0
#endif  /* NOVERB */

#endif /* UTIL_H */
