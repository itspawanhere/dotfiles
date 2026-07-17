cb() {
    echo "./gradlew clean build $1" 
    ./gradlew clean build $1
}

c() {
    echo "./gradlew clean $1" 
    ./gradlew clean $1
}

b() {
    echo "./gradlew build $1" 
    ./gradlew build $1
}

bm() {
    echo "./gradlew buildMicroservice $1" 
    ./gradlew buildMicroservice $1
}
cbi() {
    echo "./gradlew clean build $1 && ./buildImage.sh"
    ./gradlew clean build $1 && ./buildImage.sh
}

j() {
    echo "./gradlew jar $1" 
    ./gradlew jar $1
}

t() {
    echo "./gradlew test $@" 
    ./gradlew test $@
}

gw() {
    echo "./gradlew $1" 
    ./gradlew $1
}

dep() {
    echo "./gradlew dependencies > $1" 
    ./gradlew dependencies > $1
}

or() {
    echo "opening the test report: build/reports/tests/test/index.html $1"
    open build/reports/tests/test/index.html $1
}

lint() {
    report_name=${1:-report.html}
    pylint $(git ls-files '*.py') > report.json
    pylint_report report.json -o ${report_name}
    rm report.json
}

prisma() {
    image=$1
    export PA_PATH=https://us-west1.cloud.twistlock.com/us-4-161028311
    echo "Running the command"
    echo /Applications/Prisma/twistcli images scan --token $PA_TOKEN --address $PA_PATH --details $image
    /Applications/Prisma/twistcli images scan --token $PA_TOKEN --address $PA_PATH --details $image
}

gstsyncdev() {
    branch=$(git rev-parse --abbrev-ref HEAD)
    git stash
    git checkout develop
    git pull
    git checkout $branch
    git merge --no-edit develop
    git stash pop
}

gstsync() {
    branch=$(git rev-parse --abbrev-ref HEAD)
    git stash
    git checkout $1
    git pull
    git checkout $branch
    git merge --no-edit $1
    git stash pop
}

gsync() {
    branch=$(git rev-parse --abbrev-ref HEAD)
    git checkout $1
    git pull
    git checkout $branch
    git merge --no-edit $1
}

