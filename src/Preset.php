<?php

/**
 * Copyright © 2024+ Tomáš Chochola <chocholatom1997@gmail.com> - All Rights Reserved
 *
 * This software is the proprietary property of Tomáš Chochola and is protected by copyright laws.
 * Despite its potential public availability, it remains proprietary and not free or open-source.
 * A valid license is required for any use of the software.
 *
 * The complete license terms are detailed in the LICENSE.md file within the source code.
 *
 * For license acquisition or inquiries, please contact Tomáš Chochola or visit the GitHub Sponsors page:
 * - Email: chocholatom1997@gmail.com
 * - GitHub: https://github.com/tomchochola
 * - Sponsor & License: https://github.com/sponsors/tomchochola
 */

declare(strict_types=1);

namespace Tomchochola\PhpCsFixerConfig;

use PhpCsFixer\ConfigInterface;

class Preset
{
    /**
     * @param array<string, array<string, mixed>|bool> $rules
     */
    public static function make(string $dir, array $rules): ConfigInterface
    {
        return ConfigFactory::make(FinderFactory::make()
            ->in($dir), $rules);
    }
}
