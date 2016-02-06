Elixir Update Operator
======

This macro defines a function so we can use the `~>` operator to easily set values in a nested structure (map, struct, list) in Elixir.

It makes use of Elixir's `put_in/2` function, which I personally dislike using directly because it is ugly and it obfuscates the parameters being passed in. Let's use a new operator to make it clear we're doing magic, and also make things pretty.

### Using It
Make sure to import the macro
```
import UpdateOperator
```

If we have a map, such as
```
mymap = %{foo: %{bar: %{baz: "original value"}}}
```

We can now update the map using
```
mymap = "new value" ~> mymap.foo.bar.baz
```

License
------

    This is free and unencumbered software released 
    into the public domain.

    Anyone is free to copy, modify, publish, use, compile, 
    sell, or distribute this software, either in source 
    code form or as a compiled binary, for any purpose, 
    commercial or non-commercial, and by any means.
    
    In jurisdictions that recognize copyright laws, the 
    author or authors of this software dedicate any and 
    all copyright interest in the software to the public 
    domain. We make this dedication for the benefit of 
    the public at large and to the detriment of our heirs 
    and successors. We intend this dedication to be an overt 
    act of relinquishment in perpetuity of all present and 
    future rights to this software under copyright law.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY 
    KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
    THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR 
    PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS 
    BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
    WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
    FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE 
    OR OTHER DEALINGS IN THE SOFTWARE.
    
    For more information, please refer to <http://unlicense.org/>

