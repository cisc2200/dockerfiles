![Status](https://img.shields.io/github/workflow/status/cisc2200/dockerfiles/ci)
![Size](https://img.shields.io/docker/image-size/cisc2200/cpp-dev-container/latest)

## Use in VSCode

In the root directory of the project, create a sub-directory and file `.devcontainer/devcontainer.json`:

```json
{
	// https://github.com/cisc2200/dockerfiles
	"image": "cisc2200/cpp-dev-container:latest",
	"settings": {
		"editor.formatOnType": true,
		"files.autoSave": "afterDelay",
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
