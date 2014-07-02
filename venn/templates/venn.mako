<%
import os
import sys
import argparse

sys.path.append( os.path.join(os.path.abspath(os.path.curdir), "config/plugins/visualizations/venn/templates/") )
from vennt import venn
from vennt import arguments

parser = arguments()
args_string = '--csvfile %s --key key --id Feature --fdr adj.P.Val --logFC logFC --info Feature --tab' % hda.file_name
args = parser.parse_args( args_string.split() )
html = venn( args )

%>
${html}
