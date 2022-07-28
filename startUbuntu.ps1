# Has to be authorized using:
# Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
$REPO="kourtnee/"
$IMAGE="1001_vnc"
$TAG="20.04"
$RESOL="1440x900"
docker run -d -p 6080:80 -v "$(PWD):/workspace:rw" -e "RESOLUTION=${RESOL}" --name "${IMAGE}-run" "${REPO}${IMAGE}:${TAG}"
Start-Sleep -s 5
Start http://localhost:6080
