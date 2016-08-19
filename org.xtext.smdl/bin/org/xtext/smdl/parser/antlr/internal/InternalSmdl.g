/*
 * generated by Xtext 2.10.0
 */
grammar InternalSmdl;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package org.xtext.smdl.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.xtext.smdl.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.xtext.smdl.services.SmdlGrammarAccess;

}

@parser::members {

 	private SmdlGrammarAccess grammarAccess;

    public InternalSmdlParser(TokenStream input, SmdlGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Smdl";
   	}

   	@Override
   	protected SmdlGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleSmdl
entryRuleSmdl returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSmdlRule()); }
	iv_ruleSmdl=ruleSmdl
	{ $current=$iv_ruleSmdl.current; }
	EOF;

// Rule Smdl
ruleSmdl returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	{
		newCompositeNode(grammarAccess.getSmdlAccess().getBookParserRuleCall());
	}
	this_Book_0=ruleBook
	{
		$current = $this_Book_0.current;
		afterParserOrEnumRuleCall();
	}
;

// Entry rule entryRuleBook
entryRuleBook returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getBookRule()); }
	iv_ruleBook=ruleBook
	{ $current=$iv_ruleBook.current; }
	EOF;

// Rule Book
ruleBook returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='book'
		{
			newLeafNode(otherlv_0, grammarAccess.getBookAccess().getBookKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getBookAccess().getAttrsAttributeParserRuleCall_1_0());
				}
				lv_attrs_1_0=ruleAttribute
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getBookRule());
					}
					add(
						$current,
						"attrs",
						lv_attrs_1_0,
						"org.xtext.smdl.Smdl.Attribute");
					afterParserOrEnumRuleCall();
				}
			)
		)+
		(
			(
				{
					newCompositeNode(grammarAccess.getBookAccess().getBindingBindingParserRuleCall_2_0());
				}
				lv_binding_2_0=ruleBinding
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getBookRule());
					}
					set(
						$current,
						"binding",
						lv_binding_2_0,
						"org.xtext.smdl.Smdl.Binding");
					afterParserOrEnumRuleCall();
				}
			)
		)?
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getBookAccess().getItemsQuireParserRuleCall_3_0_0());
					}
					lv_items_3_1=ruleQuire
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getBookRule());
						}
						add(
							$current,
							"items",
							lv_items_3_1,
							"org.xtext.smdl.Smdl.Quire");
						afterParserOrEnumRuleCall();
					}
					    |
					{
						newCompositeNode(grammarAccess.getBookAccess().getItemsGuardParserRuleCall_3_0_1());
					}
					lv_items_3_2=ruleGuard
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getBookRule());
						}
						add(
							$current,
							"items",
							lv_items_3_2,
							"org.xtext.smdl.Smdl.Guard");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
		otherlv_4='end'
		{
			newLeafNode(otherlv_4, grammarAccess.getBookAccess().getEndKeyword_4());
		}
	)
;

// Entry rule entryRuleAttribute
entryRuleAttribute returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAttributeRule()); }
	iv_ruleAttribute=ruleAttribute
	{ $current=$iv_ruleAttribute.current; }
	EOF;

// Rule Attribute
ruleAttribute returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getAttributeAccess().getAttrBoolParserRuleCall_0());
		}
		this_AttrBool_0=ruleAttrBool
		{
			$current = $this_AttrBool_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getAttributeAccess().getAttrStrParserRuleCall_1());
		}
		this_AttrStr_1=ruleAttrStr
		{
			$current = $this_AttrStr_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getAttributeAccess().getAttrIntParserRuleCall_2());
		}
		this_AttrInt_2=ruleAttrInt
		{
			$current = $this_AttrInt_2.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getAttributeAccess().getAttrDecParserRuleCall_3());
		}
		this_AttrDec_3=ruleAttrDec
		{
			$current = $this_AttrDec_3.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getAttributeAccess().getAttrIntRangeParserRuleCall_4());
		}
		this_AttrIntRange_4=ruleAttrIntRange
		{
			$current = $this_AttrIntRange_4.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getAttributeAccess().getAttrDecRangeParserRuleCall_5());
		}
		this_AttrDecRange_5=ruleAttrDecRange
		{
			$current = $this_AttrDecRange_5.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleAttrBool
entryRuleAttrBool returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAttrBoolRule()); }
	iv_ruleAttrBool=ruleAttrBool
	{ $current=$iv_ruleAttrBool.current; }
	EOF;

