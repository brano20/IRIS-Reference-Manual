function createPage(contentsFile, helpPrefix, outputFile)

helpStruct = gitbook.updateContentsFile(contentsFile, helpPrefix);

c = help(contentsFile);
if isempty(c)
    error( 'GitBook:InvalidContentsFile', ...
           'Invalid or ambiguous contents file: %s', ...
           contentsFile );
end
c = regexprep(c, '^  ', '', 'LineAnchors');
c = regexprep(c, 'Reference page in.*', '');

c = regexprep( c, ...
               '^  (\w+)([ ]+)- (.*?)$', ...
               '  [`$1`](#$1)$2 | $3', ...
               'LineAnchors' );

c = regexprep( c, ...
               '( ###\n)-+', ...
               '$1\n  Function Name | Brief Description\n----------------|--------------------'); 

char2file(c, outputFile);

end%

