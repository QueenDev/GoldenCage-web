<?php

namespace GoldenCage\FrontOfficeBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class FrontOfficeController extends Controller
{
    public function indexAction()
    {
        $securityContext = $this->container->get('security.context');
        $rate=false;
        $login=false;
        if ($securityContext->isGranted('IS_AUTHENTICATED_FULLY'))
        {
            $login=true;
            $rate=true;
        }  
        return $this->render('GoldenCageFrontOfficeBundle:Client:Index.html.twig', array('rate'=>$rate,'login'=>$login));
    }
    
    public function contactAction()
    {
        $securityContext = $this->container->get('security.context');
        $rate=false;
        $login=false;
        if ($securityContext->isGranted('IS_AUTHENTICATED_FULLY'))
        {
            $login=true;
            $rate=true;
        }  
        return $this->render('GoldenCageFrontOfficeBundle:Client:contact.html.twig', array('rate'=>$rate,'login'=>$login));
    }
    
    public function acceuilAction()
    {
        $securityContext = $this->container->get('security.context');
        $rate=false;
        $login=false;
        if ($securityContext->isGranted('IS_AUTHENTICATED_FULLY'))
        {
            $login=true;
            $rate=true;
        }  
        return $this->render('GoldenCageFrontOfficeBundle:Client:Acceuil.html.twig', array('rate'=>$rate,'login'=>$login));
    }
    
    public function loginAction()
    {
        $securityContext = $this->container->get('security.context');
        $rate=false;
        $login=false;
        if ($securityContext->isGranted('IS_AUTHENTICATED_FULLY'))
        {
            $login=true;
            $rate=true;
        }  
        return $this->render('GoldenCageFrontOfficeBundle:Security:login.html.twig', array('rate'=>$rate,'login'=>$login));
    }
    
    public function compteClientAction()
    {
        $securityContext = $this->container->get('security.context');
        $rate=false;
        $login=false;
        if ($securityContext->isGranted('IS_AUTHENTICATED_FULLY'))
        {
            $login=true;
            $rate=true;
        }  
        
        return $this->render('GoldenCageFrontOfficeBundle:Client:Compte.html.twig', array('rate'=>$rate,'login'=>$login));
    }
    
    public function inscriptionclientAction()
    {
        $securityContext = $this->container->get('security.context');
        $rate=false;
        $login=false;
        if ($securityContext->isGranted('IS_AUTHENTICATED_FULLY'))
        {
            $login=true;
            $rate=true;
        }  
        
        return $this->render('GoldenCageFrontOfficeBundle:Client:inscription.html.twig', array('rate'=>$rate,'login'=>$login));
    }
    
    public function modifcompteClientAction()
    {
        $securityContext = $this->container->get('security.context');
        $rate=false;
        $login=false;
        if ($securityContext->isGranted('IS_AUTHENTICATED_FULLY'))
        {
            $login=true;
            $rate=true;
            
        }  
        
        return $this->render('GoldenCageFrontOfficeBundle:Client:modifcompte.html.twig', array('rate'=>$rate,'login'=>$login));
    }
    
    public function affichreservationClientAction()
    {
        $securityContext = $this->container->get('security.context');
        $rate=false;
        $login=false;
        if ($securityContext->isGranted('IS_AUTHENTICATED_FULLY'))
        {
            $login=true;
            $rate=true;
            
        }  
        
        return $this->render('GoldenCageFrontOfficeBundle:Client:reservation.html.twig', array('rate'=>$rate,'login'=>$login));
    }
    
    public function comptePrestAction()
    {
        $securityContext = $this->container->get('security.context');
        $rate=false;
        $login=false;
        if ($securityContext->isGranted('IS_AUTHENTICATED_FULLY'))
        {
            $login=true;
            $rate=true;
        }  
        
        return $this->render('GoldenCageFrontOfficeBundle:Prestataire:Compte.html.twig', array('rate'=>$rate,'login'=>$login));
    }
    
    public function offreAction()
    {
        $securityContext = $this->container->get('security.context');
        $rate=false;
        $login=false;
        if ($securityContext->isGranted('IS_AUTHENTICATED_FULLY'))
        {
            $login=true;
            $rate=true;
        }  
        
        return $this->render('GoldenCageFrontOfficeBundle:Client:offre.html.twig', array('rate'=>$rate,'login'=>$login));
    }
    
    public function modifcomptePrestAction()
    {
        $securityContext = $this->container->get('security.context');
        $rate=false;
        $login=false;
        if ($securityContext->isGranted('IS_AUTHENTICATED_FULLY'))
        {
            $login=true;
            $rate=true;
        }  
        
        return $this->render('GoldenCageFrontOfficeBundle:Prestataire:modifcompte.html.twig', array('rate'=>$rate,'login'=>$login));
    }
    
    public function affichoffrePrestAction()
    {
        $securityContext = $this->container->get('security.context');
        $rate=false;
        $login=false;
        if ($securityContext->isGranted('IS_AUTHENTICATED_FULLY'))
        {
            $login=true;
            $rate=true;
        }  
        
        return $this->render('GoldenCageFrontOfficeBundle:Prestataire:offres.html.twig', array('rate'=>$rate,'login'=>$login));
    }
    
    public function ajoutoffrePrestAction()
    {
        $securityContext = $this->container->get('security.context');
        $rate=false;
        $login=false;
        if ($securityContext->isGranted('IS_AUTHENTICATED_FULLY'))
        {
            $login=true;
            $rate=true;
        }  
        
        return $this->render('GoldenCageFrontOfficeBundle:Prestataire:ajouterOffre.html.twig', array('rate'=>$rate,'login'=>$login));
    }
}
