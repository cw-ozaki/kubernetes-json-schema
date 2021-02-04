provisioners:
  textReplace:
    build.sh:
      from: "declare -a arr=(v{{ .kubernetes.previousVersion }})"
      to: "declare -a arr=(v{{ .kubernetes.version }})"

dependencies:
  kubernetes:
    releasesFrom:
      githubReleases:
        source: kubernetes/kubernetes
    version: "> 1.0"