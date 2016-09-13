<?php
class BlogArticlePage extends Page {
  
  private static $description = 'Blog Article';
  
  private static $db = array(
      "DateCreated" => "SS_Datetime",
      "SpecialDeal" => "Boolean",
      "Archive" => "Boolean",
      "FeatureOnBlogLandingPage" => "Boolean",
      "ExcludeFromLandingPage" => "Boolean",
      'HashTag' => 'Varchar(150)',
      'SocialMediaText' => 'Varchar(255)'
  );
  
  private static $translate = array(
    'SocialMediaText'
  );

  private static $default_parent = 'BlogCategory';
  
  private static $default_sort = "DateCreated DESC";
  
  private static $icon = "images/blogpage-file.png";
    
  private static $has_many = array(
    'BlogAuthors' => 'BlogAuthor'
  );
  
  private static $belongs_many_many = array(
    'BlogCategories' => 'BlogCategory'
  );
  
  
  // Set date to today by default
   public function populateDefaults(){
    parent::populateDefaults();    
    $this->setField('DateCreated', date('Y-m-d H:i:s', strtotime('now')));
  }
  
  public function getCMSFields() {
      $fields = parent::getCMSFields();
      $fields->addFieldToTab('Root.Main', DatetimeField::create('DateCreated', 'Date created')->setConfig('showcalendar', true)->setConfig('timeformat', 'H:m:s'), 'Content');
      $fields->addFieldToTab('Root.Main', CheckboxField::create('SpecialDeal', 'Is this a special deal?'), 'Content');
      $fields->addFieldToTab('Root.Main', CheckboxField::create('Archive', 'Archive this article?'), 'Content');
      $fields->addFieldToTab('Root.Main', CheckboxField::create('FeatureOnBlogLandingPage', 'Include this on the blog landing page?'), 'Content');
      $fields->addFieldToTab('Root.Main', CheckboxField::create('ExcludeFromLandingPage', 'Exclude this from other landing pages?'), 'Content');
      $fields->addFieldToTab('Root.Main', TextField::create('HashTag', 'Twitter #hashtags for this article (comma separated)'), 'Content');
      $fields->addFieldToTab('Root.Main', TextField::create('SocialMediaText', 'Social media text (unused)'), 'Content');
      
      // Blog categories
      $config = GridFieldConfig_RelationEditor::create();
      // Set the gridfield columns
      $config->getComponentByType('GridFieldDataColumns')->setDisplayFields(array(
        'Name' => 'Name',
        'Slug' => 'Slug',
      ));
      // Create a gridfield to hold the category relationship   
      $blogCategoriesField = new GridField(
          'BlogCategories', // Field name
          'BlogCategory', // Field title
          $this->BlogCategories(), // List of all related categories
          $config
      );     
      // Create a tab named "Categories" and add our field to it
      $fields->addFieldToTab('Root.BlogCategories', $blogCategoriesField); 
      
      $config = GridFieldConfig_RelationEditor::create();
      $config->getComponentByType('GridFieldDataColumns')->setDisplayFields(array(
        'AuthorName' => 'Author name',
        'AuthorBio' => 'Author bio',
      ));
      // Create a gridfield to hold the category relationship   
      $blogAuthorsField = new GridField(
          'BlogAuthors',
          'BlogCategory', 
          $this->BlogAuthors(), 
          $config
      );     
      // Create a tab named "Categories" and add our field to it
      $fields->addFieldToTab('Root.BlogAuthors', $blogAuthorsField); 
      
        
      return $fields;
  }
  
  
}
class BlogArticlePage_Controller extends Page_Controller {

  public function BlogAuthorDefault() {
    $blog_authors = $this->obj('BlogAuthors')->first();
    if ($blog_authors) {
      // get the first one 
      return $blog_authors;
    } else {
      // Get the default one
      $blog_authors = DataObject::get('BlogAuthor')->filter(array('AuthorDefault' => 1))->limit(1);
      if ($blog_authors) {
        return $blog_authors->first();
      }
    }
  }


}