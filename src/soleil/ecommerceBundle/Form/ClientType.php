<?php

namespace soleil\ecommerceBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class ClientType extends AbstractType
{
        /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
                
             ->add('genre', 'choice', array(
                'choices'   => array(
                    'Mme'   => 'Mme',
                    'Mlle' => 'Mlle',
                    'M'   => 'M'
                ),
                'multiple'  => false,
                'expanded' => true,
                'label' => 'Votre civilité *',
            ))
                
             ->add('nom','text',array('label' => 'Votre nom * '))             
           
            ->add('datenaissance','date',array('label' => 'Votre date de naissance * '))
            ->add('tel','text',array('label' => 'Votre téléphone * '))
            ->add('mail','email',array('label' => 'Votre e-mail * '))
          
        ;
    }
    
    /**
     * @param OptionsResolverInterface $resolver
     */
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'soleil\ecommerceBundle\Entity\Client'
        ));
    }

    /**
     * @return string
     */
    public function getName()
    {
        return 'soleil_ecommercebundle_client';
    }
}
