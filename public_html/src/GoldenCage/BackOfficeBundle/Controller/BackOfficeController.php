<?php

namespace GoldenCage\BackOfficeBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class BackOfficeController extends Controller
{   
    public function adminhomeAction()
    {
        
        return $this->render('GoldenCageBackOfficeBundle:Admin:adminHome.html.twig', array());
    }
    
}
