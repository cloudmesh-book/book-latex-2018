height=0.9

\forestset{
  skan tree/.style={
    for tree={
      drop shadow,
      text width=3cm,
      grow'=0,
      rounded corners,
      draw,
      top color=white,
      bottom color=blue!20,
      edge={Latex-},
      child anchor=parent,
      %parent anchor=children,
      anchor=parent,
      tier/.wrap pgfmath arg={tier ##1}{level()},
      s sep+=2.5pt,
      l sep+=2.5pt,
      edge path'={
        (.child anchor) -- ++(-10pt,0) -- (!u.parent anchor)
      },
      node options={ align=center },
    },
    before typesetting nodes={
      for tree={
        content/.wrap value={\strut ##1},
      },
    },
  },
}
skan tree \[E222 \[Assignments \[Accounts
([\[a:accounts\]](#a:accounts){reference-type="ref"
reference="a:accounts"}) \[Futuresystems Github Chameleon Cloud IU
google
([\[E:e616-iu-google-services\]](#E:e616-iu-google-services){reference-type="ref"
reference="E:e616-iu-google-services"}) Piazza, \] \] \[Survey
([\[a:survey-entry\]](#a:survey-entry){reference-type="ref"
reference="a:survey-entry"})\] \[Writing Assignments \[Bio
([\[a:616-bio\]](#a:616-bio){reference-type="ref"
reference="a:616-bio"}), \] \[Plagiarizm
([\[S:plagiarism\]](#S:plagiarism){reference-type="ref"
reference="S:plagiarism"}) , \] \[Project Report
([\[E:project\]](#E:project){reference-type="ref"
reference="E:project"}), \] \] \[Programming Assignments \[REST
([\[E:rest-eve\]](#E:rest-eve){reference-type="ref"
reference="E:rest-eve"})([\[E:REST-a\]](#E:REST-a){reference-type="ref"
reference="E:REST-a"})([\[E:REST-swagger\]](#E:REST-swagger){reference-type="ref"
reference="E:REST-swagger"})\] \[Project
([\[E:project\]](#E:project){reference-type="ref"
reference="E:project"}), \] \] \] \[Scientific Writing
([\[p:writing\]](#p:writing){reference-type="ref"
reference="p:writing"})
\[LaTeX([\[C:latex\]](#C:latex){reference-type="ref"
reference="C:latex"}) \[bibtex
([\[C:bibtex\]](#C:bibtex){reference-type="ref" reference="C:bibtex"})\
jabref ([\[s:jabref\]](#s:jabref){reference-type="ref"
reference="s:jabref"})\
LaTeX ([\[C:latex\]](#C:latex){reference-type="ref"
reference="C:latex"}), \] \] \] \[Prerequisits Review \[Python
([\[C:python\]](#C:python){reference-type="ref" reference="C:python"})
\[Language
([\[C:python-language\]](#C:python-language){reference-type="ref"
reference="C:python-language"}), \] \[pyenv
([\[C:python-install\]](#C:python-install){reference-type="ref"
reference="C:python-install"})\
pip ([\[C:python-install\]](#C:python-install){reference-type="ref"
reference="C:python-install"}), \] \] \[Advanced Python
([\[P:python-advanced\]](#P:python-advanced){reference-type="ref"
reference="P:python-advanced"}) \[Numpy
([\[s:numpy\]](#s:numpy){reference-type="ref" reference="s:numpy"})\
Scipy ([\[s:scipy\]](#s:scipy){reference-type="ref"
reference="s:scipy"})\
OpenCV ([\[c:opencv\]](#c:opencv){reference-type="ref"
reference="c:opencv"}), \] \[Face Detection
([\[c:face\]](#c:face){reference-type="ref" reference="c:face"})
Fingerprint
([\[c:python-fingerprint\]](#c:python-fingerprint){reference-type="ref"
reference="c:python-fingerprint"}), \] \[CMD5
([\[C:python-cmd5\]](#C:python-cmd5){reference-type="ref"
reference="C:python-cmd5"}), \] \] \[ssh
([\[C:ssh\]](#C:ssh){reference-type="ref" reference="C:ssh"}) \[Keys
([\[s:generate-a-ssh-key\]](#s:generate-a-ssh-key){reference-type="ref"
reference="s:generate-a-ssh-key"}), \] \] \[Linux
([\[C:linux\]](#C:linux){reference-type="ref" reference="C:linux"})
\[Commands
([\[c:linux-commands\]](#c:linux-commands){reference-type="ref"
reference="c:linux-commands"}), \] \] \] \[IaaS \[VM
([\[c:vmm\]](#c:vmm){reference-type="ref" reference="c:vmm"}) \[Virtual
Box ([\[S:virtual-box\]](#S:virtual-box){reference-type="ref"
reference="S:virtual-box"}), \] \[Openstack
([\[C:chameleon\]](#C:chameleon){reference-type="ref"
reference="C:chameleon"}), \] \[QEMU
([\[vmm-qemu\]](#vmm-qemu){reference-type="ref" reference="vmm-qemu"}),
\] \[KVM ([\[vmm-kvm\]](#vmm-kvm){reference-type="ref"
reference="vmm-kvm"}), \] \] \[Container
([\[p:container\]](#p:container){reference-type="ref"
reference="p:container"})([\[c:container\]](#c:container){reference-type="ref"
reference="c:container"}) \[Docker
([\[s:motivation-docker\]](#s:motivation-docker){reference-type="ref"
reference="s:motivation-docker"})\
Docker Swarm
([\[s:motivation-docker\]](#s:motivation-docker){reference-type="ref"
reference="s:motivation-docker"})\
Kubernetes
([\[s:motivation-docker-kubernetes\]](#s:motivation-docker-kubernetes){reference-type="ref"
reference="s:motivation-docker-kubernetes"}), \] \] \] \[PaaS
\[MapReduce ([\[p:mapreduce\]](#p:mapreduce){reference-type="ref"
reference="p:mapreduce"}) \[Hadoop
([\[c:hadoop\]](#c:hadoop){reference-type="ref" reference="c:hadoop"})\
Spark ([\[c:spark\]](#c:spark){reference-type="ref"
reference="c:spark"}), \] \[Harp
([\[s:harp\]](#s:harp){reference-type="ref" reference="s:harp"})\
Twister ([\[s:twister2\]](#s:twister2){reference-type="ref"
reference="s:twister2"}), \] \] \[Servers
([\[p:servertech\]](#p:servertech){reference-type="ref"
reference="p:servertech"}) \[REST
([\[c:rest\]](#c:rest){reference-type="ref" reference="c:rest"}), \]
\[MQTT ([\[c:mqtt\]](#c:mqtt){reference-type="ref" reference="c:mqtt"}),
\] \] \] \[Arificial Inteligence \[e222\
Theory ([\[c:ai\]](#c:ai){reference-type="ref" reference="c:ai"})
\[Unsupervised Learning ([\[c:ai\]](#c:ai){reference-type="ref"
reference="c:ai"}), \] \[Deep Learning
([\[c:ai\]](#c:ai){reference-type="ref" reference="c:ai"}), \]
\[Forecasting ([\[c:ai\]](#c:ai){reference-type="ref"
reference="c:ai"}), \] \[Sensors
([\[s:a-sensors\]](#s:a-sensors){reference-type="ref"
reference="s:a-sensors"}), \] \] \] \]
