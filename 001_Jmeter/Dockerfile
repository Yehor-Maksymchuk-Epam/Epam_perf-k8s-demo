FROM java:openjdk8
ENV workdir="/tmp"
# the folder for keeping the results file
ENV results_dir="results"
# copying files for Jmeter along with the test plan
COPY jmeter/ ${workdir}/jmeter
COPY AWS_ES_Load_Test.jmx entrypoint.sh ${workdir}/
WORKDIR ${workdir}
ENTRYPOINT ["bash", "./entrypoint.sh"]
