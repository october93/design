# October Design Assets 🎉

## Setup
Install [Git LFS](https://git-lfs.github.com/)
```
brew install git-lfs
```

## Managing asset types
Add a new filetype to .gitattributes
```
git lfs track "*.filetype"
```

## Contributing
Pull Request workflow
```
git checkout -b add-upload-button
git add .
git commit -m "Add upload button"
git push origin HEAD --set-upstream
```
Then submit a pull request on GitHub.com

Update an existing branch
```
git add .
git commit -m "Colorize upload button blue"
git push origin add-upload-button
```

Update your stuff from origin
```
git checkout master
git pull
```