// Rule AttrBool
ruleAttrBool returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			lv_name_0_0=RULE_ID
			{
				newLeafNode(lv_name_0_0, grammarAccess.getAttrBoolAccess().getNameIDTerminalRuleCall_0());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getAttrBoolRule());
				}
				setWithLastConsumed(
					$current,
					"name",
					lv_name_0_0,
					"org.eclipse.xtext.common.Terminals.ID");
			}
		)
	)
;

// Entry rule entryRuleAttrStr
entryRuleAttrStr returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAttrStrRule()); }
	iv_ruleAttrStr=ruleAttrStr
	{ $current=$iv_ruleAttrStr.current; }
	EOF;

// Rule AttrStr
ruleAttrStr returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_name_0_0=RULE_ID
				{
					newLeafNode(lv_name_0_0, grammarAccess.getAttrStrAccess().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAttrStrRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			(
				lv_value_1_0=RULE_STRING
				{
					newLeafNode(lv_value_1_0, grammarAccess.getAttrStrAccess().getValueSTRINGTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAttrStrRule());
					}
					setWithLastConsumed(
						$current,
						"value",
						lv_value_1_0,
						"org.eclipse.xtext.common.Terminals.STRING");
				}
			)
		)
	)
;

// Entry rule entryRuleAttrInt
entryRuleAttrInt returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAttrIntRule()); }
	iv_ruleAttrInt=ruleAttrInt
	{ $current=$iv_ruleAttrInt.current; }
	EOF;

// Rule AttrInt
ruleAttrInt returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_name_0_0=RULE_ID
				{
					newLeafNode(lv_name_0_0, grammarAccess.getAttrIntAccess().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAttrIntRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			(
				lv_value_1_0=RULE_INT
				{
					newLeafNode(lv_value_1_0, grammarAccess.getAttrIntAccess().getValueINTTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAttrIntRule());
					}
					setWithLastConsumed(
						$current,
						"value",
						lv_value_1_0,
						"org.eclipse.xtext.common.Terminals.INT");
				}
			)
		)
	)
;

// Entry rule entryRuleAttrDec
entryRuleAttrDec returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAttrDecRule()); }
	iv_ruleAttrDec=ruleAttrDec
	{ $current=$iv_ruleAttrDec.current; }
	EOF;

// Rule AttrDec
ruleAttrDec returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_name_0_0=RULE_ID
				{
					newLeafNode(lv_name_0_0, grammarAccess.getAttrDecAccess().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAttrDecRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			(
				lv_value_1_0=RULE_DEC
				{
					newLeafNode(lv_value_1_0, grammarAccess.getAttrDecAccess().getValueDECTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAttrDecRule());
					}
					setWithLastConsumed(
						$current,
						"value",
						lv_value_1_0,
						"org.xtext.smdl.Smdl.DEC");
				}
			)
		)
	)
;

// Entry rule entryRuleAttrIntRange
entryRuleAttrIntRange returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAttrIntRangeRule()); }
	iv_ruleAttrIntRange=ruleAttrIntRange
	{ $current=$iv_ruleAttrIntRange.current; }
	EOF;

