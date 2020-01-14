using ArgParse

push!(LOAD_PATH, pwd())
using OBJMeshes

""" parse_cmdline
Parse the command line args for the meshgen tool. """
function parse_cmdline()
    s = ArgParseSettings()
    @add_arg_table s begin
        "-g"
            help="geometry (cube, cylider, or sphere)"
        "-n"
            help="divisionsU"
            arg_type=Int
            default=32
        "-m"
            help="divisionsV"
            arg_type=Int
            default=16
        "-i"
            help="input filename"
        "outfile"
            help="output filename"
    end

    return parse_args(s)
end

function main()
    # grab the necessary arguments depending on usage:
    args = parse_cmdline()
    if args["i"] != nothing # normal estimation usage
        infile = args["i"]
    else # mesh generation usage
        geom = args["g"]
        divisionsU = args["n"]
        divisionsV = args["m"]
    end
    outfile = args["outfile"]

    # TODO: given the argument values parsed above, call functionality from
    # OBJMeshes as needed. In addition to the functions you write, you'll need
    # to use the provided write_obj and read_obj functions.

end

main()
