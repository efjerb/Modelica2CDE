# Generated from ../Grammars/modelica.g4 by ANTLR 4.11.1
from antlr4 import *
from modelica2cde.antlr_scripts.modelicaParser import modelicaParser

# This class defines a complete generic visitor for a parse tree produced by modelicaParser.

class modelicaVisitor(ParseTreeVisitor):

    # Visit a parse tree produced by modelicaParser#stored_definition.
    def visitStored_definition(self, ctx:modelicaParser.Stored_definitionContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#class_definition.
    def visitClass_definition(self, ctx:modelicaParser.Class_definitionContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#class_specifier.
    def visitClass_specifier(self, ctx:modelicaParser.Class_specifierContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#class_prefixes.
    def visitClass_prefixes(self, ctx:modelicaParser.Class_prefixesContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#long_class_specifier.
    def visitLong_class_specifier(self, ctx:modelicaParser.Long_class_specifierContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#short_class_specifier.
    def visitShort_class_specifier(self, ctx:modelicaParser.Short_class_specifierContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#der_class_specifier.
    def visitDer_class_specifier(self, ctx:modelicaParser.Der_class_specifierContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#base_prefix.
    def visitBase_prefix(self, ctx:modelicaParser.Base_prefixContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#enum_list.
    def visitEnum_list(self, ctx:modelicaParser.Enum_listContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#enumeration_literal.
    def visitEnumeration_literal(self, ctx:modelicaParser.Enumeration_literalContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#composition.
    def visitComposition(self, ctx:modelicaParser.CompositionContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#language_specification.
    def visitLanguage_specification(self, ctx:modelicaParser.Language_specificationContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#external_function_call.
    def visitExternal_function_call(self, ctx:modelicaParser.External_function_callContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#element_list.
    def visitElement_list(self, ctx:modelicaParser.Element_listContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#element.
    def visitElement(self, ctx:modelicaParser.ElementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#import_clause.
    def visitImport_clause(self, ctx:modelicaParser.Import_clauseContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#import_list.
    def visitImport_list(self, ctx:modelicaParser.Import_listContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#extends_clause.
    def visitExtends_clause(self, ctx:modelicaParser.Extends_clauseContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#constraining_clause.
    def visitConstraining_clause(self, ctx:modelicaParser.Constraining_clauseContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#component_clause.
    def visitComponent_clause(self, ctx:modelicaParser.Component_clauseContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#type_prefix.
    def visitType_prefix(self, ctx:modelicaParser.Type_prefixContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#type_specifier.
    def visitType_specifier(self, ctx:modelicaParser.Type_specifierContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#component_list.
    def visitComponent_list(self, ctx:modelicaParser.Component_listContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#component_declaration.
    def visitComponent_declaration(self, ctx:modelicaParser.Component_declarationContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#condition_attribute.
    def visitCondition_attribute(self, ctx:modelicaParser.Condition_attributeContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#declaration.
    def visitDeclaration(self, ctx:modelicaParser.DeclarationContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#modification.
    def visitModification(self, ctx:modelicaParser.ModificationContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#class_modification.
    def visitClass_modification(self, ctx:modelicaParser.Class_modificationContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#argument_list.
    def visitArgument_list(self, ctx:modelicaParser.Argument_listContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#argument.
    def visitArgument(self, ctx:modelicaParser.ArgumentContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#element_modification_or_replaceable.
    def visitElement_modification_or_replaceable(self, ctx:modelicaParser.Element_modification_or_replaceableContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#element_modification.
    def visitElement_modification(self, ctx:modelicaParser.Element_modificationContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#element_redeclaration.
    def visitElement_redeclaration(self, ctx:modelicaParser.Element_redeclarationContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#element_replaceable.
    def visitElement_replaceable(self, ctx:modelicaParser.Element_replaceableContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#component_clause1.
    def visitComponent_clause1(self, ctx:modelicaParser.Component_clause1Context):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#component_declaration1.
    def visitComponent_declaration1(self, ctx:modelicaParser.Component_declaration1Context):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#short_class_definition.
    def visitShort_class_definition(self, ctx:modelicaParser.Short_class_definitionContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#equation_section.
    def visitEquation_section(self, ctx:modelicaParser.Equation_sectionContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#algorithm_section.
    def visitAlgorithm_section(self, ctx:modelicaParser.Algorithm_sectionContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#equation.
    def visitEquation(self, ctx:modelicaParser.EquationContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#statement.
    def visitStatement(self, ctx:modelicaParser.StatementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#if_equation.
    def visitIf_equation(self, ctx:modelicaParser.If_equationContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#if_statement.
    def visitIf_statement(self, ctx:modelicaParser.If_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#for_equation.
    def visitFor_equation(self, ctx:modelicaParser.For_equationContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#for_statement.
    def visitFor_statement(self, ctx:modelicaParser.For_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#for_indices.
    def visitFor_indices(self, ctx:modelicaParser.For_indicesContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#for_index.
    def visitFor_index(self, ctx:modelicaParser.For_indexContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#while_statement.
    def visitWhile_statement(self, ctx:modelicaParser.While_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#when_equation.
    def visitWhen_equation(self, ctx:modelicaParser.When_equationContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#when_statement.
    def visitWhen_statement(self, ctx:modelicaParser.When_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#connect_clause.
    def visitConnect_clause(self, ctx:modelicaParser.Connect_clauseContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#expression.
    def visitExpression(self, ctx:modelicaParser.ExpressionContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#simple_expression.
    def visitSimple_expression(self, ctx:modelicaParser.Simple_expressionContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#logical_expression.
    def visitLogical_expression(self, ctx:modelicaParser.Logical_expressionContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#logical_term.
    def visitLogical_term(self, ctx:modelicaParser.Logical_termContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#logical_factor.
    def visitLogical_factor(self, ctx:modelicaParser.Logical_factorContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#relation.
    def visitRelation(self, ctx:modelicaParser.RelationContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#rel_op.
    def visitRel_op(self, ctx:modelicaParser.Rel_opContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#arithmetic_expression.
    def visitArithmetic_expression(self, ctx:modelicaParser.Arithmetic_expressionContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#add_op.
    def visitAdd_op(self, ctx:modelicaParser.Add_opContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#term.
    def visitTerm(self, ctx:modelicaParser.TermContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#mul_op.
    def visitMul_op(self, ctx:modelicaParser.Mul_opContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#factor.
    def visitFactor(self, ctx:modelicaParser.FactorContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#primary.
    def visitPrimary(self, ctx:modelicaParser.PrimaryContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#name.
    def visitName(self, ctx:modelicaParser.NameContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#component_reference.
    def visitComponent_reference(self, ctx:modelicaParser.Component_referenceContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#function_call_args.
    def visitFunction_call_args(self, ctx:modelicaParser.Function_call_argsContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#function_arguments.
    def visitFunction_arguments(self, ctx:modelicaParser.Function_argumentsContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#named_arguments.
    def visitNamed_arguments(self, ctx:modelicaParser.Named_argumentsContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#named_argument.
    def visitNamed_argument(self, ctx:modelicaParser.Named_argumentContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#function_argument.
    def visitFunction_argument(self, ctx:modelicaParser.Function_argumentContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#output_expression_list.
    def visitOutput_expression_list(self, ctx:modelicaParser.Output_expression_listContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#expression_list.
    def visitExpression_list(self, ctx:modelicaParser.Expression_listContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#array_subscripts.
    def visitArray_subscripts(self, ctx:modelicaParser.Array_subscriptsContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#subscript_.
    def visitSubscript_(self, ctx:modelicaParser.Subscript_Context):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#comment.
    def visitComment(self, ctx:modelicaParser.CommentContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#string_comment.
    def visitString_comment(self, ctx:modelicaParser.String_commentContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by modelicaParser#annotation.
    def visitAnnotation(self, ctx:modelicaParser.AnnotationContext):
        return self.visitChildren(ctx)



del modelicaParser