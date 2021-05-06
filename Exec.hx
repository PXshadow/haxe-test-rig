function main() {
    var args = Sys.args();
    var url = args[0];
    var name = args[1];
    Sys.setCwd(url);
    switch Sys.systemName() {
        case "Windows":
            Sys.command(name);
        default:
            Sys.command('./$name');
    }
}