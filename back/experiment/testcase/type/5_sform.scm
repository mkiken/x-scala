(begin (define-syntax T-Macro (syntax-rules (V-1.1 V-1.2) ((_ ("Scala" "floatingPointLiteral" "1.1")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))) ((_ ("Scala" "floatingPointLiteral" "1.2")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Double-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))))) (define-syntax L-Macro (syntax-rules (V-str) ((_ ("Scala" "symbolLiteral" "str")) ((F-Macro ("Scala" "Paren" R-String-)))))) (define-syntax F-Macro (syntax-rules () ((_ ("Scala" "Paren" V-s)) (("Scala" "FunctionType" ("Scala" "FunctionArgTypes" (("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (V-s)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) ("Scala" "RepeatedParamType" (T-Macro ("Scala" "floatingPointLiteral" "1.1")) #\nul))) (T-Macro ("Scala" "floatingPointLiteral" "1.2"))))))) ("Scala" "TopStat" #\nul #\nul ("Scala" "ObjectTemplateDefinition" #\nul ("Scala" "ObjectDefinition" V-makeArray ("Scala" "ClassTemplateOpt" #\nul ("Scala" "TemplateBody" (letrec* ((R-main- ((lambda () (function FunctionDefinition) (#\nul #\nul) ("Scala" "FunctionSignature" R-main- #\nul ("Scala" "ParamClauses" (("Scala" "ParamClause" ("Scala" "Params" (("Scala" "Param" #\nul R-args- ("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Array-)) (("Scala" "TypeArgs" ("Scala" "Types" (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-String-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul))))))) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) #\nul))))) #\nul)) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Unit-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) ("Scala" "PostfixExpression" ("Scala" "InfixExpression" (("Scala" "PrefixExpression" #\nul ("Scala" "BlockExpression" ("Scala" "Block" (letrec* ((V-c ((type TypeDefinition) (#\nul) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) (#\nul #\nul))) (V-b ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.1")) (#\nul #\nul))) (V-d ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.2")) (#\nul #\nul))) (V-z ((type TypeDefinition) (#\nul) (F-Macro ("Scala" "Paren" R-Double-)) (#\nul #\nul))) (V-aa ((type TypeDefinition) (#\nul) (L-Macro ("Scala" "symbolLiteral" "str")) (#\nul #\nul)))) (#\nul #\nul #\nul #\nul #\nul) #\nul)))))) #\nul))))) #\nul (#\nul #\nul))))))) #\nul)
(begin (define-syntax T-Macro (syntax-rules (V-1.1 V-1.2) ((_ ("Scala" "floatingPointLiteral" "1.1")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))) ((_ ("Scala" "floatingPointLiteral" "1.2")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Double-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))))) (define-syntax L-Macro (syntax-rules (V-str) ((_ ("Scala" "symbolLiteral" "str")) ((F-Macro ("Scala" "Paren" R-String-)))))) (define-syntax F-Macro (syntax-rules (V-[object Object]) ((_ ("Scala" "Paren" V-s)) (("Scala" "FunctionType" ("Scala" "FunctionArgTypes" (("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (V-s)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) ("Scala" "RepeatedParamType" (T-Macro ("Scala" "floatingPointLiteral" "1.1")) #\nul))) (T-Macro ("Scala" "floatingPointLiteral" "1.2"))))))) ("Scala" "TopStat" #\nul #\nul ("Scala" "ObjectTemplateDefinition" #\nul ("Scala" "ObjectDefinition" V-makeArray ("Scala" "ClassTemplateOpt" #\nul ("Scala" "TemplateBody" (letrec* ((R-main- ((lambda () (function FunctionDefinition) (#\nul #\nul) ("Scala" "FunctionSignature" R-main- #\nul ("Scala" "ParamClauses" (("Scala" "ParamClause" ("Scala" "Params" (("Scala" "Param" #\nul R-args- ("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Array-)) (("Scala" "TypeArgs" ("Scala" "Types" (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-String-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul))))))) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) #\nul))))) #\nul)) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Unit-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) ("Scala" "PostfixExpression" ("Scala" "InfixExpression" (("Scala" "PrefixExpression" #\nul ("Scala" "BlockExpression" ("Scala" "Block" (letrec* ((V-c ((type TypeDefinition) (#\nul) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) (#\nul #\nul))) (V-b ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.1")) (#\nul #\nul))) (V-d ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.2")) (#\nul #\nul))) (V-z ((type TypeDefinition) (#\nul) (F-Macro ("Scala" "Paren" R-Double-)) (#\nul #\nul))) (V-aa ((type TypeDefinition) (#\nul) (L-Macro ("Scala" "symbolLiteral" "str")) (#\nul #\nul)))) (#\nul #\nul #\nul #\nul #\nul) #\nul)))))) #\nul))))) #\nul (#\nul #\nul))))))) #\nul)
(begin (define-syntax T-Macro (syntax-rules (V-1.1 V-1.2) ((_ ("Scala" "floatingPointLiteral" "1.1")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))) ((_ ("Scala" "floatingPointLiteral" "1.2")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Double-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))))) (define-syntax L-Macro (syntax-rules (V-str) ((_ ("Scala" "symbolLiteral" "str")) ((F-Macro ("Scala" "Paren" R-String-)))))) (define-syntax F-Macro (syntax-rules (V-[object Object]) ((_ ("Scala" "Paren" V-s)) (("Scala" "FunctionType" ("Scala" "FunctionArgTypes" (("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (V-s)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) ("Scala" "RepeatedParamType" (T-Macro ("Scala" "floatingPointLiteral" "1.1")) #\nul))) (T-Macro ("Scala" "floatingPointLiteral" "1.2"))))))) ("Scala" "TopStat" #\nul #\nul ("Scala" "ObjectTemplateDefinition" #\nul ("Scala" "ObjectDefinition" V-makeArray ("Scala" "ClassTemplateOpt" #\nul ("Scala" "TemplateBody" (letrec* ((R-main- ((lambda () (function FunctionDefinition) (#\nul #\nul) ("Scala" "FunctionSignature" R-main- #\nul ("Scala" "ParamClauses" (("Scala" "ParamClause" ("Scala" "Params" (("Scala" "Param" #\nul R-args- ("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Array-)) (("Scala" "TypeArgs" ("Scala" "Types" (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-String-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul))))))) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) #\nul))))) #\nul)) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Unit-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) ("Scala" "PostfixExpression" ("Scala" "InfixExpression" (("Scala" "PrefixExpression" #\nul ("Scala" "BlockExpression" ("Scala" "Block" (letrec* ((V-c ((type TypeDefinition) (#\nul) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) (#\nul #\nul))) (V-b ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.1")) (#\nul #\nul))) (V-d ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.2")) (#\nul #\nul))) (V-z ((type TypeDefinition) (#\nul) (F-Macro ("Scala" "Paren" R-Double-)) (#\nul #\nul))) (V-aa ((type TypeDefinition) (#\nul) (L-Macro ("Scala" "symbolLiteral" "str")) (#\nul #\nul)))) (#\nul #\nul #\nul #\nul #\nul) #\nul)))))) #\nul))))) #\nul (#\nul #\nul))))))) #\nul)
(begin (define-syntax T-Macro (syntax-rules (V-1.1 V-1.2) ((_ ("Scala" "floatingPointLiteral" "1.1")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))) ((_ ("Scala" "floatingPointLiteral" "1.2")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Double-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))))) (define-syntax L-Macro (syntax-rules (V-str) ((_ ("Scala" "symbolLiteral" "str")) ((F-Macro ("Scala" "Paren" R-String-)))))) (define-syntax F-Macro (syntax-rules (V-[object Object]) ((_ ("Scala" "Paren" V-s)) (("Scala" "FunctionType" ("Scala" "FunctionArgTypes" (("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (V-s)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) ("Scala" "RepeatedParamType" (T-Macro ("Scala" "floatingPointLiteral" "1.1")) #\nul))) (T-Macro ("Scala" "floatingPointLiteral" "1.2"))))))) ("Scala" "TopStat" #\nul #\nul ("Scala" "ObjectTemplateDefinition" #\nul ("Scala" "ObjectDefinition" V-makeArray ("Scala" "ClassTemplateOpt" #\nul ("Scala" "TemplateBody" (letrec* ((R-main- ((lambda () (function FunctionDefinition) (#\nul #\nul) ("Scala" "FunctionSignature" R-main- #\nul ("Scala" "ParamClauses" (("Scala" "ParamClause" ("Scala" "Params" (("Scala" "Param" #\nul R-args- ("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Array-)) (("Scala" "TypeArgs" ("Scala" "Types" (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-String-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul))))))) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) #\nul))))) #\nul)) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Unit-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) ("Scala" "PostfixExpression" ("Scala" "InfixExpression" (("Scala" "PrefixExpression" #\nul ("Scala" "BlockExpression" ("Scala" "Block" (letrec* ((V-c ((type TypeDefinition) (#\nul) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) (#\nul #\nul))) (V-b ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.1")) (#\nul #\nul))) (V-d ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.2")) (#\nul #\nul))) (V-z ((type TypeDefinition) (#\nul) (F-Macro ("Scala" "Paren" R-Double-)) (#\nul #\nul))) (V-aa ((type TypeDefinition) (#\nul) (L-Macro ("Scala" "symbolLiteral" "str")) (#\nul #\nul)))) (#\nul #\nul #\nul #\nul #\nul) #\nul)))))) #\nul))))) #\nul (#\nul #\nul))))))) #\nul)
(begin (define-syntax T-Macro (syntax-rules (V-1.1 V-1.2) ((_ ("Scala" "floatingPointLiteral" "1.1")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))) ((_ ("Scala" "floatingPointLiteral" "1.2")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Double-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))))) (define-syntax L-Macro (syntax-rules (V-str) ((_ ("Scala" "symbolLiteral" "str")) ((F-Macro ("Scala" "Paren" R-String-)))))) (define-syntax F-Macro (syntax-rules (V-[object Object]) ((_ ("Scala" "Paren" V-s)) (("Scala" "FunctionType" ("Scala" "FunctionArgTypes" (("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (V-s)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) ("Scala" "RepeatedParamType" (T-Macro ("Scala" "floatingPointLiteral" "1.1")) #\nul))) (T-Macro ("Scala" "floatingPointLiteral" "1.2"))))))) ("Scala" "TopStat" #\nul #\nul ("Scala" "ObjectTemplateDefinition" #\nul ("Scala" "ObjectDefinition" V-makeArray ("Scala" "ClassTemplateOpt" #\nul ("Scala" "TemplateBody" (letrec* ((R-main- ((lambda () (function FunctionDefinition) (#\nul #\nul) ("Scala" "FunctionSignature" R-main- #\nul ("Scala" "ParamClauses" (("Scala" "ParamClause" ("Scala" "Params" (("Scala" "Param" #\nul R-args- ("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Array-)) (("Scala" "TypeArgs" ("Scala" "Types" (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-String-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul))))))) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) #\nul))))) #\nul)) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Unit-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) ("Scala" "PostfixExpression" ("Scala" "InfixExpression" (("Scala" "PrefixExpression" #\nul ("Scala" "BlockExpression" ("Scala" "Block" (letrec* ((V-c ((type TypeDefinition) (#\nul) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) (#\nul #\nul))) (V-b ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.1")) (#\nul #\nul))) (V-d ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.2")) (#\nul #\nul))) (V-z ((type TypeDefinition) (#\nul) (F-Macro ("Scala" "Paren" R-Double-)) (#\nul #\nul))) (V-aa ((type TypeDefinition) (#\nul) (L-Macro ("Scala" "symbolLiteral" "str")) (#\nul #\nul)))) (#\nul #\nul #\nul #\nul #\nul) #\nul)))))) #\nul))))) #\nul (#\nul #\nul))))))) #\nul)
(begin (define-syntax T-Macro (syntax-rules (V-1.1 V-1.2) ((_ ("Scala" "floatingPointLiteral" "1.1")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))) ((_ ("Scala" "floatingPointLiteral" "1.2")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Double-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))))) (define-syntax L-Macro (syntax-rules (V-str) ((_ ("Scala" "symbolLiteral" "str")) ((F-Macro ("Scala" "Paren" R-String-)))))) (define-syntax F-Macro (syntax-rules (V-[object Object]) ((_ ("Scala" "Paren" V-s)) (("Scala" "FunctionType" ("Scala" "FunctionArgTypes" (("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (V-s)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) ("Scala" "RepeatedParamType" (T-Macro ("Scala" "floatingPointLiteral" "1.1")) #\nul))) (T-Macro ("Scala" "floatingPointLiteral" "1.2"))))))) ("Scala" "TopStat" #\nul #\nul ("Scala" "ObjectTemplateDefinition" #\nul ("Scala" "ObjectDefinition" V-makeArray ("Scala" "ClassTemplateOpt" #\nul ("Scala" "TemplateBody" (letrec* ((R-main- ((lambda () (function FunctionDefinition) (#\nul #\nul) ("Scala" "FunctionSignature" R-main- #\nul ("Scala" "ParamClauses" (("Scala" "ParamClause" ("Scala" "Params" (("Scala" "Param" #\nul R-args- ("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Array-)) (("Scala" "TypeArgs" ("Scala" "Types" (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-String-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul))))))) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) #\nul))))) #\nul)) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Unit-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) ("Scala" "PostfixExpression" ("Scala" "InfixExpression" (("Scala" "PrefixExpression" #\nul ("Scala" "BlockExpression" ("Scala" "Block" (letrec* ((V-c ((type TypeDefinition) (#\nul) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) (#\nul #\nul))) (V-b ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.1")) (#\nul #\nul))) (V-d ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.2")) (#\nul #\nul))) (V-z ((type TypeDefinition) (#\nul) (F-Macro ("Scala" "Paren" R-Double-)) (#\nul #\nul))) (V-aa ((type TypeDefinition) (#\nul) (L-Macro ("Scala" "symbolLiteral" "str")) (#\nul #\nul)))) (#\nul #\nul #\nul #\nul #\nul) #\nul)))))) #\nul))))) #\nul (#\nul #\nul))))))) #\nul)
(begin (define-syntax T-Macro (syntax-rules (V-1.1 V-1.2) ((_ ("Scala" "floatingPointLiteral" "1.1")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))) ((_ ("Scala" "floatingPointLiteral" "1.2")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Double-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))))) (define-syntax L-Macro (syntax-rules (V-str) ((_ ("Scala" "symbolLiteral" "str")) ((F-Macro ("Scala" "Paren" R-String-)))))) (define-syntax F-Macro (syntax-rules (V-[object Object]) ((_ ("Scala" "Paren" V-s)) (("Scala" "FunctionType" ("Scala" "FunctionArgTypes" (("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (V-s)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) ("Scala" "RepeatedParamType" (T-Macro ("Scala" "floatingPointLiteral" "1.1")) #\nul))) (T-Macro ("Scala" "floatingPointLiteral" "1.2"))))))) ("Scala" "TopStat" #\nul #\nul ("Scala" "ObjectTemplateDefinition" #\nul ("Scala" "ObjectDefinition" V-makeArray ("Scala" "ClassTemplateOpt" #\nul ("Scala" "TemplateBody" (letrec* ((R-main- ((lambda () (function FunctionDefinition) (#\nul #\nul) ("Scala" "FunctionSignature" R-main- #\nul ("Scala" "ParamClauses" (("Scala" "ParamClause" ("Scala" "Params" (("Scala" "Param" #\nul R-args- ("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Array-)) (("Scala" "TypeArgs" ("Scala" "Types" (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-String-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul))))))) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) #\nul))))) #\nul)) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Unit-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) ("Scala" "PostfixExpression" ("Scala" "InfixExpression" (("Scala" "PrefixExpression" #\nul ("Scala" "BlockExpression" ("Scala" "Block" (letrec* ((V-c ((type TypeDefinition) (#\nul) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) (#\nul #\nul))) (V-b ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.1")) (#\nul #\nul))) (V-d ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.2")) (#\nul #\nul))) (V-z ((type TypeDefinition) (#\nul) (F-Macro ("Scala" "Paren" R-Double-)) (#\nul #\nul))) (V-aa ((type TypeDefinition) (#\nul) (L-Macro ("Scala" "symbolLiteral" "str")) (#\nul #\nul)))) (#\nul #\nul #\nul #\nul #\nul) #\nul)))))) #\nul))))) #\nul (#\nul #\nul))))))) #\nul)
(begin (define-syntax T-Macro (syntax-rules (V-1.1 V-1.2) ((_ ("Scala" "floatingPointLiteral" "1.1")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))) ((_ ("Scala" "floatingPointLiteral" "1.2")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Double-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))))) (define-syntax L-Macro (syntax-rules (V-str) ((_ ("Scala" "symbolLiteral" "str")) ((F-Macro ("Scala" "Paren" R-String-)))))) (define-syntax F-Macro (syntax-rules (V-[object Object]) ((_ ("Scala" "Paren" V-s)) (("Scala" "FunctionType" ("Scala" "FunctionArgTypes" (("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (V-s)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) ("Scala" "RepeatedParamType" (T-Macro ("Scala" "floatingPointLiteral" "1.1")) #\nul))) (T-Macro ("Scala" "floatingPointLiteral" "1.2"))))))) ("Scala" "TopStat" #\nul #\nul ("Scala" "ObjectTemplateDefinition" #\nul ("Scala" "ObjectDefinition" V-makeArray ("Scala" "ClassTemplateOpt" #\nul ("Scala" "TemplateBody" (letrec* ((R-main- ((lambda () (function FunctionDefinition) (#\nul #\nul) ("Scala" "FunctionSignature" R-main- #\nul ("Scala" "ParamClauses" (("Scala" "ParamClause" ("Scala" "Params" (("Scala" "Param" #\nul R-args- ("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Array-)) (("Scala" "TypeArgs" ("Scala" "Types" (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-String-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul))))))) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) #\nul))))) #\nul)) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Unit-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) ("Scala" "PostfixExpression" ("Scala" "InfixExpression" (("Scala" "PrefixExpression" #\nul ("Scala" "BlockExpression" ("Scala" "Block" (letrec* ((V-c ((type TypeDefinition) (#\nul) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) (#\nul #\nul))) (V-b ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.1")) (#\nul #\nul))) (V-d ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.2")) (#\nul #\nul))) (V-z ((type TypeDefinition) (#\nul) (F-Macro ("Scala" "Paren" R-Double-)) (#\nul #\nul))) (V-aa ((type TypeDefinition) (#\nul) (L-Macro ("Scala" "symbolLiteral" "str")) (#\nul #\nul)))) (#\nul #\nul #\nul #\nul #\nul) #\nul)))))) #\nul))))) #\nul (#\nul #\nul))))))) #\nul)
(begin (define-syntax T-Macro (syntax-rules (V-1.1 V-1.2) ((_ ("Scala" "floatingPointLiteral" "1.1")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))) ((_ ("Scala" "floatingPointLiteral" "1.2")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Double-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))))) (define-syntax L-Macro (syntax-rules (V-str) ((_ ("Scala" "symbolLiteral" "str")) ((F-Macro ("Scala" "Paren" R-String-)))))) (define-syntax F-Macro (syntax-rules (V-[object Object]) ((_ ("Scala" "Paren" V-s)) (("Scala" "FunctionType" ("Scala" "FunctionArgTypes" (("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (V-s)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) ("Scala" "RepeatedParamType" (T-Macro ("Scala" "floatingPointLiteral" "1.1")) #\nul))) (T-Macro ("Scala" "floatingPointLiteral" "1.2"))))))) ("Scala" "TopStat" #\nul #\nul ("Scala" "ObjectTemplateDefinition" #\nul ("Scala" "ObjectDefinition" V-makeArray ("Scala" "ClassTemplateOpt" #\nul ("Scala" "TemplateBody" (letrec* ((R-main- ((lambda () (function FunctionDefinition) (#\nul #\nul) ("Scala" "FunctionSignature" R-main- #\nul ("Scala" "ParamClauses" (("Scala" "ParamClause" ("Scala" "Params" (("Scala" "Param" #\nul R-args- ("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Array-)) (("Scala" "TypeArgs" ("Scala" "Types" (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-String-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul))))))) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) #\nul))))) #\nul)) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Unit-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) ("Scala" "PostfixExpression" ("Scala" "InfixExpression" (("Scala" "PrefixExpression" #\nul ("Scala" "BlockExpression" ("Scala" "Block" (letrec* ((V-c ((type TypeDefinition) (#\nul) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) (#\nul #\nul))) (V-b ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.1")) (#\nul #\nul))) (V-d ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.2")) (#\nul #\nul))) (V-z ((type TypeDefinition) (#\nul) (F-Macro ("Scala" "Paren" R-Double-)) (#\nul #\nul))) (V-aa ((type TypeDefinition) (#\nul) (L-Macro ("Scala" "symbolLiteral" "str")) (#\nul #\nul)))) (#\nul #\nul #\nul #\nul #\nul) #\nul)))))) #\nul))))) #\nul (#\nul #\nul))))))) #\nul)
(begin (define-syntax T-Macro (syntax-rules (V-1.1 V-1.2) ((_ ("Scala" "floatingPointLiteral" "1.1")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))) ((_ ("Scala" "floatingPointLiteral" "1.2")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Double-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))))) (define-syntax L-Macro (syntax-rules (V-str) ((_ ("Scala" "symbolLiteral" "str")) ((F-Macro ("Scala" "Paren" R-String-)))))) (define-syntax F-Macro (syntax-rules (V-[object Object]) ((_ ("Scala" "Paren" V-s)) (("Scala" "FunctionType" ("Scala" "FunctionArgTypes" (("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (V-s)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) ("Scala" "RepeatedParamType" (T-Macro ("Scala" "floatingPointLiteral" "1.1")) #\nul))) (T-Macro ("Scala" "floatingPointLiteral" "1.2"))))))) ("Scala" "TopStat" #\nul #\nul ("Scala" "ObjectTemplateDefinition" #\nul ("Scala" "ObjectDefinition" V-makeArray ("Scala" "ClassTemplateOpt" #\nul ("Scala" "TemplateBody" (letrec* ((R-main- ((lambda () (function FunctionDefinition) (#\nul #\nul) ("Scala" "FunctionSignature" R-main- #\nul ("Scala" "ParamClauses" (("Scala" "ParamClause" ("Scala" "Params" (("Scala" "Param" #\nul R-args- ("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Array-)) (("Scala" "TypeArgs" ("Scala" "Types" (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-String-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul))))))) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) #\nul))))) #\nul)) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Unit-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) ("Scala" "PostfixExpression" ("Scala" "InfixExpression" (("Scala" "PrefixExpression" #\nul ("Scala" "BlockExpression" ("Scala" "Block" (letrec* ((V-c ((type TypeDefinition) (#\nul) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) (#\nul #\nul))) (V-b ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.1")) (#\nul #\nul))) (V-d ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.2")) (#\nul #\nul))) (V-z ((type TypeDefinition) (#\nul) (F-Macro ("Scala" "Paren" R-Double-)) (#\nul #\nul))) (V-aa ((type TypeDefinition) (#\nul) (L-Macro ("Scala" "symbolLiteral" "str")) (#\nul #\nul)))) (#\nul #\nul #\nul #\nul #\nul) #\nul)))))) #\nul))))) #\nul (#\nul #\nul))))))) #\nul)
(begin (define-syntax T-Macro (syntax-rules (V-1.1 V-1.2) ((_ ("Scala" "floatingPointLiteral" "1.1")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))) ((_ ("Scala" "floatingPointLiteral" "1.2")) (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Double-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)))))) (define-syntax L-Macro (syntax-rules (V-str) ((_ ("Scala" "symbolLiteral" "str")) ((F-Macro ("Scala" "Paren" R-String-)))))) (define-syntax F-Macro (syntax-rules (V-[object Object]) ((_ ("Scala" "Paren" V-s)) (("Scala" "FunctionType" ("Scala" "FunctionArgTypes" (("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (V-s)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) ("Scala" "RepeatedParamType" (T-Macro ("Scala" "floatingPointLiteral" "1.1")) #\nul))) (T-Macro ("Scala" "floatingPointLiteral" "1.2"))))))) ("Scala" "TopStat" #\nul #\nul ("Scala" "ObjectTemplateDefinition" #\nul ("Scala" "ObjectDefinition" V-makeArray ("Scala" "ClassTemplateOpt" #\nul ("Scala" "TemplateBody" (letrec* ((R-main- ((lambda () (function FunctionDefinition) (#\nul #\nul) ("Scala" "FunctionSignature" R-main- #\nul ("Scala" "ParamClauses" (("Scala" "ParamClause" ("Scala" "Params" (("Scala" "Param" #\nul R-args- ("Scala" "RepeatedParamType" ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Array-)) (("Scala" "TypeArgs" ("Scala" "Types" (("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-String-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul))))))) #\nul) #\nul #\nul) #\nul #\nul)) #\nul) #\nul))))) #\nul)) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Unit-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) ("Scala" "PostfixExpression" ("Scala" "InfixExpression" (("Scala" "PrefixExpression" #\nul ("Scala" "BlockExpression" ("Scala" "Block" (letrec* ((V-c ((type TypeDefinition) (#\nul) ("Scala" "Type" #\nul ("Scala" "InfixType" ("Scala" "CompoundType" ("Scala" "AnnotType" ("Scala" "SimpleType" ("Scala" "StableId" (R-Int-)) #\nul) #\nul) #\nul #\nul) #\nul #\nul)) (#\nul #\nul))) (V-b ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.1")) (#\nul #\nul))) (V-d ((type TypeDefinition) (#\nul) (T-Macro ("Scala" "floatingPointLiteral" "1.2")) (#\nul #\nul))) (V-z ((type TypeDefinition) (#\nul) (F-Macro ("Scala" "Paren" R-Double-)) (#\nul #\nul))) (V-aa ((type TypeDefinition) (#\nul) (L-Macro ("Scala" "symbolLiteral" "str")) (#\nul #\nul)))) (#\nul #\nul #\nul #\nul #\nul) #\nul)))))) #\nul))))) #\nul (#\nul #\nul))))))) #\nul)
