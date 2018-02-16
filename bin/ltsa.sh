#! /usr/bin/env sh

LOG_DIRECTORY="${HOME}/.log/ltsa"
ERRORS_LOG_FILE="${LOG_DIRECTORY}/errors.log"
LOG_FILE="${LOG_DIRECTORY}/ltsa.log"
HEAP_DUMP_FILE="${LOG_DIRECTORY}/ltsa-errors.hprof"


main() {
    mkdir -p "${LOG_DIRECTORY}"

    java -splash:/opt/ltsatool/assets/splash.png \
         -XX:+UnlockDiagnosticVMOptions \
         -XX:ErrorFile="${ERRORS_LOG_FILE}" \
         -XX:LogFile="${LOG_FILE}" \
         -XX:HeapDumpPath="${HEAP_DUMP_FILE}" \
         -jar /opt/ltsatool/lib/ltsa.jar
}

main
