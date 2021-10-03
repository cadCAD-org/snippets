[![Convert Jupyter Noteboks](https://github.com/cadCAD-org/snippets/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/cadCAD-org/snippets/actions/workflows/main.yml)

# demos/snippets

This is a repo containing notebooks and python files showcasing features and
applications of cadCAD in a more brief and quick way. If you have any kind of 
snippet or mini-demo showing how to do something, this is the place to put it!

## How to contribute

Fork this repo, make a commit containing your snippet additions / changes, and **don't forget to update this README**!

## Categories of snippets

### Models for scaffolding

* minimal_model.ipynb - The simplest model that you can get
* minimal_param_sweep.ipynb - The simplest model with parameter sweep and Monte Carlo runs
* minimal_prey_predator.ipynb - A minimalistic version of the SD P&P demo

### Integrations with cadCAD

* interpolated_timeseries.ipynb - A mini-demo showing how to put sparse time series 
inside cadCAD models through interpolation
* diagram.ipynb - Generate diagrams for illustrating a model logic and structure
* parameter_sensitivity - Shows how to use the cadCAD_machine_search sensitivity viz and parameter sweep features

### cadCAD hacks

* param_navigation.ipynb - How to append parameters to the results dataframe
* psub_metadata.ipynb - How to use PSUB metadata for pre-processing
* psub_map_label.ipynb - Referencing Partial State Update Blocks labels to substeps in cadCAD

### Debugging

* execution_time_decorator.ipynb - Putting decorators for debugging the logic
execution time
* memory_buster.ipynb - A cadCAD model for blowing the memory usage. 
Can be useful for debugging

### Other

* game_hack.ipynb - Repeated Prisioners Dilemma in cadCAD
* cadCAD_minimal.ipynb - A very concise and basic implementation of the cadCAD simulation pipeline
