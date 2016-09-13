<?php
class ContactPage extends Page {
  
  private static $db = array(
    'Mailto' => 'Varchar(100)',
    'SubmitText' => 'Text'
  );
  
  private static $has_many = array(
    "ContactFormTopics" => "ContactFormTopic",
  );
  
  
  private static $translate = array(
    'SubmitText'
  );
     
  public function getCMSFields() {
    $fields = parent::getCMSFields();
    $fields->addFieldToTab('Root.ContactForm', TextField::create('Mailto', 'Default email submissions to')->setDescription('If a user doesn\'t choose a "Topic", this is where the emails will go to.'));
    $fields->addFieldToTab("Root.ContactForm", TextareaField::create('SubmitText', 'Success message after submission'));
    
    // Topics
    $config = GridFieldConfig_RelationEditor::create();
    // Set the gridfield columns
    $config->getComponentByType('GridFieldDataColumns')->setDisplayFields(array(
      'Title' => 'Topic',
      'Email' => 'Email'
    ));
    // Create a gridfield to hold the relationship   
    $contactFormTopicsField = new GridField(
      'ContactFormTopics', // Field name
      'ContactFormTopic', // Field title
      $this->ContactFormTopics(), // List of all related 
      $config
    );     
    // Create a tab add field to it
    $fields->addFieldToTab('Root.ContactFormTopics', $contactFormTopicsField); 
      
    return $fields;
  }
    
}
class ContactPage_Controller extends Page_Controller {
  
    private static $allowed_actions = array('ContactForm');
    
    // Form setup
    public function ContactForm() {
        // Fields
        $fields = new FieldList(
            new TextField('Name', 'Name <span class="required help-text">(required)</span>'),
            new EmailField('Email'),
            new TextareaField('Message', 'Message <span class="required help-text">(required)</span>'),
            new DropdownField('ContactFormTopics', 'Topics', ContactFormTopic::get()->map('ID', 'Title'))
        );
        // Actions
        $actions = new FieldList(
            new FormAction('submit', 'Send')
        );
        // Validators
        $validator = new RequiredFields('Name', 'Message');         
        return new Form($this, 'ContactForm', $fields, $actions, $validator);
    }
    
    // Form submission
    public function submit($data, $form) {        
        // Set data
        $From = $data['Email'];
        $Subject = "System email: Contact message from the **** website";
        if ($data['ContactFormTopics']) {
          $topic = ContactFormTopic::get()->byID($data['ContactFormTopics']);
          $data['Topic'] = $topic->Title;
          $To = $topic->Email;
        } else {
          $To = $this->Mailto;
        }
        
   
        
        $data['URL'] = $this->AbsoluteLink();
        $email = new Email($From, $To, $Subject);
        // Set template
        $email->setTemplate('ContactEmail');
        // Populate template
        $email->populateTemplate($data);
        // Send mail
        $email->send();
        //return to submitted message
        $this->redirect($this->Link("?success=1#ContactMessage"));
    }
    
    // Success state    
    public function ContactFormSuccess() {
        return isset($_REQUEST['success']) && $_REQUEST['success'] == "1";
    }    
    
}