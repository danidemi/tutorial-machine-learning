Write-Host "Launching jupyter"
#$cmd = "docker run --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v $($PWD):/home/jovyan/work jupyter/scipy-notebook:dc9744740e12"
#$args = "run",  "--rm",  "-d", "-p",  "8888:8888", "-e", "JUPYTER_ENABLE_LAB=yes",  "-v",  "$($PWD):/home/jovyan/work",  "jupyter/scipy-notebook:dc9744740e12"
$args = "run",  "--rm",  "-d", "--name", "jupyter", "-p", "8888:8888", "-e", "JUPYTER_ENABLE_LAB=yes",  "-v",  "$($PWD):/home/jovyan/work",  "jupyter/scipy-notebook:dc9744740e12", "start-notebook.sh", "--NotebookApp.token=jupyter"

$cmd = "docker"
echo "$cmd $args"
& $cmd $args