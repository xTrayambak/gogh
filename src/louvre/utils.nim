proc cppNew*[T](x: typedesc[T]): ptr T {.importcpp: "(new '*0#@)", nodecl.}

const FactoryDerivation* = """
class $1 final : public $3
{
  public:
    $1(const void *params) : $3(params) {}
    $2
};
""" ## Derivation template. All factory objects you create that derive from Louvre factory objects must use this as the attribute for `codegenDecl` in order to generate correct code. 

# Stolen from https://scripter.co/binding-nim-to-c-plus-plus-std-list/
# because I'm too lazy to bind it myself
type
  List*[T]                              {.importcpp: "std::list", header: "<list>".} = object
  ListIter*[T]                          {.importcpp: "std::list<'0>::iterator", header: "<list>".} = object

proc initList*[T](): List[T]            {.importcpp: "std::list<'*0>()", constructor, header: "<list>".}
proc size*(l: List): csize_t            {.importcpp: "size", header: "<list>".}
proc begin*[T](l: List[T]): ListIter[T] {.importcpp: "begin", header: "<list>".}
proc `[]`*[T](it: ListIter[T]): T       {.importcpp: "*#", header: "<list>".}
proc next*[T](it: ListIter[T]; n = 1): ListIter[T] {.importcpp: "next(@)", header: "<iterator>".}

proc toSeq*[T](l: List[T]): seq[T] =
  result = newSeq[T](l.size())
  var
    it = l.begin()

  for i in 0 ..< l.size():
    result[i] = it[]
    it = it.next()
