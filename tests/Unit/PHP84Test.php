<?php

/**
 * @author Tomáš Chochola <chocholatom1997@gmail.com>
 * @copyright © 2025 Tomáš Chochola <chocholatom1997@gmail.com>
 *
 * @license CC-BY-ND-4.0
 *
 * @see {@link https://creativecommons.org/licenses/by-nd/4.0/} License
 * @see {@link https://github.com/tomchochola} GitHub Personal
 * @see {@link https://github.com/premierstacks} GitHub Organization
 * @see {@link https://github.com/sponsors/tomchochola} GitHub Sponsors
 */

declare(strict_types=1);

namespace Tests\Unit;

use DateTimeImmutable;
use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\Attributes\Small;
use PHPUnit\Framework\Attributes\Test;
use Premierstacks\PhpCsFixerStack\PHP84;

/**
 * @internal
 *
 * @no-named-arguments
 */
#[CoversClass(PHP84::class)]
#[Small]
final class PHP84Test extends TestCase
{
    #[Test]
    public function testLibrary(): void
    {
        self::assertNotEmpty(PHP84::library(new DateTimeImmutable()));
    }

    #[Test]
    public function testPremierstacks(): void
    {
        self::assertNotEmpty(PHP84::premierstacks(new DateTimeImmutable()));
    }

    #[Test]
    public function testProject(): void
    {
        self::assertNotEmpty(PHP84::project(new DateTimeImmutable()));
    }

    #[Test]
    public function testRecommended(): void
    {
        self::assertNotEmpty(PHP84::recommended(new DateTimeImmutable()));
    }
}
