<?php

namespace soleil\ContactBundle\Form\Data;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;

class MailcontactType extends AbstractType
{
        /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nom', 'text',array(
                'label' => 'Votre nom *',
                'attr' => array('class' => 'grid_6'),
                'required' => true
                ))         
                
            ->add('mail', 'email',array(
                'label' => 'Votre e-mail *',
                'attr' => array('class' => 'grid_6'),
                'required' => true
                ))
                
            ->add('sujet', 'text',array(
                'label' => 'Votre sujet *',
                'attr' => array('class' => 'grid_6'),
                'required' => true
                ))
                
            ->add('message', 'textarea', array(
                'label' => 'Votre message *',
                'attr' => array('class' => 'grid_6','rows' => '8'),
                'required' => true               
             ))            
        ;
    }

    /**
     * @return string
     */
    public function getName()
    {
        return 'soleil_contactbundle_Mailcontact';
    }
}
