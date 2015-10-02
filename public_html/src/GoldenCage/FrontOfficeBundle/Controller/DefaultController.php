<?php

namespace GoldenCage\FrontOfficeBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction($name)
    {
        return $this->render('GoldenCageFrontOfficeBundle:Default:index.html.twig', array('name' => $name));
    }
}
