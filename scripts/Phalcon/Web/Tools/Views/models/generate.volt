{%- include 'partials/inputs.volt' -%}

<div class="row">
    <div class="col-sm-12">
        {{ content() }}
        {{ flashSession.output() }}

        <div class="box box-success">
            <form role="form" class="form-horizontal" name="generate-model" method="post" action="{{ url.get("/webtools.php?_url=/models/generate") }}">
                <div class="box-header with-border">
                    <p class="pull-left">New model will be placed at: [{{ model_path }}]</p>
                    {{ submit_button("Generate", "class": "btn btn-success pull-right") }}
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="namespace" class="col-sm-2 control-label">Table name</label>
                        <div class="col-sm-10">
                            {{ input("namespace", 'eg. My\Awesome\Namespace') }}
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="schema" class="col-sm-2 control-label">Schema</label>
                        <div class="col-sm-10">
                            {{ input("schema", "Database name") }}
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="tableName" class="col-sm-2 control-label">Table name</label>
                        <div class="col-sm-10">
                            {{ select_static("tableName", tables, 'useEmpty': false, "id": "tableName", "class": "form-control") }}
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="basePath" class="col-sm-2 control-label">Project Root</label>
                        <div class="col-sm-10">
                            {{ input("basePath", "The absolute path to the project") }}
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="modelsDir" class="col-sm-2 control-label">Model Directory</label>
                        <div class="col-sm-10">
                            {{ input("modelsDir", "The absolute path to the model directory") }}
                        </div>
                    </div>

                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label for="genSettersGetters">
                                {{- check_field("genSettersGetters", "value": 1, "id": "genSettersGetters") ~ " Add setters and getters" -}}
                            </label>
                        </div>
                    </div>

                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label for="foreignKeys">
                                {{- check_field("foreignKeys", "value": 1, "id": "foreignKeys") ~ " Set foreign keys" -}}
                            </label>
                        </div>
                    </div>

                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label for="defineRelations">
                                {{- check_field("defineRelations", "value": 1, "id": "defineRelations") ~ " Define relations" -}}
                            </label>
                        </div>
                    </div>

                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label for="mapcolumn">
                                {{- check_field("mapcolumn", "value": 1, "id": "mapcolumn") ~ " Generate map columns" -}}
                            </label>
                        </div>
                    </div>

                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label for="force">
                                {{- check_field("force", "value": 1, "id": "force") ~ " Force" -}}
                            </label>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
