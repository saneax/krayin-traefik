<?php

namespace agenticone\PackageGenerator\Providers;

use Illuminate\Support\ServiceProvider;
use agenticone\PackageGenerator\Console\Command\CommandMakeCommand;
use agenticone\PackageGenerator\Console\Command\ControllerMakeCommand;
use agenticone\PackageGenerator\Console\Command\DatagridMakeCommand;
use agenticone\PackageGenerator\Console\Command\EventMakeCommand;
use agenticone\PackageGenerator\Console\Command\ListenerMakeCommand;
use agenticone\PackageGenerator\Console\Command\MailMakeCommand;
use agenticone\PackageGenerator\Console\Command\MiddlewareMakeCommand;
use agenticone\PackageGenerator\Console\Command\MigrationMakeCommand;
use agenticone\PackageGenerator\Console\Command\ModelContractMakeCommand;
use agenticone\PackageGenerator\Console\Command\ModelMakeCommand;
use agenticone\PackageGenerator\Console\Command\ModelProxyMakeCommand;
use agenticone\PackageGenerator\Console\Command\ModuleProviderMakeCommand;
use agenticone\PackageGenerator\Console\Command\NotificationMakeCommand;
use agenticone\PackageGenerator\Console\Command\PackageMakeCommand;
use agenticone\PackageGenerator\Console\Command\ProviderMakeCommand;
use agenticone\PackageGenerator\Console\Command\RepositoryMakeCommand;
use agenticone\PackageGenerator\Console\Command\RequestMakeCommand;
use agenticone\PackageGenerator\Console\Command\RouteMakeCommand;
use agenticone\PackageGenerator\Console\Command\SeederMakeCommand;

class PackageGeneratorServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap services.
     */
    public function boot(): void {}

    /**
     * Register services.
     */
    public function register(): void
    {
        $this->registerCommands();
    }

    /**
     * Register the console commands of this package
     */
    protected function registerCommands(): void
    {
        if ($this->app->runningInConsole()) {
            $this->commands([
                PackageMakeCommand::class,
                ProviderMakeCommand::class,
                ModuleProviderMakeCommand::class,
                ControllerMakeCommand::class,
                RouteMakeCommand::class,
                MigrationMakeCommand::class,
                ModelMakeCommand::class,
                ModelProxyMakeCommand::class,
                ModelContractMakeCommand::class,
                RepositoryMakeCommand::class,
                SeederMakeCommand::class,
                MailMakeCommand::class,
                CommandMakeCommand::class,
                EventMakeCommand::class,
                ListenerMakeCommand::class,
                MiddlewareMakeCommand::class,
                RequestMakeCommand::class,
                NotificationMakeCommand::class,
                DatagridMakeCommand::class,
            ]);
        }
    }
}
