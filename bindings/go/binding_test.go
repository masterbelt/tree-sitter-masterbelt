package tree_sitter_masterbelt_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_masterbelt "github.com/masterbelt/tree-sitter-masterbelt/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_masterbelt.Language())
	if language == nil {
		t.Errorf("Error loading Masterbelt grammar")
	}
}