// Rule AttrIntRange
ruleAttrIntRange returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_name_0_0=RULE_ID
				{
					newLeafNode(lv_name_0_0, grammarAccess.getAttrIntRangeAccess().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAttrIntRangeRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			(
				lv_start_1_0=RULE_INT
				{
					newLeafNode(lv_start_1_0, grammarAccess.getAttrIntRangeAccess().getStartINTTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAttrIntRangeRule());
					}
					setWithLastConsumed(
						$current,
						"start",
						lv_start_1_0,
						"org.eclipse.xtext.common.Terminals.INT");
				}
			)
		)
		otherlv_2='-'
		{
			newLeafNode(otherlv_2, grammarAccess.getAttrIntRangeAccess().getHyphenMinusKeyword_2());
		}
		(
			(
				lv_end_3_0=RULE_INT
				{
					newLeafNode(lv_end_3_0, grammarAccess.getAttrIntRangeAccess().getEndINTTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAttrIntRangeRule());
					}
					setWithLastConsumed(
						$current,
						"end",
						lv_end_3_0,
						"org.eclipse.xtext.common.Terminals.INT");
				}
			)
		)
	)
;

// Entry rule entryRuleAttrDecRange
entryRuleAttrDecRange returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAttrDecRangeRule()); }
	iv_ruleAttrDecRange=ruleAttrDecRange
	{ $current=$iv_ruleAttrDecRange.current; }
	EOF;

// Rule AttrDecRange
ruleAttrDecRange returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_name_0_0=RULE_ID
				{
					newLeafNode(lv_name_0_0, grammarAccess.getAttrDecRangeAccess().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAttrDecRangeRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			(
				lv_start_1_0=RULE_DEC
				{
					newLeafNode(lv_start_1_0, grammarAccess.getAttrDecRangeAccess().getStartDECTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAttrDecRangeRule());
					}
					setWithLastConsumed(
						$current,
						"start",
						lv_start_1_0,
						"org.xtext.smdl.Smdl.DEC");
				}
			)
		)
		otherlv_2='x'
		{
			newLeafNode(otherlv_2, grammarAccess.getAttrDecRangeAccess().getXKeyword_2());
		}
		(
			(
				lv_end_3_0=RULE_DEC
				{
					newLeafNode(lv_end_3_0, grammarAccess.getAttrDecRangeAccess().getEndDECTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAttrDecRangeRule());
					}
					setWithLastConsumed(
						$current,
						"end",
						lv_end_3_0,
						"org.xtext.smdl.Smdl.DEC");
				}
			)
		)
	)
;

// Entry rule entryRuleBinding
entryRuleBinding returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getBindingRule()); }
	iv_ruleBinding=ruleBinding
	{ $current=$iv_ruleBinding.current; }
	EOF;

// Rule Binding
ruleBinding returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getBindingAccess().getBindingAction_0(),
					$current);
			}
		)
		otherlv_1='binding'
		{
			newLeafNode(otherlv_1, grammarAccess.getBindingAccess().getBindingKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getBindingAccess().getAttrsAttributeParserRuleCall_2_0());
				}
				lv_attrs_2_0=ruleAttribute
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getBindingRule());
					}
					add(
						$current,
						"attrs",
						lv_attrs_2_0,
						"org.xtext.smdl.Smdl.Attribute");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_3='end'
		{
			newLeafNode(otherlv_3, grammarAccess.getBindingAccess().getEndKeyword_3());
		}
	)
;

// Entry rule entryRuleNumerator
entryRuleNumerator returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getNumeratorRule()); }
	iv_ruleNumerator=ruleNumerator
	{ $current=$iv_ruleNumerator.current; }
	EOF;

// Rule Numerator
ruleNumerator returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getNumeratorAccess().getNumeratorAction_0(),
					$current);
			}
		)
		(
			otherlv_1='('
			{
				newLeafNode(otherlv_1, grammarAccess.getNumeratorAccess().getLeftParenthesisKeyword_1_0());
			}
			(
				(
					lv_n_2_0=RULE_INT
					{
						newLeafNode(lv_n_2_0, grammarAccess.getNumeratorAccess().getNINTTerminalRuleCall_1_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getNumeratorRule());
						}
						setWithLastConsumed(
							$current,
							"n",
							lv_n_2_0,
							"org.eclipse.xtext.common.Terminals.INT");
					}
				)
			)
			otherlv_3=')'
			{
				newLeafNode(otherlv_3, grammarAccess.getNumeratorAccess().getRightParenthesisKeyword_1_2());
			}
		)?
	)
