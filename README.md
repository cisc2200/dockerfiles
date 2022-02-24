![Status](https://img.shields.io/github/workflow/status/cisc2200/dockerfiles/ci)
![Size](https://img.shields.io/docker/image-size/cisc2200/cpp-dev-container/latest)

## Use in VSCode

1. In the root directory of any project, create a sub-directory and file `.devcontainer/devcontainer.json`:

```json
{
	"image": "cisc2200/cpp-dev-container:latest",
	"settings": {
		"editor.formatOnType": true,
		"files.autoSave": "onFocusChange",
		"C_Cpp.intelliSenseEngine": "Default",
		"C_Cpp.enhancedColorization": "Enabled",
		"C_Cpp.formatting": "clangFormat",
		"C_Cpp.clang_format_path": "/usr/bin/clang-format",
		"C_Cpp.clang_format_style": "LLVM",
		"C_Cpp.clang_format_fallbackStyle": "LLVM"
	},
	"extensions": [
		"cschlosser.doxdocgen",
		"ms-vscode.cpptools",
		"jeff-hykin.better-cpp-syntax"
	],
	"runArgs": [
		"--rm",
		"--cap-add=SYS_PTRACE",
		"--security-opt",
		"seccomp=unconfined"
	]
}
```

2. Open the project directory in contatiner via VSCode's [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension.
3. Enjoy coding!
