<?php

declare(strict_types=1);

namespace Tests;

use Illuminate\Foundation\Testing\TestCase;
use Illuminate\Support\Facades\Http;

abstract class UnitTestCase extends TestCase
{
    #[\Override]
    protected function setUp(): void
    {
        parent::setUp();

        Http::preventStrayRequests();
    }
}