;

// Entry rule entryRuleGuard
entryRuleGuard returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getGuardRule()); }
	iv_ruleGuard=ruleGuard
	{ $current=$iv_ruleGuard.current; }
	EOF;

// Rule Guard
ruleGuard returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='page'
		{
			newLeafNode(otherlv_0, grammarAccess.getGuardAccess().getPageKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getGuardAccess().getNumNumeratorParserRuleCall_1_0());
				}
				lv_num_1_0=ruleNumerator
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getGuardRule());
					}
					set(
						$current,
						"num",
						lv_num_1_0,
						"org.xtext.smdl.Smdl.Numerator");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getGuardAccess().getAttrsAttributeParserRuleCall_2_0());
				}
				lv_attrs_2_0=ruleAttribute
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getGuardRule());
					}
					add(
						$current,
						"attrs",
						lv_attrs_2_0,
						"org.xtext.smdl.Smdl.Attribute");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_3='end'
		{
			newLeafNode(otherlv_3, grammarAccess.getGuardAccess().getEndKeyword_3());
		}
	)
;

// Entry rule entryRuleQuire
entryRuleQuire returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getQuireRule()); }
	iv_ruleQuire=ruleQuire
	{ $current=$iv_ruleQuire.current; }
	EOF;

// Rule Quire
ruleQuire returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='quire'
		{
			newLeafNode(otherlv_0, grammarAccess.getQuireAccess().getQuireKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getQuireAccess().getNumNumeratorParserRuleCall_1_0());
				}
				lv_num_1_0=ruleNumerator
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getQuireRule());
					}
					set(
						$current,
						"num",
						lv_num_1_0,
						"org.xtext.smdl.Smdl.Numerator");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getQuireAccess().getAttrsAttributeParserRuleCall_2_0());
				}
				lv_attrs_2_0=ruleAttribute
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getQuireRule());
					}
					add(
						$current,
						"attrs",
						lv_attrs_2_0,
						"org.xtext.smdl.Smdl.Attribute");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		(
			(
				{
					newCompositeNode(grammarAccess.getQuireAccess().getPagesPageParserRuleCall_3_0());
				}
				lv_pages_3_0=rulePage
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getQuireRule());
					}
					add(
						$current,
						"pages",
						lv_pages_3_0,
						"org.xtext.smdl.Smdl.Page");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_4='end'
		{
			newLeafNode(otherlv_4, grammarAccess.getQuireAccess().getEndKeyword_4());
		}
	)
;

// Entry rule entryRulePage
entryRulePage returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPageRule()); }
	iv_rulePage=rulePage
	{ $current=$iv_rulePage.current; }
	EOF;

// Rule Page
rulePage returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='page'
		{
			newLeafNode(otherlv_0, grammarAccess.getPageAccess().getPageKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getPageAccess().getNumNumeratorParserRuleCall_1_0());
				}
				lv_num_1_0=ruleNumerator
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPageRule());
					}
					set(
						$current,
						"num",
						lv_num_1_0,
						"org.xtext.smdl.Smdl.Numerator");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getPageAccess().getAttrsAttributeParserRuleCall_2_0());
				}
				lv_attrs_2_0=ruleAttribute
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPageRule());
					}
					add(
						$current,
						"attrs",
						lv_attrs_2_0,
						"org.xtext.smdl.Smdl.Attribute");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		(
			(
				{
					newCompositeNode(grammarAccess.getPageAccess().getContentsContentParserRuleCall_3_0());
				}
				lv_contents_3_0=ruleContent
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPageRule());
					}
					add(
						$current,
						"contents",
						lv_contents_3_0,
						"org.xtext.smdl.Smdl.Content");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_4='end'
		{
			newLeafNode(otherlv_4, grammarAccess.getPageAccess().getEndKeyword_4());
		}
	)
