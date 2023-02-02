return {
    "adalessa/laravel.nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
    },
    cmd = {"Sail", "Artisan", "Composer"},
    keys = {
        {"<leader>pa", ":Artisan<cr>"},
    },
    config = function()
        require("laravel").setup({
    split = split,
    bind_telescope = true,
    ask_for_args = true,
    register_user_commands = true,
    route_info = true,
    default_runner = "buffer",
    artisan_command_runner = {
        ["dump-server"] = "terminal",
        ["db"] = "terminal",
        ["tinker"] = "terminal",
    },
    resource_directory_map = {
        cast = "app/Casts",
        channel = "app/Broadcasting",
        command = "app/Console/Commands",
        component = "app/View/Components",
        controller = "app/Http/Controllers",
        event = "app/Events",
        exception = "app/Exceptions",
        factory = "database/factories",
        job = "app/Jobs",
        listener = "app/Listeners",
        mail = "app/Mail",
        middleware = "app/Http/Middleware",
        migration = "database/migrations",
        model = "app/Models",
        notification = "app/Notifications",
        observer = "app/Observers",
        policy = "app/Policies",
        provider = "app/Providers",
        request = "app/Http/Requests",
        resource = "app/Http/Resources",
        rule = "app/Rules",
        scope = "app/Models/Scopes",
        seeder = "database/seeders",
        test = "tests/Feature",
    },
})
        require("telescope").load_extension("laravel")
    end
}
