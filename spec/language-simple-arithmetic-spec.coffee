# If you want an example of language specs, check out:
# https://github.com/atom/language-javascript/blob/master/spec/javascript-spec.coffee

describe "SimpleArithmetic grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-simple-arithmetic")

    runs ->
      grammar = atom.syntax.grammarForScopeName("source.simple-arithmetic")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.simple-arithmetic"
