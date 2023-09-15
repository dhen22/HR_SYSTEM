<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitea5b3a0d329105872c720b2ab0b0721a
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
            $loader->prefixLengthsPsr4 = ComposerStaticInitea5b3a0d329105872c720b2ab0b0721a::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitea5b3a0d329105872c720b2ab0b0721a::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInitea5b3a0d329105872c720b2ab0b0721a::$classMap;

        }, null, ClassLoader::class);
    }
}
