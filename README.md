# Dynamic Knowledge Base
Dynamic switching between different knowledge bases to consult different forms of knowledge at different points in ruby.

# Concepts
Using knowledge bases to allow for reasoning in prolog about procedurally generated Roguelike maps.

Known Issues: How to adjust a knowledge base each time a new map in generated to reason about each one differently without modifying database each time.

## Use Cases
Suppose you randomly generated a new map, the in game world state needs to be aware of different world conditions. And this currently no known ways to have random generation while having it know of each possible world state.

The solution is to generate a new knowledge base every time a new map is created. But I have yet to figure out what problems this may create.
