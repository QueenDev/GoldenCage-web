<?php

namespace GoldenCage\BackOfficeBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

class GoldenCageBackOfficeBundle extends Bundle
{
    public function getParent()
    {
        return 'FOSUserBundle';
    }
}
