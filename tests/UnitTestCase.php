<?php

declare(strict_types=1);

namespace Tests;

use Illuminate\Support\Facades\Http;

abstract class UnitTestCase extends \Illuminate\Foundation\Testing\TestCase
{
    #[\Override]
    protected function setUp(): void
    {
        parent::setUp();

        Http::preventStrayRequests();
    }
}