;

// Entry rule entryRuleContent
entryRuleContent returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getContentRule()); }
	iv_ruleContent=ruleContent
	{ $current=$iv_ruleContent.current; }
	EOF;

// Rule Content
ruleContent returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			otherlv_0='initial'
			{
				newLeafNode(otherlv_0, grammarAccess.getContentAccess().getInitialKeyword_0_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getContentAccess().getNumNumeratorParserRuleCall_0_1_0());
					}
					lv_num_1_0=ruleNumerator
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getContentRule());
						}
						set(
							$current,
							"num",
							lv_num_1_0,
							"org.xtext.smdl.Smdl.Numerator");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				(
					lv_type_2_0='initial'
					{
						newLeafNode(lv_type_2_0, grammarAccess.getContentAccess().getTypeInitialKeyword_0_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getContentRule());
						}
						setWithLastConsumed($current, "type", lv_type_2_0, "initial");
					}
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getContentAccess().getAttrsAttributeParserRuleCall_0_3_0());
					}
					lv_attrs_3_0=ruleAttribute
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getContentRule());
						}
						add(
							$current,
							"attrs",
							lv_attrs_3_0,
							"org.xtext.smdl.Smdl.Attribute");
						afterParserOrEnumRuleCall();
					}
				)
			)*
			otherlv_4='end'
			{
				newLeafNode(otherlv_4, grammarAccess.getContentAccess().getEndKeyword_0_4());
			}
		)
		    |
		(
			otherlv_5='decoration'
			{
				newLeafNode(otherlv_5, grammarAccess.getContentAccess().getDecorationKeyword_1_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getContentAccess().getNumNumeratorParserRuleCall_1_1_0());
					}
					lv_num_6_0=ruleNumerator
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getContentRule());
						}
						set(
							$current,
							"num",
							lv_num_6_0,
							"org.xtext.smdl.Smdl.Numerator");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				(
					lv_type_7_0='decoration'
					{
						newLeafNode(lv_type_7_0, grammarAccess.getContentAccess().getTypeDecorationKeyword_1_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getContentRule());
						}
						setWithLastConsumed($current, "type", lv_type_7_0, "decoration");
					}
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getContentAccess().getAttrsAttributeParserRuleCall_1_3_0());
					}
					lv_attrs_8_0=ruleAttribute
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getContentRule());
						}
						add(
							$current,
							"attrs",
							lv_attrs_8_0,
							"org.xtext.smdl.Smdl.Attribute");
						afterParserOrEnumRuleCall();
					}
				)
			)*
			otherlv_9='end'
			{
				newLeafNode(otherlv_9, grammarAccess.getContentAccess().getEndKeyword_1_4());
			}
		)
		    |
		(
			otherlv_10='vignette'
			{
				newLeafNode(otherlv_10, grammarAccess.getContentAccess().getVignetteKeyword_2_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getContentAccess().getNumNumeratorParserRuleCall_2_1_0());
					}
					lv_num_11_0=ruleNumerator
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getContentRule());
						}
						set(
							$current,
							"num",
							lv_num_11_0,
							"org.xtext.smdl.Smdl.Numerator");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				(
					lv_type_12_0='vignette'
					{
						newLeafNode(lv_type_12_0, grammarAccess.getContentAccess().getTypeVignetteKeyword_2_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getContentRule());
						}
						setWithLastConsumed($current, "type", lv_type_12_0, "vignette");
					}
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getContentAccess().getAttrsAttributeParserRuleCall_2_3_0());
					}
					lv_attrs_13_0=ruleAttribute
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getContentRule());
						}
						add(
							$current,
							"attrs",
							lv_attrs_13_0,
							"org.xtext.smdl.Smdl.Attribute");
						afterParserOrEnumRuleCall();
					}
				)
			)*
			otherlv_14='end'
			{
				newLeafNode(otherlv_14, grammarAccess.getContentAccess().getEndKeyword_2_4());
			}
		)
		    |
		(
			otherlv_15='symbol'
			{
				newLeafNode(otherlv_15, grammarAccess.getContentAccess().getSymbolKeyword_3_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getContentAccess().getNumNumeratorParserRuleCall_3_1_0());
					}
					lv_num_16_0=ruleNumerator
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getContentRule());
						}
						set(
							$current,
							"num",
							lv_num_16_0,
							"org.xtext.smdl.Smdl.Numerator");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				(
					lv_type_17_0='symbol'
					{
						newLeafNode(lv_type_17_0, grammarAccess.getContentAccess().getTypeSymbolKeyword_3_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getContentRule());
						}
						setWithLastConsumed($current, "type", lv_type_17_0, "symbol");
					}
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getContentAccess().getAttrsAttributeParserRuleCall_3_3_0());
					}
					lv_attrs_18_0=ruleAttribute
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getContentRule());
						}
						add(
							$current,
							"attrs",
							lv_attrs_18_0,
							"org.xtext.smdl.Smdl.Attribute");
						afterParserOrEnumRuleCall();
					}
				)
			)*
			otherlv_19='end'
			{
				newLeafNode(otherlv_19, grammarAccess.getContentAccess().getEndKeyword_3_4());
			}
		)
		    |
		(
			otherlv_20='annotation'
			{
				newLeafNode(otherlv_20, grammarAccess.getContentAccess().getAnnotationKeyword_4_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getContentAccess().getNumNumeratorParserRuleCall_4_1_0());
					}
					lv_num_21_0=ruleNumerator
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getContentRule());
						}
						set(
							$current,
							"num",
							lv_num_21_0,
							"org.xtext.smdl.Smdl.Numerator");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				(
					lv_type_22_0='annotation'
					{
						newLeafNode(lv_type_22_0, grammarAccess.getContentAccess().getTypeAnnotationKeyword_4_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getContentRule());
						}
						setWithLastConsumed($current, "type", lv_type_22_0, "annotation");
					}
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getContentAccess().getAttrsAttributeParserRuleCall_4_3_0());
					}
					lv_attrs_23_0=ruleAttribute
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getContentRule());
						}
						add(
							$current,
							"attrs",
							lv_attrs_23_0,
							"org.xtext.smdl.Smdl.Attribute");
						afterParserOrEnumRuleCall();
					}
				)
			)*
			otherlv_24='end'
			{
				newLeafNode(otherlv_24, grammarAccess.getContentAccess().getEndKeyword_4_4());
			}
		)
		    |
		(
			otherlv_25='colophon'
			{
				newLeafNode(otherlv_25, grammarAccess.getContentAccess().getColophonKeyword_5_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getContentAccess().getNumNumeratorParserRuleCall_5_1_0());
					}
					lv_num_26_0=ruleNumerator
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getContentRule());
						}
						set(
							$current,
							"num",
							lv_num_26_0,
							"org.xtext.smdl.Smdl.Numerator");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				(
					lv_type_27_0='colophon'
					{
						newLeafNode(lv_type_27_0, grammarAccess.getContentAccess().getTypeColophonKeyword_5_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getContentRule());
						}
						setWithLastConsumed($current, "type", lv_type_27_0, "colophon");
					}
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getContentAccess().getAttrsAttributeParserRuleCall_5_3_0());
					}
					lv_attrs_28_0=ruleAttribute
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getContentRule());
						}
						add(
							$current,
							"attrs",
							lv_attrs_28_0,
							"org.xtext.smdl.Smdl.Attribute");
						afterParserOrEnumRuleCall();
					}
				)
			)*
			otherlv_29='end'
			{
				newLeafNode(otherlv_29, grammarAccess.getContentAccess().getEndKeyword_5_4());
			}
		)
		    |
		(
			otherlv_30='exlibris'
			{
				newLeafNode(otherlv_30, grammarAccess.getContentAccess().getExlibrisKeyword_6_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getContentAccess().getNumNumeratorParserRuleCall_6_1_0());
					}
					lv_num_31_0=ruleNumerator
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getContentRule());
						}
						set(
							$current,
							"num",
							lv_num_31_0,
							"org.xtext.smdl.Smdl.Numerator");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				(
					lv_type_32_0='exlibris'
					{
						newLeafNode(lv_type_32_0, grammarAccess.getContentAccess().getTypeExlibrisKeyword_6_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getContentRule());
						}
						setWithLastConsumed($current, "type", lv_type_32_0, "exlibris");
					}
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getContentAccess().getAttrsAttributeParserRuleCall_6_3_0());
					}
					lv_attrs_33_0=ruleAttribute
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getContentRule());
						}
						add(
							$current,
							"attrs",
							lv_attrs_33_0,
							"org.xtext.smdl.Smdl.Attribute");
						afterParserOrEnumRuleCall();
					}
				)
			)*
			otherlv_34='end'
			{
				newLeafNode(otherlv_34, grammarAccess.getContentAccess().getEndKeyword_6_4());
			}
		)
		    |
		(
			otherlv_35='rubric'
			{
				newLeafNode(otherlv_35, grammarAccess.getContentAccess().getRubricKeyword_7_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getContentAccess().getNumNumeratorParserRuleCall_7_1_0());
					}
					lv_num_36_0=ruleNumerator
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getContentRule());
						}
						set(
							$current,
							"num",
							lv_num_36_0,
							"org.xtext.smdl.Smdl.Numerator");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				(
					lv_type_37_0='rubric'
					{
						newLeafNode(lv_type_37_0, grammarAccess.getContentAccess().getTypeRubricKeyword_7_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getContentRule());
						}
						setWithLastConsumed($current, "type", lv_type_37_0, "rubric");
					}
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getContentAccess().getAttrsAttributeParserRuleCall_7_3_0());
					}
					lv_attrs_38_0=ruleAttribute
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getContentRule());
						}
						add(
							$current,
							"attrs",
							lv_attrs_38_0,
							"org.xtext.smdl.Smdl.Attribute");
						afterParserOrEnumRuleCall();
					}
				)
			)*
			otherlv_39='end'
			{
				newLeafNode(otherlv_39, grammarAccess.getContentAccess().getEndKeyword_7_4());
			}
		)
		    |
		(
			otherlv_40='heraldic'
			{
				newLeafNode(otherlv_40, grammarAccess.getContentAccess().getHeraldicKeyword_8_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getContentAccess().getNumNumeratorParserRuleCall_8_1_0());
					}
					lv_num_41_0=ruleNumerator
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getContentRule());
						}
						set(
							$current,
							"num",
							lv_num_41_0,
							"org.xtext.smdl.Smdl.Numerator");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				(
					lv_type_42_0='heraldic'
					{
						newLeafNode(lv_type_42_0, grammarAccess.getContentAccess().getTypeHeraldicKeyword_8_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getContentRule());
						}
						setWithLastConsumed($current, "type", lv_type_42_0, "heraldic");
					}
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getContentAccess().getAttrsAttributeParserRuleCall_8_3_0());
					}
					lv_attrs_43_0=ruleAttribute
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getContentRule());
						}
						add(
							$current,
							"attrs",
							lv_attrs_43_0,
							"org.xtext.smdl.Smdl.Attribute");
						afterParserOrEnumRuleCall();
					}
				)
			)*
			otherlv_44='end'
			{
				newLeafNode(otherlv_44, grammarAccess.getContentAccess().getEndKeyword_8_4());
			}
		)
	)
;

RULE_DEC : ('0'..'9')+ '.' ('0'..'9')*;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;