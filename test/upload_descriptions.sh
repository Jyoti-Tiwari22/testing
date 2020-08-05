# on client:

tar cvfz descriptions.tar.gz descriptions
scp descriptions.tar.gz jobsnearmytown:/root/code/tutree_jobs_v2/template/jobsnearmytown/

# on server:

cd /root/code/tutree_jobs_v2/template/jobsnearmytown/
tar xvfz descriptions.tar.gz

