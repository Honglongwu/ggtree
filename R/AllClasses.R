setOldClass("phylo")


##' Class "hyphy"
##' This class stores information of HYPHY output
##'
##'
##' @name hyphy-class
##' @docType class
##' @slot fields available features
##' @slot treetext tree text
##' @slot phylo phylo object
##' @slot seq_type one of "NT" and "AA"
##' @slot subs sequence substitutions
##' @slot AA_subs Amino acid sequence substitution
##' @slot ancseq ancestral sequences
##' @slot tip_seq tip sequences
##' @slot tip.fasfile fasta file of tip sequences
##' @slot tree.file tree file
##' @slot ancseq.file ancestral sequence file, nexus format
##' @exportClass hyphy
##' @author Guangchuang Yu \url{http://ygc.name}
##' @seealso \linkS4class{paml_rst}
##' @keywords classes
setClass("hyphy",
         representation  = representation(
             fields      = "character",
             treetext    = "character",
             phylo       = "phylo",
             seq_type    = "character",
             subs        = "data.frame",
             AA_subs     = "data.frame",
             ancseq      = "character",
             tip_seq     = "character",
             tip.fasfile = "character",
             tree.file   = "character",
             ancseq.file = "character"
             )
         )


##' Class "paml_rst"
##' This class stores information of rst file from PAML output
##'
##'
##' @name paml_rst-class
##' @aliases paml_rst-class
##'   set.subs,paml_rst-method
##'   set.subs<-,paml_rst-method
##' 
##' @docType class
##' @slot fields availabel attributes
##' @slot treetext tree text
##' @slot phylo phylo object
##' @slot seq_type one of "NT" and "AA"
##' @slot tip_seq sequences of tips
##' @slot marginal_ancseq Marginal reconstruction of ancestral sequences
##' @slot joint_ancseq Joint reconstruction of ancestral sequences
##' @slot marginal_subs sequence substitutions based on marginal_ancseq
##' @slot joint_subs sequence substitutions based on joint_ancseq
##' @slot marginal_AA_subs Amino acid sequence substitutions based on marginal_ancseq
##' @slot joint_AA_subs Amino acid sequence substitutions based on joint_ancseq
##' @slot tip.fasfile fasta file of tip sequences
##' @slot rstfile rst file
##' @exportClass paml_rst
##' @author Guangchuang Yu \url{http://ygc.name}
##' @seealso \linkS4class{codeml} \linkS4class{codeml_mlc}
##' @keywords classes
setClass("paml_rst",
         representation       = representation(
             fields           = "character",
             treetext         = "character",
             phylo            = "phylo",
             seq_type         = "character",
             tip_seq          = "character",
             marginal_ancseq  = "character",
             joint_ancseq     = "character",
             marginal_subs    = "data.frame",
             joint_subs       = "data.frame",
             marginal_AA_subs = "data.frame",
             joint_AA_subs    = "data.frame",
             tip.fasfile      = "character",
             rstfile          = "character"
         )
         )

##' Class "codeml_mlc"
##' This class stores information of mlc file frm codeml output
##'
##'
##' @name codeml_mlc-class
##' @docType class
##' @slot fields available features
##' @slot treetext tree text
##' @slot phylo phylo object
##' @slot dNdS dN dS information
##' @slot seq_type one of "NT" and "AA"
##' @slot tip_seq sequences of tips
##' @slot mlcfile mlc file
##' @exportClass codeml_mlc
##' @author Guangchuang Yu
##' @seealso \linkS4class{paml_rst} \linkS4class{codeml}
##' @keywords classes
setClass("codeml_mlc",
         representation = representation(
             fields     = "character",
             treetext   = "character",
             phylo      = "phylo",
             dNdS       = "matrix",
             seq_type   = "character",
             tip_seq    = "character",
             mlcfile    = "character"
             )
         )

##' Class "codeml"
##' This class stores information of output from codeml
##'
##'
##' @name codeml-class
##' @docType class
##' @slot mlc A \code{code_mlc} object
##' @slot rst A \code{paml_rst} object
##' @exportClass codeml
##' @seealso \linkS4class{codeml_mlc} \linkS4class{paml_rst}
##' @keywords codeml
setClass("codeml",
         representation = representation(
             mlc = "codeml_mlc",
             rst = "paml_rst"
             )
         )

##' Class "jplace"
##' This class stores information of jplace file.
##'
##'
##' @name jplace-class
##' @aliases jplace-class
##'   show,jplace-method
##'   get.placements,jplace-method
##'   get.treeinfo,jplace-method
##'   get.fields,jplace-method
##'   get.treetext,jplace-method
##'
##' @docType class
##' @slot fields colnames of first variable of placements
##' @slot treetext tree text
##' @slot placements placement information
##' @slot version version
##' @slot metadata metadata
##' @slot file jplace file
##' @exportClass jplace
##' @author Guangchuang Yu \url{http://ygc.name}
##' @seealso \code{\link{show}} \code{\link{get.tree}}
##'          \code{\link{ggtree}}
##' @keywords classes
setClass("jplace",
         representation = representation(
             fields     = "character",
             treetext   = "character",
             placements = "data.frame",
             version    = "numeric",
             metadata   = "list",
             file       = "character"
             )
         )

##' Class "beast"
##' This class stores information of beast output
##'
##'
##' @name beast-class
##' @aliases beast-class
##'      get.tree,beast-method
##' 
##' @docType class
##' @slot fields beast statistic variables
##' @slot treetext tree text in beast file
##' @slot phylo tree phylo object
##' @slot translation tip number to name translation in beast file
##' @slot stats beast statistics
##' @slot file beast file, nexus format
##' @exportClass beast
##' @author Guangchuang Yu \url{http://ygc.name}
##' @seealso \code{\link{show}} \code{\link{get.fields}}
##'           \code{\link{ggtree}}
##' @keywords classes
setClass("beast",
         representation  = representation(
             fields      = "character",
             treetext    = "character",
             phylo       = "phylo",
             translation = "matrix",
             stats       = "data.frame",
             file        = "character"
             )
         )
