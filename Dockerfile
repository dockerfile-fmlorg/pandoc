# BSD 2-Clause License
# 
# Copyright (c) 2023, Ken'ichi Fukamachi <fukachan@fmlorg>
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
# 
# 1. Redistributions of source code must retain the above copyright notice, this
#    list of conditions and the following disclaimer.
# 
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

FROM k4zuki/pandocker-base:20.04@sha256:e2b5297e983ff17621e1f75ea4b69d7363181b24272f517566920888748cc730

MAINTAINER fmlorg

RUN pip3 install bitfieldpy==0.0.9									\
		 git+https://github.com/k4zuki/pandocker-filters.git@0.1				\
		 git+https://github.com/k4zuki/pandoc_misc.git@acbdf365df72be7fccf8194a22bead961a553386	\
		 git+https://github.com/k4zuki/docx-core-property-writer.git@0.0.5			\
    	 	 git+https://github.com/pandocker/pandoc-docx-pagebreak-py.git@0.0.2

WORKDIR /workdir

VOLUME ["/workdir"]

CMD ["bash"]
