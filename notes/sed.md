# GNU sed

## Find and replace recursive
find . -type f -print0 | xargs -0 sed -i '' -e 's/PlayerComponent/LifeformComponent/g'
