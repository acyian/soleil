<?php

namespace soleil\AgendaBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class InscriType extends AbstractType
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
            'data_class' => 'soleil\AgendaBundle\Entity\Inscri'
        ));
    }

    /**
     * @return string
     */
    public function getName()
    {
        return 'soleil_agendabundle_inscri';
    }
}
