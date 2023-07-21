<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit30f417e7e5d365510f5cc279b9a966c9
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'PHPMailer\\PHPMailer\\' => 20,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'PHPMailer\\PHPMailer\\' => 
        array (
            0 => __DIR__ . '/..' . '/phpmailer/phpmailer/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit30f417e7e5d365510f5cc279b9a966c9::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit30f417e7e5d365510f5cc279b9a966c9::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit30f417e7e5d365510f5cc279b9a966c9::$classMap;

        }, null, ClassLoader::class);
    }
}
