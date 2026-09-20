# Voxta - Python Packaging

This repository packages the Python runtime Voxta ships, and re-hosts the prebuilt wheels it
installs that are not available on PyPI.

Nothing here compiles from source. Every workflow either repackages an official build or copies
an upstream prebuilt wheel, so there is no build toolchain to keep working as versions move.

| Workflow | Tag | What it does |
| --- | --- | --- |
| `build-voxta-python-base.yml` | `python-*` | Strips docs/tests/pip from the official Windows build and zips it as the pack `appsettings.json` downloads |
| `build-flash-attn-wheels.yml` | `flash-attn-*` | Copies [mjun0812](https://github.com/mjun0812/flash-attention-prebuild-wheels)'s CUDA wheels |
| `build-llama-cpp-python-wheels.yml` | `llama-cpp-python-*` | Copies [JamePeng](https://github.com/JamePeng/llama-cpp-python)'s CUDA wheels (MIT) |

The mirrors exist because pulling a 250 MB asset from a third-party release at install time is
flaky: the download drops, pip lands a truncated file, and the user gets "Wheel is invalid".
Releases here are for visibility; the wheels are then uploaded to the
`public.voxta.ai/voxta-python-wheels` blob, which is what Voxta actually installs from.

## Bumping the Python version

1. Set the version in `build-voxta-python-base.yml`, tag `python-<version>`, publish the release.
2. In voxta-server, update `PythonWheels.CpTag`, and `Python.Windows`/`Python.Linux` in
   `appsettings.json` (version, download URL, SHA-1, and the `pythonXYZ.dll` name).
3. Check each mirrored wheel above publishes a build for the new ABI tag before tagging it.
