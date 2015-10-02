<?php

namespace GoldenCage\BackOfficeBundle\Controller;

use Symfony\Component\HttpFoundation\RedirectResponse;
use FOS\UserBundle\Controller\SecurityController as BaseController;


class SecurityController extends BaseController
{
    
    
    
    public function renderLogin(array $data) 
    {
        $requestAttributes = $this->container->get('request')->attributes;
        if ($requestAttributes->get('_route') == 'admin_login') {
            $template = sprintf('GoldenCageBackOfficeBundle:Security:login.html.twig');
        } else {
            $template = sprintf('GoldenCageFrontOfficeBundle:Security:login.html.twig');
        }
        return $this->container->get('templating')->renderResponse($template, $data);
    }
    
}