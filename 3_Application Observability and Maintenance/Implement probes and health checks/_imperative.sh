###################
# READINESSVPROBE #
###################

# kubernetes assumes that every time that a pod is ready. 
# But sometimes that is not true due to long starting scripts or functionality. 
# To solve this a readiness probe like an http test, a TCP test or exec a command are better options to be secure that the container can receive traffic.

##################
# LIVENESS PROBE #
##################

# A liveness probe test if a container is up and running propertly
