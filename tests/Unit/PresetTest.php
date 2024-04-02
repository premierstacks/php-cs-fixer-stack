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

namespace Tests\Unit;

use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\Attributes\DoesNotPerformAssertions;
use PHPUnit\Framework\Attributes\Small;
use PHPUnit\Framework\Attributes\Test;
use Tomchochola\PhpCsFixerConfig\Preset;

/**
 * @internal
 */
#[Small]
#[CoversClass(Preset::class)]
class PresetTest extends TestCase
{
    #[Test]
    #[DoesNotPerformAssertions]
    public function testMake(): void
    {
        Preset::make(__DIR__, []);
    }
}
