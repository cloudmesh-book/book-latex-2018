height=0.9

\forestset{
  skan tree/.style={
    for tree={
      drop shadow,
      text width=2cm,
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
skan tree \[E616 \[Administration \[Accounts \[Futuresystems Github
Chameleon Cloud IU google Piazza, \] \] \] \[Scientific Writing
([\[p:writing\]](#p:writing){reference-type="ref"
reference="p:writing"}) \[Assignments \[Project Report, \] \[2 p. Paper,
\] \[Abstracts, \] \] \[LaTeX \[bibtex
([\[C:bibtex\]](#C:bibtex){reference-type="ref" reference="C:bibtex"})\
jabref ([\[s:a\]](#s:a){reference-type="ref" reference="s:a"})\
LaTeX, ([\[C:latex\]](#C:latex){reference-type="ref"
reference="C:latex"}) \] \] \] \[Prerequisits Review \[Python
([\[C:python-language\]](#C:python-language){reference-type="ref"
reference="C:python-language"}) \[Language, \] \[pyenv
([\[C:python-install\]](#C:python-install){reference-type="ref"
reference="C:python-install"})\
pip, \] \] \[Advanced Python \[Numpy\
Scipy\
OpenCV, \] \[Face Detection Fingerprint, \] \[CMD5, \] \] \[ssh \[Keys,
\] \] \[Linux ([\[C:linux\]](#C:linux){reference-type="ref"
reference="C:linux"}) \[Commands, \] \] \] \[IaaS \[VM \[Virtual Box, \]
\[Openstack, \] \[QEMU, \] \[KVM, \] \] \[Container \[Docker\
Docker Swarm\
Kubernetes, \] \] \] \[PaaS \[MapReduce \[E516\
Hadoop\
Spark, \] \[E516\
Harp\
Twister, \] \] \[Servers \[REST, \] \[MQTT, \] \] \] \[SaaS
\[Applications \[Physics, \] \[Helath Care, \] \[Life Style, \]
\[Sensors, \] \[Sports, \] \[Web Search\
Text Minining, \] \] \] \]
