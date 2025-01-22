<?php

declare(strict_types=1);

test('health is ok', function (): void {
    $this->get('/up')->assertOk();
});

test('homepage is ok', function (): void {
    $this->get('/')->assertOk();
});
