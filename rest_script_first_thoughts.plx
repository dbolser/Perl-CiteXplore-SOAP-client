
# Route all the CiteXplore SOAP methods

get '/searchPublications' => sub {
    my $self = shift;
    my $queryString = $self->param('queryString');

    $self->render(text => "Searching CiteXplore for '$queryString'.");
};

get '/searchPublications' => sub {
    my $self = shift;
    my $queryString = $self->param('queryString');
    my $dataSet = $self->param('dataSet');
    my $resultType = $self->param('resultType');
    my $offset = $self->param('offset');
    my $synonym = $self->param('synonym');
    my $email = $self->param('email');
    
    $self->render(text => "Searching CiteXplore for '$queryString'.");
};

get '/profilePublications' => sub {
    my $self = shift;
    my $queryString = $self->param('queryString');
    my $dataSet = $self->param('dataSet');
    my $profileType = $self->param('profileType');
    my $synonym = $self->param('synonym');
    my $email = $self->param('email');
    
    $self->render(text => "Searching CiteXplore for '$queryString'.");
};

get '/getCitations' => sub {
    my $self = shift;
    my $id = $self->param('id');
    my $source = $self->param('source');
    my $offset = $self->param('offset');
    my $email = $self->param('email');
    
    $self->render(text => "Searching CiteXplore for '$queryString'.");
};

get '/getReferences' => sub {
    my $self = shift;
    my $id = $self->param('id');
    my $source = $self->param('source');
    my $offset = $self->param('offset');
    my $email = $self->param('email');
    
    $self->render(text => "Searching CiteXplore for '$queryString'.");
};

get '/getTextMinedTerms' => sub {
    my $self = shift;
    my $id = $self->param('id');
    my $source = $self->param('source');
    my $semanticType = $self->param('semanticType');
    my $offset = $self->param('offset');
    my $email = $self->param('email');
    
    $self->render(text => "Searching CiteXplore for '$queryString'.");
};

get '/getDatabaseLinks' => sub {
    my $self = shift;
    my $id = $self->param('id');
    my $source = $self->param('source');
    my $database = $self->param('database');    
    my $offset = $self->param('offset');
    my $email = $self->param('email');
    
    $self->render(text => "Searching CiteXplore for '$queryString'.");
};

get '/getSupplementaryFiles' => sub {
    my $self = shift;
    my $queryString = $self->param('queryString');
    $self->render(text => "Searching CiteXplore for '$queryString'.");
};

get '/getFulltextXML' => sub {
    my $self = shift;
    my $id = $self->param('id');
    my $source = $self->param('source');
    my $email = $self->param('email');
    
    $self->render(text => "Searching CiteXplore for '$queryString'.");
};

get '/getFulltextXML' => sub {
    my $self = shift;
    my $id = $self->param('id');
    my $source = $self->param('source');
    my $email = $self->param('email');
    
    $self->render(text => "Searching CiteXplore for '$queryString'.");
};

get '/listSearchFields' => sub {
    my $self = shift;
    my $email = $self->param('email');
    
    $self->render(text => "Searching CiteXplore for '$queryString'.");
};
