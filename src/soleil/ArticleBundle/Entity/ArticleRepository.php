<?php

namespace soleil\ArticleBundle\Entity;

use Doctrine\ORM\EntityRepository;

/**
 * ArticleRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class ArticleRepository extends EntityRepository
{
    public function getArticleSansVideoParSite(){
        
        $domaine = $_SERVER['HTTP_HOST'];
            
            $qb = $this->createQueryBuilder('a'); 
                $qb->join('a.site','s');
                
                $qb->where('s.domaine = :dom');
                $qb->setParameter('dom', $domaine);
                
                $qb->andWhere('a.video IS NULL');

            return $qb->getQuery()->getResult();
            
    }
    
    public function getArticleVideoParSite(){
        
        $domaine = $_SERVER['HTTP_HOST'];
            
            $qb = $this->createQueryBuilder('a'); 
                $qb->join('a.site','s');
                
                $qb->where('s.domaine = :dom');
                $qb->setParameter('dom', $domaine);
                
                $qb->andWhere('a.video IS NOT NULL');
                
            return $qb->getQuery()->getResult();
            
    }
    
    public function getTroisDernierArticle($offset,$limit){
        
        $domaine = $_SERVER['HTTP_HOST'];
        
        $qb = $this->createQueryBuilder('a'); 
                $qb->join('a.site','s');
                
                $qb->where('s.domaine = :dom');
                $qb->setParameter('dom', $domaine);
                
                $qb->andWhere('a.video IS NULL');
                
                $qb->orderBy('a.id', 'DESC');
                
                $qb->setFirstResult( $offset );
                $qb->setMaxResults( $limit );

            return $qb->getQuery()->getResult();
            
    }
    
    public function getTroisDernierArticleVideo($offset,$limit){
        
        $domaine = $_SERVER['HTTP_HOST'];
        
        $qb = $this->createQueryBuilder('a'); 
                $qb->join('a.site','s');
                
                $qb->where('s.domaine = :dom');
                $qb->setParameter('dom', $domaine);
                
                $qb->andWhere('a.video IS NOT NULL');
                
                $qb->orderBy('a.id', 'DESC');
                
                $qb->setFirstResult( $offset );
                $qb->setMaxResults( $limit );

            return $qb->getQuery()->getResult();
            
    }
    

    
}