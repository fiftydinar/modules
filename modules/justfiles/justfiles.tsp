import "@typespec/json-schema";
using TypeSpec.JsonSchema;

@jsonSchema("/modules/justfiles.json")
model JustfilesModule {
    /** The justfiles module makes it easy to include just recipes from multiple files in Universal Blue -based images.
     * https://blue-build.org/reference/modules/justfiles/
     */
    type: "justfiles";

    /** Whether to validate the syntax of the justfiles against `just --fmt`. (warning: can be very unforgiving) */
    validate?: boolean = false;

    /** List of files or subfolders to include into this image. If omitted, all justfiles will be included. */
    include?: Array<string>;
}