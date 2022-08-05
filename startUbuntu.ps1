# Has to be authorized using:
# Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
$REPO="kourtnee/"
$IMAGE="cse1001-novnc"
$TAG="latest"
$RESOL="1440x900"
docker run -d -p 6080:80 -v "$(PWD):/workspace:rw" -e "RESOLUTION=${RESOL}" --name "${IMAGE}-run" "${REPO}${IMAGE}:${TAG}"
Start-Sleep -s 5
Start http://localhost:6080
