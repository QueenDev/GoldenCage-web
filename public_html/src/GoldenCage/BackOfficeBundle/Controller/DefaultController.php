<?php

namespace GoldenCage\BackOfficeBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction($name)
    {
        return $this->render('GoldenCageBackOfficeBundle:Default:index.html.twig', array('name' => $name));
    }
}
