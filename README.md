## Thank You Comment GitHub Action

This GitHub Action automatically posts a thank you comment with a GIF to anyone who opens a pull request in your repository. It's a fun and friendly way to acknowledge contributors and show appreciation for their efforts.

### Features

- **Automatic Comments**: Automatically adds a comment to every new pull request.
- **GIF Integration**: Includes a thank you GIF generated using the Giphy API to make the comment more engaging.
- **Customizable Messages**: Customize the thank you message to fit your project's tone and style.

### Prerequisites

- **Giphy API Key**: You need a Giphy API key to use this action. You can obtain one by signing up at [Giphy Developers](https://developers.giphy.com/).

### Usage

To use this action in your repository, add the following workflow configuration to your `.github/workflows` directory:

```yaml
name: Thank You Commenter

on:
  pull_request:
    types: [opened]

jobs:
  pr-comment:
    runs-on: ubuntu-latest
    steps:
      - name: Post Thank You Comment
        id: giphy
        uses: bassemkaroui/docker-action-pr-giphy-comment@v1
        with:
          github-token: ${{ secrets.GITHUB_TOKEN }}
          giphy-api-key: ${{ secrets.GIPHY_API_KEY }}
          message: 'Thank you for your contribution! 🎉'
      - name: Log Comment URL
        run: echo "URL - ${{ steps.giphy.outputs.pr-comment-url }}"
```

### Inputs

- `github-token`: **Required**. The GitHub token to authorize the action.
- `giphy-api-key`: **Required**. The Giphy API key to fetch a thank you GIF.
- `message`: The custom message to include in the comment. Default is '🎉 Thank you for your contribution!'.