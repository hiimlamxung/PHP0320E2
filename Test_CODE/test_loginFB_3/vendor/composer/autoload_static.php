<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitdae49e0cf3d14d2bd061c8c80fd39d30
{
    public static $files = array (
        'c65d09b6820da036953a371c8c73a9b1' => __DIR__ . '/..' . '/facebook/graph-sdk/src/Facebook/polyfills.php',
    );

    public static $prefixLengthsPsr4 = array (
        'F' => 
        array (
            'Facebook\\' => 9,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Facebook\\' => 
        array (
            0 => __DIR__ . '/..' . '/facebook/graph-sdk/src/Facebook',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitdae49e0cf3d14d2bd061c8c80fd39d30::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitdae49e0cf3d14d2bd061c8c80fd39d30::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}