TextEditor = null
buildTextEditor = (params) ->
  if atom.workspace.buildTextEditor?
    atom.workspace.buildTextEditor(params)
  else
    TextEditor ?= require('atom').TextEditor
    new TextEditor(params)

describe "Language-WebIDL", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('language-webidl')
