<?php

namespace App\Controller;

use App\Entity\RapportVisite;
use App\Form\RapportVisiteType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\RapportVisiteRepository;
use App\Repository\VisiteurRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use function PHPSTORM_META\type;

class CompteRenduController extends AbstractController
{

    private $repositoryrapport;
    private $repositoryvisiteur;

    public function __construct(RapportVisiteRepository $repositoryrapport, VisiteurRepository $repositoryvisiteur, EntityManagerInterface $em)
    {
        $this->repositoryrapport=$repositoryrapport;
        $this->repositoryvisiteur=$repositoryvisiteur;
        $this->em=$em;
    }

    /**
     * @Route("/compterendu", name="compte_rendu")
     */
    public function index(): Response
    {
        $rapportvisite = $this->repositoryrapport->findAll();
        $visiteur = $this->repositoryvisiteur->findAll();
        return $this->render('compte_rendu/index.html.twig', [
            'rapportvisites' => $rapportvisite, 'visiteurs'=>$visiteur
        ]);
    }
    /**
     * @Route("/compterendu/show/{id}", name="compte_rendu_show_{id}")
     */
    public function show(RapportVisite $rapportvisite): Response
    {
        $rapportvisite = $this->repositoryrapport->find($rapportvisite);
        return $this->render('compte_rendu/show.html.twig', [
            'rapportvisite' => $rapportvisite,
        ]);
    }
}
